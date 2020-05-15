.class public Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final DEFAULT_SCAN_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final NUM_SOFT_AP_CALLBACKS_WARN_LIMIT:I = 0xa

.field private static final NUM_SOFT_AP_CALLBACKS_WTF_LIMIT:I = 0x14

.field private static final RUN_WITH_SCISSORS_TIMEOUT_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final VDBG:Z = false


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private final mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInIdleMode:Z

.field private mIsControllerStarted:Z

.field private mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation
.end field

.field private final mLocalOnlyHotspotRequests:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private final mPermissionReviewRequired:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPrevApBand:I

.field private mQCSoftApNumClients:I

.field private final mQcIntentFilter:Landroid/content/IntentFilter;

.field private final mQcReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ISoftApCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartWifiApIfRequired:Z

.field mScanPending:Z

.field final mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSoftApExtendingWifi:Z

.field private mSoftApNumClients:I

.field private mSoftApState:I

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVerboseLoggingEnabled:Z

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiApState:I

.field private final mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private final mWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field final mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

.field private scanRequestCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/internal/util/AsyncChannel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p3, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;

    .line 527
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    .line 182
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    .line 238
    const/16 v2, 0xb

    iput v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    .line 239
    iput v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    .line 240
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    .line 241
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    .line 244
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPrevApBand:I

    .line 503
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    .line 504
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 506
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcReceiver:Landroid/content/BroadcastReceiver;

    .line 2801
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$7;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$7;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 529
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 530
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 532
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 533
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 534
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiTrafficPoller()Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 535
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 536
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiCountryCode()Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 537
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 538
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachinePrime()Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 539
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->setTrafficPoller(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 540
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 541
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getScanRequestProxy()Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 542
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiSettingsStore()Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 543
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 544
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 545
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 546
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiLockManager()Lcom/android/server/wifi/WifiLockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    .line 547
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMulticastLockManager()Lcom/android/server/wifi/WifiMulticastLockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    .line 548
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiServiceHandlerThread()Landroid/os/HandlerThread;

    move-result-object v2

    .line 549
    .local v2, "wifiServiceHandlerThread":Landroid/os/HandlerThread;
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    const-string v5, "WifiService"

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    .line 550
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    const-string v5, "WifiService"

    .line 551
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, p3}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    .line 552
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiController()Lcom/android/server/wifi/WifiController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 553
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiBackupRestore()Lcom/android/server/wifi/WifiBackupRestore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 554
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 555
    sget-boolean v4, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v4, :cond_1

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPermissionReviewRequired:Z

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 559
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    const-string v3, "WifiService"

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 560
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 561
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    .line 563
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getVerboseLoggingLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 568
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 571
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachinePrime()Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachinePrime;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 572
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 573
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcIntentFilter:Landroid/content/IntentFilter;

    .line 574
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQcIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 577
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->getInstance(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->unregisterCallingAppAndStopLocalOnlyHotspot(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiServiceImpl;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 147
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiServiceImpl;->handleWifiApStateChange(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .line 147
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .line 147
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .line 147
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .line 147
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .line 147
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->restartSoftApIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    return v0
.end method

.method private checkNetworkSettingsPermission(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 813
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkWifiPermissionWhenPermissionReviewRequired()Z
    .locals 3

    .line 901
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPermissionReviewRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 902
    return v1

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_WIFI_WHEN_PERMISSION_REVIEW_REQUIRED"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 906
    .local v0, "result":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private enforceChangePermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private enforceChangePermission(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "setWifiEnabled"    # Z

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->checkNetworkSettingsPermission(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 847
    return v1

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "WifiService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    if-nez p2, :cond_1

    .line 852
    return v1

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:change_wifi_state"

    .line 855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 854
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    .line 859
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "LocationHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method private enforceLocationPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 887
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 888
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .line 875
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method private enforceNetworkStackPermission()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WIFI_CREDENTIAL"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private handleWifiApStateChange(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "currentState"    # I
    .param p2, "previousState"    # I
    .param p3, "errorCode"    # I
    .param p4, "ifaceName"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .line 1547
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiApStateChange: currentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previousState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ifaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    .line 1557
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    .line 1559
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1560
    const/4 v3, 0x2

    .line 1561
    .local v3, "errorToReport":I
    const/4 v4, 0x1

    if-ne p3, v4, :cond_0

    .line 1562
    const/4 v3, 0x1

    .line 1565
    :cond_0
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1569
    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1570
    .end local v3    # "errorToReport":I
    monitor-exit v2

    .line 1571
    return-void

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1574
    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 1594
    :cond_2
    return-void

    .line 1576
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1579
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1581
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotStoppedMessageToAllLOHSRequestInfoEntriesLocked()V

    goto :goto_1

    .line 1584
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1588
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1589
    monitor-exit v2

    .line 1590
    return-void

    .line 1589
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private isSoftApConfigNull(Lcom/android/server/wifi/SoftApModeConfiguration;)Z
    .locals 3
    .param p1, "softApConfig"    # Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 3491
    const/4 v0, 0x0

    .line 3492
    .local v0, "isNull":Z
    if-nez p1, :cond_0

    .line 3493
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "new SoftApModeConfiguration but get null"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3494
    const-string v1, "WifiService"

    const-string v2, "new SoftApModeConfiguration but get null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    const/4 v0, 0x1

    .line 3497
    :cond_0
    return v0
.end method

.method public static synthetic lambda$getScanResults$7(Lcom/android/server/wifi/WifiServiceImpl;Ljava/util/List;)V
    .locals 1
    .param p1, "scanResults"    # Ljava/util/List;

    .line 2442
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanRequestProxy;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2443
    return-void
.end method

.method public static synthetic lambda$getWifiApConfiguration$5(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    .line 1872
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 1873
    return-void
.end method

.method public static synthetic lambda$getWifiApEnabledState$1(Lcom/android/server/wifi/WifiServiceImpl;Landroid/util/MutableInt;)V
    .locals 1
    .param p1, "apState"    # Landroid/util/MutableInt;

    .line 1033
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    iput v0, p1, Landroid/util/MutableInt;->value:I

    .line 1034
    return-void
.end method

.method public static synthetic lambda$registerSoftApCallback$3(Lcom/android/server/wifi/WifiServiceImpl;ILandroid/net/wifi/ISoftApCallback;)V
    .locals 4
    .param p1, "callbackIdentifier"    # I
    .param p2, "callback"    # Landroid/net/wifi/ISoftApCallback;

    .line 1486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    goto :goto_0

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSoftApCallback: put exception -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1492
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many soft AP callbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 1494
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many soft AP callbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_1
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApState:I

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/net/wifi/ISoftApCallback;->onStateChanged(II)V

    .line 1500
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApNumClients:I

    invoke-interface {p2, v0}, Landroid/net/wifi/ISoftApCallback;->onNumClientsChanged(I)V

    .line 1501
    const-string v0, ""

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mQCSoftApNumClients:I

    invoke-interface {p2, v0, v1}, Landroid/net/wifi/ISoftApCallback;->onStaConnected(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1504
    goto :goto_2

    .line 1502
    :catch_1
    move-exception v0

    .line 1503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSoftApCallback: remote exception -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public static synthetic lambda$setWifiApConfiguration$6(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 1904
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1906
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendApConfigurationChangedBroadcast()V

    .line 1908
    return-void
.end method

.method public static synthetic lambda$startScan$0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;ILjava/lang/String;)V
    .locals 1
    .param p1, "scanSuccess"    # Lcom/android/server/wifi/util/GeneralUtil$Mutable;
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wifi/ScanRequestProxy;->startScan(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 739
    return-void
.end method

.method public static synthetic lambda$unregisterSoftApCallback$4(Lcom/android/server/wifi/WifiServiceImpl;I)V
    .locals 4
    .param p1, "callbackIdentifier"    # I

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRegisteredSoftApCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterSoftApCallback: remove -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$updateInterfaceIpState$2(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1058
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1059
    return-void
.end method

.method static logAndReturnFalse(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3108
    const-string v0, "WifiService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const/4 v0, 0x0

    return v0
.end method

.method private registerForBroadcasts()V
    .locals 4

    .line 2873
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2874
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2875
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2876
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2877
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2878
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2879
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2881
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2883
    .local v1, "trackEmergencyCallState":Z
    if-eqz v1, :cond_0

    .line 2884
    const-string v2, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2886
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2888
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v2

    .line 2889
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2890
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2891
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$9;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$9;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2910
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 5

    .line 2859
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$8;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    .line 2866
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi_scan_always_enabled"

    .line 2867
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2866
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2870
    return-void
.end method

.method private restartSoftApIfNeeded()V
    .locals 3

    .line 476
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 477
    const-string v0, "WifiService"

    const-string v1, "Repeater mode: not restarting SoftAP as Hotspot is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 481
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Repeater mode: Stop SoftAP."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mRestartWifiApIfRequired:Z

    .line 483
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 501
    .local v1, "intent":Landroid/content/Intent;
    return-void
.end method

.method private restoreNetworks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 3176
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_0

    .line 3177
    const-string v0, "WifiService"

    const-string v1, "Backup data parse failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    return-void

    .line 3180
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3181
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 3183
    .local v2, "networkId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3184
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore network failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    goto :goto_0

    .line 3188
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    .line 3189
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networkId":I
    goto :goto_0

    .line 3190
    :cond_2
    return-void
.end method

.method private sendApConfigurationChangedBroadcast()V
    .locals 3

    .line 1933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.NUBIA_AP_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1935
    return-void
.end method

.method private sendFailedScanBroadcast()V
    .locals 5

    .line 760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 762
    .local v0, "callingIdentity":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    const-string v3, "resultsUpdated"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 765
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    nop

    .line 771
    return-void

    .line 768
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V
    .locals 3
    .param p1, "arg1"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .line 1604
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1606
    .local v1, "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotFailedMessage(I)V

    .line 1607
    invoke-virtual {v1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->unlinkDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    goto :goto_1

    .line 1608
    :catch_0
    move-exception v2

    .line 1611
    .end local v1    # "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :goto_1
    goto :goto_0

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1615
    return-void
.end method

.method private sendHotspotStartedMessageToAllLOHSRequestInfoEntriesLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .line 1646
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1648
    .local v1, "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotStartedMessage(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    goto :goto_1

    .line 1649
    :catch_0
    move-exception v2

    .line 1652
    .end local v1    # "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :goto_1
    goto :goto_0

    .line 1653
    :cond_0
    return-void
.end method

.method private sendHotspotStoppedMessageToAllLOHSRequestInfoEntriesLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLocalOnlyHotspotRequests"
    .end annotation

    .line 1625
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1627
    .local v1, "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotStoppedMessage()V

    .line 1628
    invoke-virtual {v1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->unlinkDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    goto :goto_1

    .line 1629
    :catch_0
    move-exception v2

    .line 1632
    .end local v1    # "requestor":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :goto_1
    goto :goto_0

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1636
    return-void
.end method

.method private setDualSapMode(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "apConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 3408
    const/4 v0, 0x0

    .line 3410
    .local v0, "bandUpdated":Z
    if-nez p1, :cond_0

    .line 3411
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .local v1, "newApConfig":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 3413
    .end local v1    # "newApConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 3417
    .restart local v1    # "newApConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    const-string v2, "persist.vendor.wifi.softap.dualband"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 3418
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3419
    const/4 v0, 0x1

    .line 3422
    :cond_1
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v2, v3, :cond_2

    .line 3423
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "setDualSapMode uid=%"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3424
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->setDualSapStatus(Z)V

    goto :goto_1

    .line 3426
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->setDualSapStatus(Z)V

    .line 3429
    :goto_1
    if-eqz v0, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, p1

    :goto_2
    return-object v2
.end method

.method private startConsentUi(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "intentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2828
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 2829
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkWifiPermissionWhenPermissionReviewRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2834
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2837
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2835
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2838
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p2, :cond_1

    .line 2844
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2845
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2847
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2848
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2849
    const/4 v2, 0x1

    return v2

    .line 2839
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2850
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 2851
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2830
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private startSoftApInRepeaterMode(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "apConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 3451
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3452
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiConfigManager()Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    .line 3453
    .local v1, "wifiConfigManager":Lcom/android/server/wifi/WifiConfigManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkWithPassword(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3454
    .local v2, "currentStaConfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-direct {v3, p1, v2}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    .line 3456
    .local v3, "softApConfig":Lcom/android/server/wifi/SoftApModeConfiguration;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->isSoftApConfigNull(Lcom/android/server/wifi/SoftApModeConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3457
    return-void

    .line 3462
    :cond_0
    iget-object v4, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3463
    iget-object v4, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3466
    if-nez p2, :cond_1

    .line 3467
    iget-object v4, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto :goto_0

    .line 3469
    :cond_1
    iget-object v4, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3471
    :goto_0
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repeater mode config - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/wifi/SoftApModeConfiguration;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x2600a

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    .line 3473
    return-void
.end method

.method private startSoftApInternal(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "mode"    # I

    .line 1150
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "startSoftApInternal uid=% mode=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 1151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setDualSapMode(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentStaShareThisAp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1157
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl;->startSoftApInRepeaterMode(ILandroid/net/wifi/WifiConfiguration;)V

    .line 1158
    return v1

    .line 1162
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/server/wifi/WifiApConfigStore;->validateApWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1172
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "Invalid WifiConfiguration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return v0

    .line 1163
    :cond_2
    :goto_0
    new-instance v2, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-direct {v2, p2, p1}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    .line 1165
    .local v2, "softApConfig":Lcom/android/server/wifi/SoftApModeConfiguration;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->isSoftApConfigNull(Lcom/android/server/wifi/SoftApModeConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1166
    return v0

    .line 1169
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    .line 1170
    return v1
.end method

.method private stopSoftApInternal()Z
    .locals 3

    .line 1208
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "stopSoftApInternal uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    .line 1211
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v2, 0x2600a

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 1212
    const/4 v0, 0x1

    return v0
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 3122
    if-nez p0, :cond_0

    .line 3123
    const-string v0, "null"

    return-object v0

    .line 3125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3126
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3127
    const/4 v1, 0x0

    move v2, v1

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3128
    const-string v3, " %02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3130
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unregisterCallingAppAndStopLocalOnlyHotspot(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 4
    .param p1, "request"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1792
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "unregisterCallingAppAndStopLocalOnlyHotspot pid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->getPid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1794
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->getPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "LocalOnlyHotspotRequestInfo not found to remove"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1797
    monitor-exit v0

    return-void

    .line 1800
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1801
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1802
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1806
    .local v1, "identity":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1809
    goto :goto_0

    .line 1808
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1811
    .end local v1    # "identity":J
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1812
    return-void

    .line 1811
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private updateInterfaceIpStateInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1066
    const/4 v1, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1067
    .local v2, "previousMode":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1068
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 1070
    :cond_0
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInterfaceIpState: ifaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " previous mode= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1117
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    goto :goto_1

    .line 1076
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    .line 1079
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1080
    monitor-exit v0

    return-void

    .line 1083
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotStartedMessageToAllLOHSRequestInfoEntriesLocked()V

    .line 1084
    goto :goto_2

    .line 1090
    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1092
    goto :goto_2

    .line 1094
    :pswitch_2
    const-string v4, "WifiService"

    const-string v5, "IP mode config error - need to clean up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    const-string v4, "WifiService"

    const-string v5, "no LOHS requests, stop softap"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    goto :goto_0

    .line 1099
    :cond_2
    const-string v4, "WifiService"

    const-string v5, "we have LOHS requests, clean them up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->sendHotspotFailedMessageToAllLOHSRequestInfoEntriesLocked(I)V

    .line 1105
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/WifiServiceImpl;->updateInterfaceIpStateInternal(Ljava/lang/String;I)V

    .line 1106
    goto :goto_2

    .line 1108
    :pswitch_3
    if-nez p1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1113
    monitor-exit v0

    return-void

    .line 1117
    :goto_1
    const-string v3, "updateInterfaceIpStateInternal: unknown mode %"

    invoke-interface {v1, v3}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v3, p2

    invoke-interface {v1, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1119
    .end local v2    # "previousMode":Ljava/lang/Integer;
    :cond_3
    :goto_2
    monitor-exit v0

    .line 1120
    return-void

    .line 1119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static verifyCert(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p0, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2294
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2296
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v1

    .line 2297
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 2298
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2297
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 2299
    .local v2, "path":Ljava/security/cert/CertPath;
    const-string v4, "AndroidCAStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 2300
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2301
    new-instance v5, Ljava/security/cert/PKIXParameters;

    invoke-direct {v5, v4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 2302
    .local v5, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v5, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 2303
    invoke-virtual {v1, v2, v5}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 2304
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 3024
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 3025
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "acquireMulticastLock uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3026
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMulticastLockManager;->acquireLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3027
    return-void
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .line 2991
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "acquireWifiLock uid=% lockMode=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2992
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    .line 2993
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2994
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/android/server/wifi/WifiLockManager;->acquireWifiLock(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2995
    const/4 v0, 0x1

    return v0

    .line 2997
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2198
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2199
    return v1

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "addOrUpdateNetwork uid=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2205
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2206
    nop

    .line 2207
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->convertFromWifiConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    .line 2208
    .local v0, "passpointConfig":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2209
    const-string v2, "WifiService"

    const-string v3, "Missing credential for Passpoint profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    return v1

    .line 2213
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2214
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 2213
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 2215
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2216
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 2215
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 2217
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2218
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    .line 2217
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    .line 2219
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2220
    const-string v2, "WifiService"

    const-string v3, "Failed to add Passpoint profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    return v1

    .line 2224
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 2227
    .end local v0    # "passpointConfig":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_3
    if-eqz p1, :cond_6

    .line 2229
    const-string v0, "addOrUpdateNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2231
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2229
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v1, :cond_4

    .line 2233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto :goto_0

    .line 2235
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2237
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_5

    .line 2238
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 2240
    :cond_5
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    return v1

    .line 2244
    :cond_6
    const-string v0, "WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return v1
.end method

.method public addOrUpdateNetwork2(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2274
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2275
    const-string v0, "WifiService"

    const-string v2, "addOrUpdateNetwork2: no permission"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return v1

    .line 2278
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v1, :cond_1

    .line 2279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto :goto_0

    .line 2281
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2283
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_2

    .line 2284
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork2(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 2286
    :cond_2
    const-string v0, "WifiService"

    const-string v2, "addOrUpdateNetwork2: WifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    return v1
.end method

.method public addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2473
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    const/4 v0, 0x0

    return v0

    .line 2476
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "addorUpdatePasspointConfiguration uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2477
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2481
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2481
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdatePasspointConfig(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z

    move-result v0

    return v0

    .line 2479
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkAndStartWifi()V
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-virtual {v0}, Lcom/android/server/wifi/FrameworkFacade;->inStorageManagerCryptKeeperBounce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "WifiService"

    const-string v1, "Device still encrypted. Need to restart SystemServer.  Do not start wifi."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 607
    .local v0, "wifiEnabled":Z
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    if-eqz v0, :cond_1

    const-string v3, "enabled"

    goto :goto_0

    :cond_1
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    .line 611
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 642
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$5;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 664
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    .line 665
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    .line 667
    const-string v1, "WifiService"

    const-string v2, "=qcdbg= mWifiStateMachine.syncInitialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncInitialize(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 669
    const-string v1, "WifiService"

    const-string v2, "Failed to initialize WifiStateMachine"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    .line 672
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    .line 676
    if-eqz v0, :cond_3

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_1

    .line 679
    :catch_0
    move-exception v1

    .line 683
    :cond_3
    :goto_1
    return-void
.end method

.method public deauthenticateNetwork(JZ)V
    .locals 3
    .param p1, "holdoff"    # J
    .param p3, "ess"    # Z

    .line 2558
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "deauthenticateNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2559
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V

    .line 2560
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2793
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2794
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2795
    return-void

    .line 2797
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "disableEphemeralNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2798
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 2799
    return-void
.end method

.method public disableNetwork(ILjava/lang/String;)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2361
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2362
    return v1

    .line 2365
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "disableNetwork uid=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2367
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    return v0

    .line 2370
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    return v1
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1955
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "disconnect uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1959
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1960
    return-void
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 3275
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppAddBootstrapQrCode(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapGenerate(Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3287
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppBootstrapGenerate(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapRemove(I)I
    .locals 2
    .param p1, "bootstrap_id"    # I

    .line 3311
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppBootstrapRemove(Lcom/android/internal/util/AsyncChannel;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "curve"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiry"    # I

    .line 3351
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->syncDppConfiguratorAdd(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorGetKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 3387
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppConfiguratorGetKey(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppConfiguratorRemove(I)I
    .locals 2
    .param p1, "config_id"    # I

    .line 3364
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppConfiguratorRemove(Lcom/android/internal/util/AsyncChannel;I)I

    move-result v0

    return v0
.end method

.method public dppGetUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "bootstrap_id"    # I

    .line 3299
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppGetUri(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppListen(Ljava/lang/String;IZZ)I
    .locals 6
    .param p1, "frequency"    # Ljava/lang/String;
    .param p2, "dpp_role"    # I
    .param p3, "qr_mutual"    # Z
    .param p4, "netrole_ap"    # Z

    .line 3328
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine;->syncDppListen(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public dppStartAuth(Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3376
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDppStartAuth(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppStopListen()V
    .locals 2

    .line 3337
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->dppStopListen(Lcom/android/internal/util/AsyncChannel;)V

    .line 3338
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2921
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2923
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    return-void

    .line 2928
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    const-string v1, "wifiMetricsProto"

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2930
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    .line 2931
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2932
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lez v1, :cond_2

    const-string v1, "ipclient"

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2934
    array-length v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 2935
    .local v1, "ipClientArgs":[Ljava/lang/String;
    array-length v3, v1

    invoke-static {p3, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2936
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpClient(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2937
    .end local v1    # "ipClientArgs":[Ljava/lang/String;
    goto/16 :goto_1

    :cond_2
    if-eqz p3, :cond_4

    array-length v1, p3

    if-lez v1, :cond_4

    const-string v1, "WifiScoreReport"

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2938
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiScoreReport()Lcom/android/server/wifi/WifiScoreReport;

    move-result-object v0

    .line 2939
    .local v0, "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScoreReport;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2940
    .end local v0    # "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    :cond_3
    goto/16 :goto_1

    .line 2941
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wi-Fi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verbose logging is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_5

    const-string v2, "on"

    goto :goto_0

    :cond_5
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stay-awake conditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "stay_on_while_plugged_in"

    .line 2944
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2943
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInIdleMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScanPending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2950
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2951
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2952
    const-string v0, "Locks held:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLockManager;->dump(Ljava/io/PrintWriter;)V

    .line 2954
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2955
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiMulticastLockManager;->dump(Ljava/io/PrintWriter;)V

    .line 2956
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2957
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachinePrime;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2958
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2959
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2960
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2961
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    .line 2962
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2963
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2964
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiBackupRestore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2965
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringParams: settings put global wifi_score_params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 2967
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getScoringParams()Lcom/android/server/wifi/ScoringParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2966
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2969
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiScoreReport()Lcom/android/server/wifi/WifiScoreReport;

    move-result-object v0

    .line 2970
    .restart local v0    # "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    if-eqz v0, :cond_6

    .line 2971
    const-string v1, "WifiScoreReport:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScoreReport;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2974
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2975
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getSarManager()Lcom/android/server/wifi/SarManager;

    move-result-object v1

    .line 2976
    .local v1, "sarManager":Lcom/android/server/wifi/SarManager;
    if-eqz v1, :cond_7

    .line 2977
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/SarManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2979
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2981
    .end local v0    # "wifiScoreReport":Lcom/android/server/wifi/WifiScoreReport;
    .end local v1    # "sarManager":Lcom/android/server/wifi/SarManager;
    :goto_1
    return-void
.end method

.method public enableNetwork(IZLjava/lang/String;)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2336
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2337
    return v1

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "enableNetwork uid=% disableOthers=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2342
    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2344
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2345
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    return v0

    .line 2348
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    return v1
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2748
    if-eqz p1, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableTdls uid=% enable=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2752
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 2753
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 2754
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 2755
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2756
    return-void

    .line 2749
    .end local v0    # "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2761
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableTdlsWithMacAddress uid=% enable=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2763
    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2764
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2765
    if-eqz p1, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 2770
    return-void

    .line 2766
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteMacAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .line 3047
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3048
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3049
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableVerboseLogging uid=% verbose=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3050
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p1

    .line 3051
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3052
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_verbose_logging_enabled"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 3054
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 3055
    return-void
.end method

.method enableVerboseLoggingInternal(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 3058
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    .line 3059
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 3060
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLockManager;->enableVerboseLogging(I)V

    .line 3061
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMulticastLockManager;->enableVerboseLogging(I)V

    .line 3062
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiInjector;->enableVerboseLogging(I)V

    .line 3063
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 3140
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3141
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableWifiConnectivityManager uid=% enabled=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3143
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3144
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableWifiConnectivityManager(Z)V

    .line 3145
    return-void
.end method

.method public enableWifiCoverageExtendFeature(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3481
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3482
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3483
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "enableWifiCoverageExtendFeature uid=% enable=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3485
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3486
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_coverage_extend_feature_enabled"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 3487
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3077
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3078
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3079
    return-void

    .line 3081
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "factoryReset uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3082
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3083
    return-void

    .line 3086
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_tethering"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3089
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z

    .line 3092
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3094
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_3

    .line 3095
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 3096
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3095
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 3097
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_3

    .line 3098
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 3099
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(ILjava/lang/String;)Z

    .line 3100
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 3104
    .end local v0    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-void
.end method

.method public getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2161
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2162
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMatchingPasspointConfigurations uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2169
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2167
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "capaType"    # Ljava/lang/String;

    .line 2563
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigInformation()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2256
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2257
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfigInformation(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2260
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "getConfigInformation: WifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2092
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2093
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getConfiguredNetworks uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_2

    .line 2097
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 2098
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2097
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2099
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 2100
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 2102
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    goto :goto_0

    .line 2103
    :cond_2
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2381
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2383
    .local v0, "uid":I
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 2384
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "getConnectionInfo uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2386
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2388
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 2390
    .local v3, "result":Landroid/net/wifi/WifiInfo;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-static {p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isNubiaTargetApp(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2391
    nop

    .line 2421
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2391
    return-object v3

    .line 2394
    :cond_1
    const/4 v4, 0x1

    .line 2395
    .local v4, "hideDefaultMacAddress":Z
    const/4 v5, 0x1

    .line 2398
    .local v5, "hideBssidAndSsid":Z
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getLocalMacAddressPermission(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 2400
    const/4 v4, 0x0

    .line 2402
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2403
    const/4 v5, 0x0

    goto :goto_0

    .line 2406
    :catch_0
    move-exception v6

    goto :goto_1

    .line 2404
    :catch_1
    move-exception v6

    .line 2405
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "WifiService"

    const-string v8, "Error checking receiver permission"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2407
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 2408
    :goto_1
    if-eqz v4, :cond_3

    .line 2409
    const-string v6, "02:00:00:00:00:00"

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 2411
    :cond_3
    if-eqz v5, :cond_4

    .line 2412
    const-string v6, "02:00:00:00:00:00"

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2413
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 2415
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_6

    if-nez v5, :cond_5

    if-eqz v4, :cond_6

    .line 2416
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConnectionInfo: hideBssidAndSSid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", hideDefaultMacAddress="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/wifi/WifiLog;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2419
    :cond_6
    nop

    .line 2421
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2419
    return-object v3

    .line 2421
    .end local v3    # "result":Landroid/net/wifi/WifiInfo;
    .end local v4    # "hideDefaultMacAddress":Z
    .end local v5    # "hideBssidAndSsid":Z
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .line 2589
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 2590
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getCountryCode uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "country":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 3

    .line 3114
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3115
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3116
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getCurrentNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3118
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 3

    .line 779
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 780
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getCurrentNetworkWpsNfcConfigurationToken uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 784
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2634
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2635
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2636
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getDhcpInfo uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2638
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 2640
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v1, Landroid/net/DhcpInfo;

    invoke-direct {v1}, Landroid/net/DhcpInfo;-><init>()V

    .line 2642
    .local v1, "info":Landroid/net/DhcpInfo;
    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 2643
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 2644
    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 2645
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    .line 2644
    invoke-static {v2}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    iput v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2648
    :cond_1
    iget-object v2, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 2649
    iget-object v2, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    check-cast v2, Ljava/net/Inet4Address;

    invoke-static {v2}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    iput v2, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 2652
    :cond_2
    const/4 v2, 0x0

    .line 2653
    .local v2, "dnsFound":I
    iget-object v3, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2654
    .local v4, "dns":Ljava/net/InetAddress;
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    .line 2655
    if-nez v2, :cond_3

    .line 2656
    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v5

    iput v5, v1, Landroid/net/DhcpInfo;->dns1:I

    goto :goto_1

    .line 2658
    :cond_3
    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v5

    iput v5, v1, Landroid/net/DhcpInfo;->dns2:I

    .line 2660
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    goto :goto_2

    .line 2662
    .end local v4    # "dns":Ljava/net/InetAddress;
    :cond_4
    goto :goto_0

    .line 2663
    :cond_5
    :goto_2
    iget-object v3, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 2664
    .local v3, "serverAddress":Ljava/net/Inet4Address;
    if-eqz v3, :cond_6

    .line 2665
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    iput v4, v1, Landroid/net/DhcpInfo;->serverAddress:I

    .line 2667
    :cond_6
    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v4, v1, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 2669
    return-object v1
.end method

.method public getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation

    .line 2180
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2181
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2182
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMatchingOsuProviders uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2184
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingOsuProviders(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2186
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 2139
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2140
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMatchingWifiConfig uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2147
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 2145
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPasspointConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 2513
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2514
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getPasspointConfigurations uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2517
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2521
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPasspointConfigs(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2519
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2114
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 2115
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2116
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getPrivilegedConfiguredNetworks uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2121
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2122
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 2123
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 2125
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    goto :goto_0

    .line 2126
    :cond_2
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 2432
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2434
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2435
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 2436
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "getScanResults uid=%"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2439
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V

    .line 2440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2441
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachineHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/util/List;)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2444
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 2445
    const-string v5, "WifiService"

    const-string v6, "Failed to post runnable to fetch scan results"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.android.settings"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "cn.nubia.controlcenter"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2449
    :cond_2
    const-string v5, "WifiService"

    const-string v6, " get scan result from framework when APP Not start scan"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v5, :cond_3

    .line 2451
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2453
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner;->getSingleScanResults()Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2460
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2453
    return-object v5

    .line 2456
    :cond_4
    nop

    .line 2460
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    return-object v3

    .line 2460
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "success":Z
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 2457
    :catch_0
    move-exception v3

    .line 2458
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2460
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2458
    return-object v4

    .line 2460
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSupportedFeatures()I
    .locals 3

    .line 1991
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1992
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getSupportedFeatures uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    return v0

    .line 1998
    :cond_1
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const/4 v0, 0x0

    return v0
.end method

.method public getVerboseLoggingLevel()I
    .locals 4

    .line 3067
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3068
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3069
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getVerboseLoggingLevel uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3071
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_verbose_logging_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 1853
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1856
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1865
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "getWifiApConfiguration uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1870
    :cond_0
    new-instance v1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/util/GeneralUtil$Mutable;-><init>()V

    .line 1871
    .local v1, "config":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachineHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 1874
    .local v2, "success":Z
    if-eqz v2, :cond_1

    .line 1875
    iget-object v3, v1, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    return-object v3

    .line 1877
    :cond_1
    const-string v3, "WifiService"

    const-string v4, "Failed to post runnable to fetch ap config"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-object v3

    .line 1858
    .end local v1    # "config":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "success":Z
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not allowed to read or update stored WiFi Ap config (uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWifiApEnabledState()I
    .locals 5

    .line 1025
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1026
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getWifiApEnabledState uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1031
    :cond_0
    new-instance v0, Landroid/util/MutableInt;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 1032
    .local v0, "apState":Landroid/util/MutableInt;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Tk4v3H_jLeO4POzFwYzi9LRyPtE;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Tk4v3H_jLeO4POzFwYzi9LRyPtE;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/util/MutableInt;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1035
    iget v1, v0, Landroid/util/MutableInt;->value:I

    return v1
.end method

.method public getWifiEnabledState()I
    .locals 3

    .line 1001
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1002
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getWifiEnabledState uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger(Ljava/lang/String;)Landroid/os/Messenger;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2778
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2779
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getWifiServiceMessenger uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2785
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0

    .line 2782
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Could not create wifi service messenger"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleIdleModeChanged()V
    .locals 3

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "doScan":Z
    monitor-enter p0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    .line 794
    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-eq v2, v1, :cond_0

    .line 795
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    .line 796
    if-nez v1, :cond_0

    .line 797
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    if-eqz v2, :cond_0

    .line 798
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    .line 799
    const/4 v0, 0x1

    .line 803
    .end local v1    # "idle":Z
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    if-eqz v0, :cond_1

    .line 808
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Ljava/lang/String;)Z

    .line 810
    :cond_1
    return-void

    .line 803
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleUserStop(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserStop(I)V

    .line 695
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserSwitch(I)V

    .line 687
    return-void
.end method

.method public handleUserUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 690
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserUnlock(I)V

    .line 691
    return-void
.end method

.method public initializeMulticastFiltering()V
    .locals 3

    .line 3017
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 3018
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "initializeMulticastFiltering uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3019
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->initializeFiltering()V

    .line 3020
    return-void
.end method

.method public isCurrentStaShareThisAp()Z
    .locals 2

    .line 3438
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3440
    .local v0, "currentStaConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiCoverageExtendFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3442
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    if-eqz v1, :cond_0

    .line 3444
    const/4 v1, 0x1

    return v1

    .line 3447
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDualBandSupported()Z
    .locals 3

    .line 2600
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "isDualBandSupported uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2604
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isExtendingWifi()Z
    .locals 1

    .line 3434
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApExtendingWifi:Z

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 3

    .line 3038
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3039
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3040
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "isMulticastEnabled uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3042
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->isMulticastEnabled()Z

    move-result v0

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 3

    .line 1943
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1944
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "isScanAlwaysAvailable uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public isWifiCoverageExtendFeatureEnabled()Z
    .locals 4

    .line 3476
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3477
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_coverage_extend_feature_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method public isWifiToggleEnabled()Z
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    return v0
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 2547
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "matchProviderWithCurrentNetwork uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2548
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public needs5GHzToAnyApBandConversion()Z
    .locals 3

    .line 2616
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2618
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "needs5GHzToAnyApBandConversion uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2621
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public notifyUserOfApBandConversion(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1921
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1923
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "notifyUserOfApBandConversion uid=% packageName=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 1925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->notifyUserOfApBandConversion(Ljava/lang/String;)V

    .line 1929
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2915
    new-instance v0, Lcom/android/server/wifi/WifiShellCommand;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiShellCommand;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/WifiShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2917
    return-void
.end method

.method public queryPasspointIcon(JLjava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .line 2531
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2532
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "queryPasspointIcon uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2533
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z

    .line 2538
    return-void

    .line 2535
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reassociate(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1979
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    return-void

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "reassociate uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1983
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1984
    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1967
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    return-void

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "reconnect uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1971
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand(Landroid/os/WorkSource;)V

    .line 1972
    return-void
.end method

.method registerLOHSForTest(ILcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "request"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1662
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    return-void
.end method

.method public registerSoftApCallback(Landroid/os/IBinder;Landroid/net/wifi/ISoftApCallback;I)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .param p3, "callbackIdentifier"    # I

    .line 1441
    if-eqz p1, :cond_2

    .line 1444
    if-eqz p2, :cond_1

    .line 1448
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1449
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "registerSoftApCallback uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1454
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/wifi/WifiServiceImpl$6;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;I)V

    .line 1473
    .local v0, "dr":Landroid/os/IBinder$DeathRecipient;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    nop

    .line 1480
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILandroid/net/wifi/ISoftApCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1507
    return-void

    .line 1474
    :catch_0
    move-exception v1

    .line 1475
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on linkToDeath - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1445
    .end local v0    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseMulticastLock()V
    .locals 3

    .line 3031
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 3032
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "releaseMulticastLock uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3033
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->releaseLock()V

    .line 3034
    return-void
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 3008
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "releaseWifiLock uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3009
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3010
    const/4 v0, 0x1

    return v0

    .line 3012
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeNetwork(ILjava/lang/String;)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2314
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2315
    return v1

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "removeNetwork uid=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2319
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2320
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    return v0

    .line 2322
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    return v1
.end method

.method public removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2493
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    const/4 v0, 0x0

    return v0

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "removePasspointConfiguration uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2497
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2501
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemovePasspointConfig(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2499
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 39

    .line 2018
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2019
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 2020
    iget-object v1, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "reportActivityInfo uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2022
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->getSupportedFeatures()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2023
    return-object v2

    .line 2026
    :cond_1
    const/4 v1, 0x0

    .line 2027
    .local v1, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_8

    .line 2028
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v3

    .line 2029
    .local v3, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    if-eqz v3, :cond_6

    .line 2030
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.controller.idle"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 2032
    .local v4, "rxIdleCurrent":D
    iget-object v6, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.controller.rx"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 2034
    .local v6, "rxCurrent":D
    iget-object v8, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.controller.tx"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 2036
    .local v8, "txCurrent":D
    iget-object v10, v0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v11, "wifi.controller.voltage"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 2038
    .local v10, "voltage":D
    iget v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v12, v13

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v12, v13

    int-to-long v14, v12

    .line 2040
    .local v14, "rxIdleTime":J
    iget-object v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 2041
    iget-object v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    array-length v12, v12

    new-array v12, v12, [J

    .line 2042
    .local v12, "txTimePerLevel":[J
    nop

    .local v13, "i":I
    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_2

    .line 2043
    iget-object v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    aget v2, v2, v13

    move-object/from16 v28, v1

    int-to-long v1, v2

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v28, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    aput-wide v1, v12, v13

    .line 2042
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v28

    const/4 v2, 0x0

    goto :goto_0

    .line 2048
    .end local v13    # "i":I
    .end local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_2
    move-object/from16 v28, v1

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_1

    .end local v12    # "txTimePerLevel":[J
    .end local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_3
    move-object/from16 v28, v1

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    new-array v12, v13, [J

    .restart local v12    # "txTimePerLevel":[J
    :goto_1
    move-object v1, v12

    .line 2050
    .end local v12    # "txTimePerLevel":[J
    .local v1, "txTimePerLevel":[J
    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    int-to-double v12, v2

    mul-double/2addr v12, v8

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    move-object/from16 v30, v1

    int-to-double v0, v2

    .end local v1    # "txTimePerLevel":[J
    .local v30, "txTimePerLevel":[J
    mul-double/2addr v0, v6

    add-double/2addr v12, v0

    long-to-double v0, v14

    mul-double/2addr v0, v4

    add-double/2addr v12, v0

    mul-double/2addr v12, v10

    double-to-long v0, v12

    .line 2053
    .local v0, "energyUsed":J
    const-wide/16 v12, 0x0

    cmp-long v2, v14, v12

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    if-ltz v2, :cond_5

    iget v2, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    if-ltz v2, :cond_5

    cmp-long v2, v0, v12

    if-gez v2, :cond_4

    goto :goto_2

    .line 2071
    :cond_4
    move-wide/from16 v31, v4

    move-object/from16 v13, v30

    goto/16 :goto_3

    .line 2055
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2056
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " rxIdleCur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " rxCur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " txCur="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " voltage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " on_time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " tx_time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " tx_time_per_level="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v31, v4

    move-object/from16 v13, v30

    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "rxIdleCurrent":D
    .end local v30    # "txTimePerLevel":[J
    .local v13, "txTimePerLevel":[J
    .local v31, "rxIdleCurrent":D
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rx_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rxIdleTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " scan_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " energy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " reportActivityInfo: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/wifi/WifiServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v16

    iget v12, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    move-wide/from16 v33, v6

    int-to-long v5, v12

    .end local v6    # "rxCurrent":D
    .local v33, "rxCurrent":D
    iget v7, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    move-wide/from16 v35, v8

    int-to-long v7, v7

    .end local v8    # "txCurrent":D
    .local v35, "txCurrent":D
    iget v9, v3, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    move-object/from16 v37, v3

    int-to-long v3, v9

    .end local v3    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    .local v37, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    move-object v9, v13

    move-object v13, v2

    .end local v13    # "txTimePerLevel":[J
    .local v9, "txTimePerLevel":[J
    move-wide/from16 v29, v14

    move-wide/from16 v14, v16

    .end local v14    # "rxIdleTime":J
    .local v29, "rxIdleTime":J
    const/4 v12, 0x3

    move/from16 v16, v12

    move-wide/from16 v17, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v29

    move-wide/from16 v26, v0

    invoke-direct/range {v13 .. v27}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    move-object v1, v2

    .end local v0    # "energyUsed":J
    .end local v9    # "txTimePerLevel":[J
    .end local v10    # "voltage":D
    .end local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v29    # "rxIdleTime":J
    .end local v31    # "rxIdleCurrent":D
    .end local v33    # "rxCurrent":D
    .end local v35    # "txCurrent":D
    .local v1, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_4

    .line 2075
    .end local v37    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    .restart local v3    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :cond_6
    move-object/from16 v28, v1

    move-object/from16 v37, v3

    .end local v3    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    .restart local v37    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2076
    return-object v1

    .line 2078
    :cond_7
    const/4 v0, 0x0

    return-object v0

    .line 2081
    .end local v37    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :cond_8
    move-object/from16 v28, v1

    move-object v0, v2

    .end local v1    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v28    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    return-object v0
.end method

.method public requestActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "result"    # Landroid/os/ResultReceiver;

    .line 2005
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2006
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 2007
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "requestActivityInfo uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2009
    :cond_0
    const-string v1, "controller_activity"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2010
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2011
    return-void
.end method

.method public restoreBackupData([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 3199
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "restoreBackupData uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3201
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 3202
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    return-void

    .line 3206
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Restoring backup data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 3208
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiBackupRestore;->retrieveConfigurationsFromBackupData([B)Ljava/util/List;

    move-result-object v0

    .line 3209
    .local v0, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->restoreNetworks(Ljava/util/List;)V

    .line 3210
    const-string v1, "WifiService"

    const-string v2, "Restored backup data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    return-void
.end method

.method public restoreSupplicantBackupData([B[B)V
    .locals 3
    .param p1, "supplicantData"    # [B
    .param p2, "ipConfigData"    # [B

    .line 3221
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3222
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "restoreSupplicantBackupData uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3223
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 3224
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    return-void

    .line 3228
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Restoring supplicant backup data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 3230
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiBackupRestore;->retrieveConfigurationsFromSupplicantBackupData([B[B)Ljava/util/List;

    move-result-object v0

    .line 3232
    .local v0, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->restoreNetworks(Ljava/util/List;)V

    .line 3233
    const-string v1, "WifiService"

    const-string v2, "Restored supplicant backup data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    return-void
.end method

.method public retrieveBackupData()[B
    .locals 4

    .line 3154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3155
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "retrieveBackupData uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3156
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 3157
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    const/4 v0, 0x0

    return-object v0

    .line 3161
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "Retrieving backup data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3163
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 3164
    .local v0, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 3165
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiBackupRestore;->retrieveBackupDataFromConfigurations(Ljava/util/List;)[B

    move-result-object v1

    .line 3166
    .local v1, "backupData":[B
    const-string v2, "WifiService"

    const-string v3, "Retrieved backup data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    return-object v1
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 2573
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 2575
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "setCountryCode uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2577
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCode(Ljava/lang/String;)Z

    .line 2578
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2579
    return-void
.end method

.method public setLatencyLevel(ILjava/lang/String;)I
    .locals 4
    .param p1, "level"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3397
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 3398
    return v1

    .line 3400
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "setLatencyLevel uid=% level=%"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 3401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v2, p1

    .line 3402
    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3403
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setLatencyLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    return v1
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1889
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1890
    return v1

    .line 1892
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1894
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1899
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "setWifiApConfiguration uid=%"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1900
    if-nez p1, :cond_1

    .line 1901
    return v1

    .line 1902
    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/WifiApConfigStore;->validateApWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1903
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->post(Ljava/lang/Runnable;)Z

    .line 1909
    const/4 v1, 0x1

    return v1

    .line 1911
    :cond_2
    const-string v2, "WifiService"

    const-string v3, "Invalid WifiConfiguration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    return v1

    .line 1896
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not allowed to read or update stored WiFi AP config (uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized setWifiEnabled(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 918
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 919
    monitor-exit p0

    return v2

    .line 922
    :cond_0
    :try_start_1
    const-string v1, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 922
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "setWifiEnabled package=% uid=% enable=%"

    invoke-interface {v1, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v1, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 927
    nop

    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 927
    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiServiceImpl;->checkNetworkSettingsPermission(II)Z

    move-result v1

    .line 931
    .local v1, "isFromSettings":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "setWifiEnabled in Airplane mode: only Settings can enable wifi"

    invoke-interface {v0, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 933
    monitor-exit p0

    return v2

    .line 937
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 939
    .local v3, "apEnabled":Z
    :goto_0
    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 940
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "setWifiEnabled SoftAp not disabled: only Settings can enable wifi"

    invoke-interface {v0, v4}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 941
    monitor-exit p0

    return v2

    .line 948
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 950
    .local v4, "ident":J
    :try_start_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, p2}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_4

    .line 952
    nop

    .line 955
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 952
    monitor-exit p0

    return v0

    .line 955
    :cond_4
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    nop

    .line 959
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPermissionReviewRequired:Z

    if-eqz v6, :cond_8

    .line 960
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v6

    .line 961
    .local v6, "wiFiEnabledState":I
    if-eqz p2, :cond_6

    .line 962
    if-eqz v6, :cond_5

    if-ne v6, v0, :cond_8

    .line 964
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->startConsentUi(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_8

    .line 966
    monitor-exit p0

    return v0

    .line 969
    :cond_6
    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 971
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->startConsentUi(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_8

    .line 973
    monitor-exit p0

    return v0

    .line 978
    .end local v6    # "wiFiEnabledState":I
    :cond_8
    if-eqz p2, :cond_a

    :try_start_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez v3, :cond_9

    iget v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApState:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_a

    .line 980
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    .line 982
    :cond_a
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    if-nez v6, :cond_b

    .line 983
    const-string v0, "WifiService"

    const-string v6, "WifiController is not yet started, abort setWifiEnabled"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 984
    monitor-exit p0

    return v2

    .line 987
    :cond_b
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v6, 0x26008

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 988
    monitor-exit p0

    return v0

    .line 955
    :catchall_0
    move-exception v0

    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 917
    .end local v1    # "isFromSettings":Z
    .end local v3    # "apEnabled":Z
    .end local v4    # "ident":J
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiServiceImpl;
    throw p1
.end method

.method public setWifiHandlerLogForTest(Lcom/android/server/wifi/WifiLog;)V
    .locals 1
    .param p1, "log"    # Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->setWifiLog(Lcom/android/server/wifi/WifiLog;)V

    .line 588
    return-void
.end method

.method public startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1690
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1691
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1693
    .local v1, "pid":I
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 1694
    return v3

    .line 1696
    :cond_0
    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 1698
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 1703
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_tethering"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    const/4 v2, 0x4

    return v2

    .line 1709
    :cond_1
    const/4 v2, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->isAppForeground(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_2

    .line 1710
    return v2

    .line 1715
    :cond_2
    nop

    .line 1717
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "startLocalOnlyHotspot uid=% pid=%"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1719
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 1721
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1723
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Cannot start localOnlyHotspot when WiFi Tethering is active."

    invoke-interface {v3, v5}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1724
    monitor-exit v4

    return v2

    .line 1728
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1729
    .local v2, "request":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    if-nez v2, :cond_6

    .line 1736
    new-instance v5, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    new-instance v6, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-direct {v5, p2, p1, v6}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;-><init>(Landroid/os/IBinder;Landroid/os/Messenger;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;)V

    move-object v2, v5

    .line 1740
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIfaceIpModes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    .line 1743
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v6, "LOHS already up, trigger onStarted callback"

    invoke-interface {v5, v6}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1744
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->sendHotspotStartedMessage(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1747
    goto :goto_0

    .line 1745
    :catch_0
    move-exception v5

    .line 1746
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v4

    return v3

    .line 1748
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1750
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 1751
    invoke-static {v5}, Lcom/android/server/wifi/WifiApConfigStore;->generateLocalOnlyHotspotConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1752
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v5, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startSoftApInternal(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1755
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 1730
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "caller already has an active request"

    invoke-interface {v3, v5}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1731
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Caller already has an active LocalOnlyHotspot request"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1757
    .end local v2    # "request":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1712
    :catch_1
    move-exception v3

    .line 1713
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "RemoteException during isAppForeground when calling startLOHS"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1714
    return v2

    .line 1699
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Location mode is not enabled."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 705
    return v1

    .line 708
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 709
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 710
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "startScan uid=%"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 712
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScan:  pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 712
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    monitor-enter p0

    .line 717
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 725
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendFailedScanBroadcast()V

    .line 726
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    .line 728
    const-string v4, "WifiService"

    const-string v5, "start Scan ignore when device in idle mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit p0

    return v1

    .line 732
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 734
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V

    .line 735
    new-instance v4, Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    invoke-direct {v4}, Lcom/android/server/wifi/util/GeneralUtil$Mutable;-><init>()V

    .line 736
    .local v4, "scanSuccess":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachineHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;

    invoke-direct {v7, p0, v4, v0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;ILjava/lang/String;)V

    const-wide/16 v8, 0xfa0

    .line 737
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 740
    .local v6, "runWithScissorsSuccess":Z
    if-nez v6, :cond_2

    .line 741
    const-string v5, "WifiService"

    const-string v7, "Failed to post runnable to start scan"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->sendFailedScanBroadcast()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    nop

    .line 752
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    return v1

    .line 745
    :cond_2
    :try_start_2
    iget-object v7, v4, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 746
    const-string v5, "WifiService"

    const-string v7, "Failed to start scan"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 747
    nop

    .line 752
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 747
    return v1

    .line 752
    .end local v4    # "scanSuccess":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<Ljava/lang/Boolean;>;"
    .end local v6    # "runWithScissorsSuccess":Z
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    nop

    .line 754
    return v5

    .line 752
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 749
    :catch_0
    move-exception v4

    .line 750
    .local v4, "e":Ljava/lang/SecurityException;
    nop

    .line 752
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    return v1

    .line 732
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 1131
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkStackPermission()V

    .line 1133
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "startSoftAp uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1135
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z

    .line 1141
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startSoftApInternal(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    .locals 4
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 3245
    if-eqz p1, :cond_3

    .line 3248
    if-eqz p2, :cond_2

    .line 3251
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 3252
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3257
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "startSubscriptionProvisioning uid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3258
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncStartSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3260
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Subscription provisioning started with %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 3261
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/OsuProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3263
    :cond_0
    return-void

    .line 3254
    .end local v0    # "uid":I
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Passpoint not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3249
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3246
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1830
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LocalOnlyHotspot is still in development"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopLocalOnlyHotspot()V
    .locals 5

    .line 1772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1773
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1775
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "stopLocalOnlyHotspot uid=% pid=%"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1777
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1779
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;

    .line 1780
    .local v3, "requestInfo":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    if-nez v3, :cond_0

    .line 1781
    monitor-exit v2

    return-void

    .line 1783
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->unlinkDeathRecipient()V

    .line 1784
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->unregisterCallingAppAndStopLocalOnlyHotspot(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    .line 1785
    .end local v3    # "requestInfo":Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
    monitor-exit v2

    .line 1786
    return-void

    .line 1785
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopSoftAp()Z
    .locals 3

    .line 1184
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkStackPermission()V

    .line 1189
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "stopSoftAp uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1191
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocalOnlyHotspotRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Call to stop Tethering while LOHS is active, Registered LOHS callers will be updated when softap stopped."

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 1196
    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1199
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftApInternal()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopWatchLocalOnlyHotspot()V
    .locals 2

    .line 1841
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LocalOnlyHotspot is still in development"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterSoftApCallback(I)V
    .locals 3
    .param p1, "callbackIdentifier"    # I

    .line 1519
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1520
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "unregisterSoftApCallback uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;-><init>(Lcom/android/server/wifi/WifiServiceImpl;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1537
    return-void
.end method

.method public updateInterfaceIpState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1053
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceNetworkStackPermission()V

    .line 1054
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "updateInterfaceIpState uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1060
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .line 3002
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "updateWifiLockWorkSource uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 3003
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiLockManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 3004
    return-void
.end method
