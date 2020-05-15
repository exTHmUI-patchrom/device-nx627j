.class public Lcom/android/server/wifi/WifiConfigManager;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;,
        Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;
    }
.end annotation


# static fields
.field public static final LINK_CONFIGURATION_BSSID_MATCH_LENGTH:I = 0x10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LINK_CONFIGURATION_MAX_SCAN_CACHE_ENTRIES:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_SELECTION_DISABLE_THRESHOLD:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PASSWORD_MASK:Ljava/lang/String; = "*"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_CACHE_ENTRIES_MAX_SIZE:I = 0xc0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_CACHE_ENTRIES_TRIM_SIZE:I = 0x80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SCAN_RESULT_MAXIMUM_AGE_MS:I = 0x9c40

.field public static final SYSUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConfigManager"

.field public static final WIFI_CNSS_LOG_LEVEL:Ljava/lang/String; = "nubia.wifi.cnssloglevel"

.field public static final WIFI_LANTENCY_LOW:I = 0x2

.field public static final WIFI_LATENCY_LEVEL:Ljava/lang/String; = "nubia.wifi.latency"

.field public static final WIFI_LATENCY_MODERATE:I = 0x1

.field public static final WIFI_LATENCY_NORMAL:I = 0x0

.field public static final WIFI_LATENCY_ULTRALOW:I = 0x3

.field public static final WIFI_UC_PKT_FILTER_CONF:Ljava/lang/String; = "/vendor/etc/wifi/flt.conf"

.field public static final WIFI_UC_PKT_FILTER_FEATURE:Ljava/lang/String; = "nubia.wifi.ucpktflt.feature"

.field public static final WIFI_UC_PKT_FILTER_PROPERTY:Ljava/lang/String; = "nubia.wifi.ucpktflt"

.field private static final sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;


# instance fields
.field private final ASSOC_REJECT_THRESHOLD:I

.field private final AUTH_FAIL_THRESHOLD:I

.field private final DHCP_FAIL_THRESHOLD:I

.field private final DISCONNECT_EVENT_THRESHOLD:I

.field private final LOW_SIGNAL_THRESHOLD:I

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDebugLatencyState:Z

.field private mDeferredUserUnlockRead:Z

.field private final mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

.field public mDisableConfigsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedNetworkId:I

.field private mLastSelectedTimeStamp:J

.field private mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mMaxNumActiveChannelsForPartialScans:I

.field private final mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

.field private mNextNetworkId:I

.field private final mOnlyLinkSameCredentialConfigurations:Z

.field public mOverThresholdConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingStoreRead:Z

.field private mPendingUnlockStoreRead:Z

.field public mReasonListWhileConnectFail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanDetailCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field public mSetWlanLevelByGameServer:I

.field private mSimPresent:Z

.field private mSystemUiUid:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

.field private final mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private mWifiPktFilterAndCnssLogLevelObserver:Landroid/database/ContentObserver;

.field private mWifiUCpktFilterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    .line 156
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

    .line 239
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$1;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x5
        0x5
        0x5
        0x5
        0x1
        0x1
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7fffffff
        0xdbba0
        0x493e0
        0x493e0
        0x493e0
        0x493e0
        0x927c0
        0x0
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiConfigStoreLegacy;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/NetworkListStoreData;Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;
    .param p3, "userManager"    # Landroid/os/UserManager;
    .param p4, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p5, "wifiKeyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p6, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p7, "wifiConfigStoreLegacy"    # Lcom/android/server/wifi/WifiConfigStoreLegacy;
    .param p8, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p9, "wifiPermissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .param p10, "networkListStoreData"    # Lcom/android/server/wifi/NetworkListStoreData;
    .param p11, "deletedEphemeralSsidsStoreData"    # Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/util/LocalLog;

    .line 274
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    .line 306
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    .line 318
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    .line 322
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 326
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSimPresent:Z

    .line 331
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    .line 336
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    .line 343
    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    .line 344
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 353
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    .line 3212
    new-instance v2, Lcom/android/server/wifi/WifiConfigManager$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiConfigManager$2;-><init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPktFilterAndCnssLogLevelObserver:Landroid/database/ContentObserver;

    .line 3309
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->AUTH_FAIL_THRESHOLD:I

    .line 3310
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->ASSOC_REJECT_THRESHOLD:I

    .line 3311
    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->DHCP_FAIL_THRESHOLD:I

    .line 3312
    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->LOW_SIGNAL_THRESHOLD:I

    .line 3313
    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->DISCONNECT_EVENT_THRESHOLD:I

    .line 3388
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSetWlanLevelByGameServer:I

    .line 3389
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDebugLatencyState:Z

    .line 366
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 367
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 368
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    .line 369
    new-instance v1, Lcom/android/server/wifi/BackupManagerProxy;

    invoke-direct {v1}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 370
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 371
    iput-object p5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    .line 372
    iput-object p6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 373
    iput-object p7, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    .line 374
    iput-object p8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 375
    iput-object p9, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 377
    new-instance v1, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v1, p3}, Lcom/android/server/wifi/ConfigurationMap;-><init>(Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 378
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    .line 379
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 382
    iput-object p10, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    .line 383
    iput-object p11, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 385
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 387
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    .line 389
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    goto :goto_1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "WifiConfigManager"

    const-string v2, "Unable to resolve SystemUI\'s UID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->registerUCObserver()V

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    .line 403
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDisableConfigsList:Ljava/util/List;

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mOverThresholdConfigs:Ljava/util/Map;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 114
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->onWifiPktFilterAndCnssLogLevel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConfigManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiConfigManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDebugLatencyState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiConfigManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 114
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentWifiLatencyConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 114
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->checkFeature()V

    return-void
.end method

.method private addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1059
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding/Updating network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    const/4 v0, 0x0

    .line 1064
    .local v0, "newInternalConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1066
    .local v1, "existingInternalConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_2

    .line 1067
    invoke-static {p1, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validate(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1068
    const-string v2, "WifiConfigManager"

    const-string v4, "Cannot add network with invalid config"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1071
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->createNewInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1078
    :cond_2
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 1079
    invoke-static {p1, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->validate(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1081
    const-string v2, "WifiConfigManager"

    const-string v4, "Cannot update network with invalid config"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1085
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1086
    const-string v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to update configuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1086
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1090
    :cond_4
    nop

    .line 1091
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateExistingInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1096
    :cond_5
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1097
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyProxySettings(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1098
    const-string v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to modify proxy Settings "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Must have NETWORK_SETTINGS, or be device or profile owner."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1098
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1106
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_7

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1107
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    if-eq v5, v3, :cond_7

    .line 1108
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1109
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1110
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1114
    :cond_7
    if-nez v1, :cond_8

    move v5, v2

    goto :goto_0

    :cond_8
    move v5, v4

    .line 1116
    .local v5, "newNetwork":Z
    :goto_0
    if-nez v5, :cond_a

    .line 1117
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasIpChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    :cond_9
    move v6, v4

    goto :goto_2

    :cond_a
    :goto_1
    move v6, v2

    .line 1119
    .local v6, "hasIpChanged":Z
    :goto_2
    if-nez v5, :cond_c

    .line 1120
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    move v7, v4

    goto :goto_4

    :cond_c
    :goto_3
    move v7, v2

    .line 1123
    .local v7, "hasProxyChanged":Z
    :goto_4
    if-nez v5, :cond_e

    .line 1124
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasCredentialChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    move v2, v4

    nop

    .line 1126
    .local v2, "hasCredentialChanged":Z
    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    .line 1127
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1133
    :cond_f
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    nop

    .line 1139
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1140
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_10

    .line 1141
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed from ephemeral blacklist: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_10
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v3}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    .line 1148
    new-instance v3, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v3, v6, v7, v2}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZZ)V

    .line 1150
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 1151
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addOrUpdateNetworkInternal: added/updated config. netId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " configKey="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1156
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1153
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1158
    return-object v3

    .line 1134
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :catch_0
    move-exception v4

    .line 1135
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "WifiConfigManager"

    const-string v9, "Failed to add network to config map"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v8, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8
.end method

.method private addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z
    .locals 11
    .param p2, "scanDetailCache"    # Lcom/android/server/wifi/ScanDetailCache;
    .param p3, "nowInMillis"    # J
    .param p5, "ageInMillis"    # J
    .param p7, "maxChannelSetSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            "JJI)Z"
        }
    .end annotation

    .line 2413
    .local p1, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2414
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 2415
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 2416
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v3, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v4, p3, v4

    cmp-long v4, v4, p5

    const/4 v5, 0x0

    if-gez v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v5

    .line 2417
    .local v4, "valid":Z
    :goto_1
    move-object v6, p0

    iget-boolean v7, v6, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v7, :cond_1

    .line 2418
    const-string v7, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetchChannelSetForNetwork has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " freq "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " age "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v9, p3, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ?="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_1
    if-eqz v4, :cond_2

    .line 2423
    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, p1

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2425
    :cond_2
    move-object v8, p1

    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v7

    move/from16 v9, p7

    if-lt v7, v9, :cond_3

    .line 2426
    return v5

    .line 2428
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "valid":Z
    :cond_3
    goto :goto_0

    .line 2430
    :cond_4
    move-object v6, p0

    move-object v8, p1

    move/from16 v9, p7

    return v0
.end method

.method private attemptNetworkLinking(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2359
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2360
    return-void

    .line 2362
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 2364
    .local v0, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    const/4 v2, 0x6

    if-eqz v0, :cond_1

    .line 2365
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 2366
    return-void

    .line 2368
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2369
    .local v4, "linkConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2370
    goto :goto_0

    .line 2372
    :cond_2
    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_3

    .line 2373
    goto :goto_0

    .line 2377
    :cond_3
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2378
    goto :goto_0

    .line 2380
    :cond_4
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2381
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    .line 2383
    .local v5, "linkScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v5, :cond_5

    .line 2384
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v6

    if-le v6, v2, :cond_5

    .line 2385
    goto :goto_0

    .line 2388
    :cond_5
    invoke-direct {p0, p1, v4, v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->shouldNetworksBeLinked(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetailCache;Lcom/android/server/wifi/ScanDetailCache;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2390
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->linkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 2392
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->unlinkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 2394
    .end local v4    # "linkConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "linkScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :goto_1
    goto :goto_0

    .line 2395
    :cond_7
    return-void
.end method

.method private canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 709
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    .line 710
    return v0

    .line 717
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    const/16 v2, 0x3f2

    if-eqz v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 718
    return v0

    .line 724
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_2

    if-ne p2, v2, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 726
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    return v0

    .line 730
    :cond_2
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 733
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, v3

    .line 737
    .local v4, "isUidDeviceOwner":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 738
    return v0

    .line 741
    :cond_4
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, p2, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v5, v3

    .line 745
    .local v5, "isCreator":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.device_admin"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    .line 747
    const-string v0, "WifiConfigManager"

    const-string v2, "Error retrieving DPMI service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return v3

    .line 752
    :cond_6
    if-eqz v1, :cond_7

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v1, v6, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v3

    .line 754
    .local v2, "isConfigEligibleForLockdown":Z
    :goto_2
    if-nez v2, :cond_a

    .line 755
    if-nez v5, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v0, v3

    nop

    :cond_9
    :goto_3
    return v0

    .line 758
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 759
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v7, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_b

    move v7, v0

    goto :goto_4

    :cond_b
    move v7, v3

    .line 761
    .local v7, "isLockdownFeatureEnabled":Z
    :goto_4
    if-nez v7, :cond_c

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 762
    invoke-virtual {v8, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_5

    .line 761
    :cond_c
    move v0, v3

    :goto_5
    return v0
.end method

.method private canModifyProxySettings(I)Z
    .locals 8
    .param p1, "uid"    # I

    .line 3149
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 3150
    invoke-virtual {v0}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 3151
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3153
    .local v3, "isUidProfileOwner":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, -0x2

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 3155
    .local v4, "isUidDeviceOwner":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 3156
    invoke-virtual {v5, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v5

    .line 3158
    .local v5, "hasNetworkSettingsPermission":Z
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v5, :cond_2

    goto :goto_2

    .line 3161
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_3

    .line 3162
    const-string v2, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cannot modify WifiConfiguration proxy settings. ConfigOverride="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " DeviceOwner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ProfileOwner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_3
    return v1

    .line 3159
    :cond_4
    :goto_2
    return v2
.end method

.method private checkFeature()V
    .locals 4

    .line 3292
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/wifi/flt.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3294
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3295
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia.wifi.ucpktflt.feature"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3297
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia.wifi.ucpktflt.feature"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    :goto_0
    goto :goto_1

    .line 3299
    :catch_0
    move-exception v1

    .line 3300
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiConfigManager"

    const-string v3, "WIFI_UC_PKT_FILTER_FEATURE check fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private clearInternalData()V
    .locals 1

    .line 2825
    const-string v0, "clearInternalData: Clearing all internal data"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2826
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    .line 2827
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2828
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2829
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 2830
    return-void
.end method

.method private clearInternalUserData(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearInternalUserData: Clearing user internal data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2847
    .local v0, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2848
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v3, :cond_0

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    .line 2849
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2848
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2850
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearInternalUserData: removed config. netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2851
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2854
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 2856
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 2857
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2858
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2859
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 2860
    return-object v0
.end method

.method private clearLastSelectedNetwork()V
    .locals 2

    .line 2007
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2008
    const-string v0, "WifiConfigManager"

    const-string v1, "Clearing last selected network"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    .line 2011
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 2012
    return-void
.end method

.method public static createDebugTimeStampString(J)Ljava/lang/String;
    .locals 5
    .param p0, "wallClockMillis"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 419
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "maskPasswords"    # Z

    .line 480
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 481
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_0

    .line 482
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 484
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->maskRandomizedMacAddressInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 485
    return-object v0
.end method

.method private createNewInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "externalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 994
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 997
    .local v0, "newInternalConfig":Landroid/net/wifi/WifiConfiguration;
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1000
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->setDefaultsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1003
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 1008
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 1009
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 1010
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1011
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 1012
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 1015
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1016
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 1017
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 1018
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1019
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 1021
    return-object v0
.end method

.method private doesUidBelongToCurrentUser(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 778
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 782
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 781
    invoke-static {p1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v0

    return v0

    .line 779
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getConfiguredNetworks(ZZ)Ljava/util/List;
    .locals 4
    .param p1, "savedOnly"    # Z
    .param p2, "maskPasswords"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 502
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz p1, :cond_0

    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_0

    .line 503
    goto :goto_0

    .line 505
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 507
    :cond_1
    return-object v0
.end method

.method private getCurrentWifiLatencyConfig()Ljava/lang/String;
    .locals 3

    .line 3417
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia.wifi.latency"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3419
    .local v0, "level":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Wlan Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mSetWlanLevelByGameServer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,Content Observer level= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3420
    .local v1, "LatencyConfig":Ljava/lang/String;
    return-object v1
.end method

.method private getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .line 645
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 646
    const/4 v0, 0x0

    return-object v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 649
    .local v0, "internalConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 650
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find network with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 628
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 629
    .local v0, "internalConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 630
    return-object v0

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 633
    if-nez v0, :cond_1

    .line 634
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find network with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 661
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 662
    .local v0, "internalConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 663
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find network with configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    return-object v0
.end method

.method private getInternalConfiguredNetworks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2083
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2084
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 2085
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2086
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache;

    const/16 v2, 0xc0

    const/16 v3, 0x80

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;II)V

    move-object v0, v1

    .line 2088
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    :cond_1
    return-object v0
.end method

.method private getWifiLantencyLevel(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .line 3393
    packed-switch p1, :pswitch_data_0

    .line 3407
    const-string v0, "N4"

    goto :goto_0

    .line 3404
    :pswitch_0
    const-string v0, "N7"

    .line 3405
    .local v0, "cmd":Ljava/lang/String;
    goto :goto_0

    .line 3401
    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_1
    const-string v0, "N6"

    .line 3402
    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 3398
    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_2
    const-string v0, "N5"

    .line 3399
    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 3395
    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_3
    const-string v0, "N4"

    .line 3396
    .restart local v0    # "cmd":Ljava/lang/String;
    nop

    .line 3407
    :goto_0
    nop

    .line 3410
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWifiPktFilterAndCnssLogLevelCmd()Ljava/lang/String;
    .locals 5

    .line 3242
    const-string v0, "N0"

    .line 3243
    .local v0, "cmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia.wifi.ucpktflt"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiUCpktFilterEnabled:Z

    .line 3245
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "nubia.wifi.cnssloglevel"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v1, v2

    .line 3248
    .local v1, "cnssLogLevel":Z
    if-eqz v1, :cond_3

    .line 3249
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiUCpktFilterEnabled:Z

    if-eqz v2, :cond_2

    .line 3250
    const-string v0, "N3"

    goto :goto_2

    .line 3252
    :cond_2
    const-string v0, "N2"

    goto :goto_2

    .line 3254
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiUCpktFilterEnabled:Z

    if-eqz v2, :cond_4

    .line 3255
    const-string v0, "N1"

    goto :goto_2

    .line 3257
    :cond_4
    const-string v0, "N0"

    .line 3259
    :goto_2
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiPktFilterAndCnssLogLevelCmd mWifiUCpktFilterEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiUCpktFilterEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cnssLogLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    return-object v0
.end method

.method private handleUserUnlockOrSwitch(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2723
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2724
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading from store after user switch/unlock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->loadFromUserStoreAfterUnlockOrSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2728
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 2729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    .line 2731
    :cond_1
    return-void
.end method

.method private linkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "network1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "network2"    # Landroid/net/wifi/WifiConfiguration;

    .line 2309
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2310
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkNetworks will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2310
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 2314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2316
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 2317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2321
    :cond_2
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    return-void
.end method

.method private loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2927
    .local p1, "sharedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "userConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalData()V

    .line 2928
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromSharedStore(Ljava/util/List;)V

    .line 2929
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V

    .line 2930
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    move-result v0

    if-nez v0, :cond_0

    .line 2931
    const-string v0, "WifiConfigManager"

    const-string v1, "No stored networks found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    .line 2934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    .line 2935
    return-void
.end method

.method private loadInternalDataFromSharedStore(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2871
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2872
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2873
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 2874
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding network from shared store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2880
    goto :goto_1

    .line 2878
    :catch_0
    move-exception v2

    .line 2879
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigManager"

    const-string v4, "Failed to add network to config map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2881
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_0

    .line 2882
    :cond_1
    return-void
.end method

.method private loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2894
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2895
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2896
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 2897
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding network from user store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    goto :goto_1

    .line 2901
    :catch_0
    move-exception v2

    .line 2902
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigManager"

    const-string v4, "Failed to add network to config map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2904
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_0

    .line 2905
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2906
    .local v1, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2907
    .end local v1    # "ssid":Ljava/lang/String;
    goto :goto_2

    .line 2908
    :cond_2
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3123
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 3124
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3126
    :cond_0
    return-void
.end method

.method private maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 444
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string v0, "*"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 447
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 449
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v1, v0

    .line 448
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 457
    :cond_3
    return-void
.end method

.method private maskRandomizedMacAddressInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 466
    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 467
    .local v0, "defaultMac":Landroid/net/MacAddress;
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setRandomizedMacAddress(Landroid/net/MacAddress;)V

    .line 468
    return-void
.end method

.method private mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "internalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "externalConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 804
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 807
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 810
    :cond_1
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 811
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "*"

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 813
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 818
    :cond_2
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "hasWepKey":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 821
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "*"

    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 823
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 824
    const/4 v0, 0x1

    .line 820
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 828
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 831
    .end local v0    # "hasWepKey":Z
    :cond_5
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 832
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 834
    :cond_6
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 835
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 837
    :cond_7
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    if-eqz v0, :cond_8

    .line 838
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 842
    :cond_8
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    if-eqz v0, :cond_9

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 843
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 844
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 845
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 847
    :cond_9
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    if-eqz v0, :cond_a

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 848
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 849
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 851
    :cond_a
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v0, :cond_b

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 852
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 853
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 854
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 856
    :cond_b
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_c

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 857
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 858
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 859
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 861
    :cond_c
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_d

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 862
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 863
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 864
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 866
    :cond_d
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_e

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 867
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 868
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 869
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 871
    :cond_e
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_f

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 872
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 873
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 874
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 879
    :cond_f
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 880
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 882
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    const-string v1, "*"

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 884
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 889
    :cond_10
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 890
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 891
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    .line 895
    :cond_11
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 896
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    .line 897
    .local v0, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v0, v1, :cond_12

    .line 898
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 899
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_12

    .line 900
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .line 901
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 900
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 904
    :cond_12
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    .line 905
    .local v1, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_14

    .line 906
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 907
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_13

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_14

    .line 909
    :cond_13
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 914
    .end local v0    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v1    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_14
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    .line 917
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_15

    .line 918
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFromExternal(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    .line 923
    :cond_15
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 924
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 926
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 927
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    .line 929
    :cond_16
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 930
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    .line 932
    :cond_17
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    if-ltz v0, :cond_18

    .line 933
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    .line 935
    :cond_18
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 936
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    .line 938
    :cond_19
    return-void
.end method

.method private onWifiPktFilterAndCnssLogLevel()V
    .locals 6

    .line 3229
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v0, :cond_1

    .line 3230
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3231
    .local v0, "ifaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3232
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiPktFilterAndCnssLogLevelCmd()Ljava/lang/String;

    move-result-object v1

    .line 3233
    .local v1, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiNative;->enablePktFltAndCnssLogLevel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3234
    .local v2, "ret":Z
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWifiPktFilterAndCnssLogLevel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "ret":Z
    goto :goto_0

    .line 3236
    :cond_0
    const-string v1, "WifiConfigManager"

    const-string v2, "onWifiPktFilterAndCnssLogLevel failed because ifaceName is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    .end local v0    # "ifaceName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private registerUCObserver()V
    .locals 4

    .line 3264
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia.wifi.ucpktflt"

    .line 3265
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPktFilterAndCnssLogLevelObserver:Landroid/database/ContentObserver;

    .line 3264
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3268
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia.wifi.cnssloglevel"

    .line 3269
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPktFilterAndCnssLogLevelObserver:Landroid/database/ContentObserver;

    .line 3268
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/WifiConfigManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiConfigManager$3;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3276
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3277
    return-void
.end method

.method private removeConnectChoiceFromAllNetworks(Ljava/lang/String;)V
    .locals 7
    .param p1, "connectChoiceConfigKey"    # Ljava/lang/String;

    .line 1886
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1887
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing connect choice from all networks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_0
    if-nez p1, :cond_1

    .line 1890
    return-void

    .line 1892
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1893
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 1894
    .local v2, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    .line 1895
    .local v3, "connectChoice":Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1896
    const-string v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove connect choice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkConnectChoice(I)Z

    .line 1900
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v3    # "connectChoice":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1901
    :cond_3
    return-void
.end method

.method private removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1285
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1286
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1290
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 1294
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeConnectChoiceFromAllNetworks(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 1296
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNetworkInternal: removed config. netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 1304
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1305
    const/4 v0, 0x1

    return v0
.end method

.method private saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2102
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 2104
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getOrCreateScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    .line 2105
    .local v1, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v1, :cond_0

    .line 2106
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not allocate scan cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    return-void

    .line 2111
    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_1

    .line 2114
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 2118
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    .line 2122
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->attemptNetworkLinking(Landroid/net/wifi/WifiConfiguration;)V

    .line 2123
    return-void
.end method

.method private sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 680
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 683
    .local v1, "broadcastNetwork":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 684
    const-string v2, "wifiConfiguration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 685
    const-string v2, "changeReason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 687
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 696
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 698
    return-void
.end method

.method private setDefaultsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 949
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 951
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 952
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 954
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 957
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 958
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 960
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 961
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 962
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 964
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 965
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 966
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 967
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 968
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 970
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 972
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 974
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 975
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 977
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 978
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 980
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 982
    return-void
.end method

.method private setLastSelectedNetwork(I)V
    .locals 3
    .param p1, "networkId"    # I

    .line 2020
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2021
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting last selected network to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    .line 2024
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 2025
    return-void
.end method

.method private setNetworkSelectionEnabled(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1429
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1430
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1432
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1434
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1437
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    .line 1438
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkEnabled(I)V

    .line 1439
    :cond_0
    return-void
.end method

.method private setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "disableReason"    # I

    .line 1462
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1463
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1465
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1467
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1468
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2, p2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkPermanentlyDisabled(II)V

    .line 1471
    :cond_0
    return-void
.end method

.method private setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .line 1495
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1496
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x0

    if-ltz p2, :cond_3

    const/16 v2, 0xe

    if-lt p2, v2, :cond_0

    goto :goto_1

    .line 1500
    :cond_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 1501
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionEnabled(Landroid/net/wifi/WifiConfiguration;)V

    .line 1502
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1503
    :cond_1
    const/16 v3, 0x8

    if-ge p2, v3, :cond_2

    .line 1504
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1506
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1507
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1509
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkSelectionStatus: configKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " networkStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " disableReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1512
    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1509
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1514
    return v2

    .line 1497
    :cond_3
    :goto_1
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network disable reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return v1
.end method

.method private setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "disableReason"    # I

    .line 1446
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1447
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1450
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1451
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1452
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2, p2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkTemporarilyDisabled(II)V

    .line 1455
    :cond_0
    return-void
.end method

.method private setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "status"    # I

    .line 1478
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1479
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1480
    return-void
.end method

.method private shouldNetworksBeLinked(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetailCache;Lcom/android/server/wifi/ScanDetailCache;)Z
    .locals 18
    .param p1, "network1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "network2"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "scanDetailCache1"    # Lcom/android/server/wifi/ScanDetailCache;
    .param p4, "scanDetailCache2"    # Lcom/android/server/wifi/ScanDetailCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2259
    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2260
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2261
    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 2262
    const-string v3, "WifiConfigManager"

    const-string v5, "shouldNetworksBeLinked unlink due to password mismatch"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_0
    return v4

    .line 2267
    :cond_1
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2269
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2270
    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 2271
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldNetworksBeLinked link due to same gw "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " GW "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_2
    return v5

    .line 2281
    :cond_3
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 2282
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2283
    .local v8, "abssid":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/lang/String;

    .line 2284
    .local v14, "bbssid":Ljava/lang/String;
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x10

    move-object v9, v8

    move-object v12, v14

    move-object v4, v14

    move/from16 v14, v16

    .end local v14    # "bbssid":Ljava/lang/String;
    .local v4, "bbssid":Ljava/lang/String;
    invoke-virtual/range {v9 .. v14}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2288
    iget-boolean v7, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v7, :cond_4

    .line 2289
    const-string v7, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldNetworksBeLinked link due to DBDC BSSID match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " bssida "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " bssidb "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_4
    return v5

    .line 2295
    .end local v4    # "bbssid":Ljava/lang/String;
    :cond_5
    nop

    .line 2283
    const/4 v4, 0x0

    goto :goto_1

    .line 2296
    .end local v8    # "abssid":Ljava/lang/String;
    :cond_6
    nop

    .line 2282
    const/4 v4, 0x0

    goto :goto_0

    .line 2299
    :cond_7
    const/4 v4, 0x0

    return v4
.end method

.method private tryEnableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1604
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1605
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1606
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1607
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1608
    .local v3, "timeDifferenceMs":J
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1609
    .local v1, "disableReason":I
    sget-object v5, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

    aget v5, v5, v1

    int-to-long v5, v5

    .line 1610
    .local v5, "disableTimeoutMs":J
    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 1611
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    return v2

    .line 1614
    .end local v1    # "disableReason":I
    .end local v3    # "timeDifferenceMs":J
    .end local v5    # "disableTimeoutMs":J
    :cond_0
    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1616
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1

    .line 1619
    :cond_2
    :goto_0
    return v2
.end method

.method private unlinkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "network1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "network2"    # Landroid/net/wifi/WifiConfiguration;

    .line 2332
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2333
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2334
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2335
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkNetworks un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2335
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2341
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2342
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 2343
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkNetworks un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2343
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    :cond_3
    return-void
.end method

.method private updateExistingInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "internalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "externalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "uid"    # I

    .line 1035
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1038
    .local v0, "newInternalConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 1041
    iput p3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1042
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 1043
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 1045
    return-object v0
.end method

.method private updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .line 1526
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1527
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-eqz p2, :cond_1

    .line 1528
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->incrementDisableReasonCounter(I)V

    .line 1531
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    .line 1532
    .local v1, "disableReasonCounter":I
    sget-object v2, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    aget v2, v2, p2

    .line 1533
    .local v2, "disableReasonThreshold":I
    if-ge v1, v2, :cond_1

    .line 1534
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 1535
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disable counter for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and threshold is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1535
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1544
    .end local v1    # "disableReasonCounter":I
    .end local v2    # "disableReasonThreshold":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1171
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1172
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    new-instance v0, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v0

    .line 1175
    :cond_0
    if-nez p1, :cond_1

    .line 1176
    const-string v0, "WifiConfigManager"

    const-string v2, "Cannot add/update network with null config"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    new-instance v0, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v0

    .line 1179
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_2

    .line 1180
    const-string v0, "WifiConfigManager"

    const-string v2, "Cannot add/update network before store is read!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v0, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v0

    .line 1183
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 1184
    .local v0, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1185
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add/update network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-object v0

    .line 1188
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1189
    .local v1, "newConfig":Landroid/net/wifi/WifiConfiguration;
    nop

    .line 1191
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1192
    const/4 v2, 0x0

    goto :goto_0

    .line 1193
    :cond_4
    const/4 v2, 0x2

    .line 1189
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1195
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1196
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1197
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v2, :cond_6

    .line 1198
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1199
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkAdded(I)V

    goto :goto_1

    .line 1201
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkUpdated(I)V

    .line 1205
    :cond_6
    :goto_1
    return-object v0
.end method

.method addOrUpdateNetwork2(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1234
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1235
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOrUpdateNetwork2: UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return v1

    .line 1238
    :cond_0
    if-nez p1, :cond_1

    .line 1239
    const-string v0, "WifiConfigManager"

    const-string v2, "addOrUpdateNetwork2: Cannot add/update network with null config"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v1

    .line 1242
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateNetwork2: network id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1243
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_2

    .line 1244
    const-string v0, "WifiConfigManager"

    const-string v2, "addOrUpdateNetwork2: Cannot add/update network before store is read!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return v1

    .line 1247
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 1248
    .local v0, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1249
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOrUpdateNetwork2: Failed to add/update network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1

    .line 1252
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1253
    .local v1, "newConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1254
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1257
    :cond_4
    nop

    .line 1259
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1260
    goto :goto_0

    .line 1261
    :cond_5
    const/4 v2, 0x2

    .line 1257
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1263
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1264
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1265
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v2, :cond_7

    .line 1266
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1267
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkAdded(I)V

    goto :goto_1

    .line 1269
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkUpdated(I)V

    .line 1273
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    return v2
.end method

.method public clearNetworkCandidateScanResult(I)Z
    .locals 4
    .param p1, "networkId"    # I

    .line 1837
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1838
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear network candidate scan result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1841
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1842
    return v1

    .line 1844
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 1845
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 1846
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 1847
    const/4 v1, 0x1

    return v1
.end method

.method public clearNetworkConnectChoice(I)Z
    .locals 5
    .param p1, "networkId"    # I

    .line 1911
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1912
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear network connect choice for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1915
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1916
    return v1

    .line 1918
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1921
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1922
    const/4 v1, 0x1

    return v1
.end method

.method public clearRecentFailureReason(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 3195
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3196
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3197
    return-void

    .line 3199
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->clear()V

    .line 3200
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .line 2630
    if-nez p1, :cond_0

    .line 2631
    const/4 v0, 0x0

    return-object v0

    .line 2633
    :cond_0
    const/4 v0, 0x0

    .line 2634
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2635
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2636
    move-object v0, v2

    .line 2637
    goto :goto_1

    .line 2639
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 2640
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2641
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forget ephemeral SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    if-eqz v0, :cond_3

    .line 2643
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_3
    return-object v0
.end method

.method public disableNetwork(II)Z
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "uid"    # I

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1686
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1689
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return v1

    .line 1692
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1693
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1694
    return v1

    .line 1696
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1697
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not have permission to update configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1697
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return v1

    .line 1701
    :cond_3
    const/16 v2, 0xb

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1703
    return v1

    .line 1705
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    if-ne p1, v1, :cond_5

    .line 1706
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 1708
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1709
    return v1
.end method

.method disableSameSSIDConfig(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2511
    .local p1, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2512
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;

    .line 2513
    .local v2, "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->isByPassDueToExceedThreshold()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2514
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mOverThresholdConfigs:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    :cond_0
    goto :goto_0

    .line 2517
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3132
    const-string v0, "Dump of WifiConfigManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    const-string v0, "WifiConfigManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3135
    const-string v0, "WifiConfigManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const-string v0, "WifiConfigManager - Configured networks Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3138
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3139
    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 3140
    :cond_0
    const-string v0, "WifiConfigManager - Configured networks End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfigManager - Next network ID to be allocated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfigManager - Last selected network ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    return-void
.end method

.method public enableBlacklistconfigs()V
    .locals 6

    .line 3330
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDisableConfigsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3331
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-result v2

    .line 3332
    .local v2, "ret":Z
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable Blacklist configs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v5, " success"

    goto :goto_1

    :cond_0
    const-string v5, " fail"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "ret":Z
    goto :goto_0

    .line 3334
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDisableConfigsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3335
    return-void
.end method

.method public enableNetwork(IZI)Z
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    .line 1650
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1651
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (disableOthers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1654
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    return v1

    .line 1657
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1658
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1659
    return v1

    .line 1661
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1662
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not have permission to update configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1662
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return v1

    .line 1666
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1668
    return v1

    .line 1670
    :cond_4
    if-eqz p2, :cond_5

    .line 1671
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setLastSelectedNetwork(I)V

    .line 1673
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1674
    return v1
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 428
    if-lez p1, :cond_0

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->enableVerboseLogging(Z)V

    .line 435
    return-void
.end method

.method public fetchChannelSetForNetworkForPartialScan(IJI)Ljava/util/Set;
    .locals 22
    .param p1, "networkId"    # I
    .param p2, "ageInMillis"    # J
    .param p4, "homeChannelFreq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 2446
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 2447
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    if-nez v9, :cond_0

    .line 2448
    return-object v0

    .line 2450
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v10

    .line 2451
    .local v10, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v10, :cond_1

    iget-object v1, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 2452
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No scan detail and linked configs associated with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    return-object v0

    .line 2455
    :cond_1
    move/from16 v11, p1

    iget-boolean v0, v8, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_4

    .line 2456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2457
    .local v0, "dbg":Ljava/lang/StringBuilder;
    const-string v1, "fetchChannelSetForNetworkForPartialScan ageInMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    move-wide/from16 v12, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " for "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " max "

    .line 2461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2463
    if-eqz v10, :cond_2

    .line 2464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bssids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    :cond_2
    iget-object v1, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " linked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    :cond_3
    const-string v1, "WifiConfigManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "dbg":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 2471
    :cond_4
    move-wide/from16 v12, p2

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 2474
    .local v14, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-lez p4, :cond_5

    .line 2475
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2476
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    if-lt v0, v1, :cond_5

    .line 2477
    return-object v14

    .line 2481
    :cond_5
    iget-object v0, v8, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v15

    .line 2484
    .local v15, "nowInMillis":J
    iget v7, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    move-object v0, v8

    move-object v1, v14

    move-object v2, v10

    move-wide v3, v15

    move-wide v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiConfigManager;->addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2487
    return-object v14

    .line 2491
    :cond_6
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 2492
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 2493
    .local v5, "configKey":Ljava/lang/String;
    invoke-direct {v8, v5}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2494
    .local v6, "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v6, :cond_7

    .line 2495
    goto :goto_1

    .line 2497
    :cond_7
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2498
    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v17

    .line 2499
    .local v17, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    iget v3, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    move-object v0, v8

    move-object v1, v14

    move-object/from16 v2, v17

    move/from16 v18, v3

    move-wide v3, v15

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide v5, v12

    .end local v5    # "configKey":Ljava/lang/String;
    .end local v6    # "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    .local v19, "configKey":Ljava/lang/String;
    .local v20, "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v21, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiConfigManager;->addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2502
    goto :goto_2

    .line 2504
    .end local v17    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v19    # "configKey":Ljava/lang/String;
    .end local v20    # "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    nop

    .line 2492
    move-object/from16 v7, v21

    goto :goto_1

    .line 2506
    :cond_9
    :goto_2
    return-object v14
.end method

.method getConfigInformation()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1218
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v3, v2

    .line 1219
    .local v3, "network":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v3}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 1221
    .end local v3    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v0
.end method

.method public getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "networkId"    # I

    .line 549
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 550
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 551
    const/4 v1, 0x0

    return-object v1

    .line 555
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "configKey"    # Ljava/lang/String;

    .line 566
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 567
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 568
    const/4 v1, 0x0

    return-object v1

    .line 572
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2133
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 2134
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2135
    const-string v2, "WifiConfigManager"

    const-string v3, "No scan result found in scan detail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return-object v1

    .line 2138
    :cond_0
    nop

    .line 2140
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/ConfigurationMap;->getByScanResultForCurrentUser(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 2141
    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2142
    invoke-static {v0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2143
    new-instance v2, Lcom/android/server/wifi/ScanResultMatchInfo;

    invoke-direct {v2}, Lcom/android/server/wifi/ScanResultMatchInfo;-><init>()V

    .line 2144
    .local v2, "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    .line 2145
    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    .line 2146
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByScanResultForCurrentUser(Lcom/android/server/wifi/ScanResultMatchInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 2150
    .end local v2    # "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    :cond_1
    goto :goto_0

    .line 2148
    :catch_0
    move-exception v2

    .line 2149
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigManager"

    const-string v4, "Failed to lookup network from config map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2151
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-eqz v1, :cond_2

    .line 2152
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 2153
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSavedNetworkFromScanDetail Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_2
    return-object v1
.end method

.method public getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2170
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2171
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 2172
    const/4 v1, 0x0

    return-object v1

    .line 2174
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V

    .line 2180
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2181
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    if-lez v1, :cond_1

    .line 2182
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 2184
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkWithPassword(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "networkId"    # I

    .line 586
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 587
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 588
    const/4 v1, 0x0

    return-object v1

    .line 592
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkWithoutMasking(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "networkId"    # I

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 607
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 608
    const/4 v1, 0x0

    return-object v1

    .line 610
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    return-object v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworksWithPasswords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastSelectedNetwork()I
    .locals 1

    .line 2034
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    return v0
.end method

.method public getLastSelectedNetworkConfigKey()Ljava/lang/String;
    .locals 2

    .line 2044
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2045
    const-string v0, ""

    return-object v0

    .line 2047
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2048
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 2049
    const-string v1, ""

    return-object v1

    .line 2051
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastSelectedTimeStamp()J
    .locals 2

    .line 2060
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    return-wide v0
.end method

.method public getReasonListWhileConnectFail()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;",
            ">;"
        }
    .end annotation

    .line 3327
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    return-object v0
.end method

.method public getSavedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 538
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;
    .locals 2
    .param p1, "networkId"    # I

    .line 2071
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    return-object v0
.end method

.method public getWifiLatency()I
    .locals 1

    .line 3413
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSetWlanLevelByGameServer:I

    return v0
.end method

.method public getWifiUcPktFilterEnabled()Z
    .locals 1

    .line 3288
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiUCpktFilterEnabled:Z

    return v0
.end method

.method public handleUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2808
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2809
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling user stop for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2812
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 2813
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalUserData(I)Ljava/util/Set;

    .line 2815
    :cond_1
    return-void
.end method

.method public handleUserSwitch(I)Ljava/util/Set;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2748
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2749
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling user switch for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_1

    .line 2752
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User already in foreground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 2755
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_2

    .line 2756
    const-string v0, "WifiConfigManager"

    const-string v1, "Unexpected user switch before store is read!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 2759
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2760
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 2763
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalUserData(I)Ljava/util/Set;

    move-result-object v0

    .line 2764
    .local v0, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->setNewUser(I)V

    .line 2765
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 2767
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2768
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlockOrSwitch(I)V

    goto :goto_0

    .line 2771
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    .line 2772
    const-string v1, "WifiConfigManager"

    const-string v2, "Waiting for user unlock to load from store"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :goto_0
    return-object v0
.end method

.method public handleUserUnlock(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2786
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2787
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling user unlock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_1

    .line 2790
    const-string v0, "WifiConfigManager"

    const-string v1, "Ignore user unlock until store is read!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 2792
    return-void

    .line 2794
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    if-eqz v0, :cond_2

    .line 2795
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlockOrSwitch(I)V

    .line 2797
    :cond_2
    return-void
.end method

.method public incrementNetworkNoInternetAccessReports(I)Z
    .locals 3
    .param p1, "networkId"    # I

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1961
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1962
    const/4 v1, 0x0

    return v1

    .line 1964
    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1965
    return v2
.end method

.method public initWifiPktFilterAndCnssLogLevel()V
    .locals 2

    .line 3280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/WifiConfigManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiConfigManager$4;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3285
    return-void
.end method

.method public isSimPresent()Z
    .locals 1

    .line 2691
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSimPresent:Z

    return v0
.end method

.method public loadFromStore()Z
    .locals 4

    .line 2992
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2993
    const-string v0, "WifiConfigManager"

    const-string v2, "Handling user unlock before loading from store."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    .line 2995
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 2997
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->areStoresPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2998
    const-string v0, "WifiConfigManager"

    const-string v3, "New store files not found. No saved networks loaded!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3001
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    .line 3003
    :cond_1
    return v2

    .line 3006
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->read()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3013
    nop

    .line 3014
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkListStoreData;->getSharedConfigurations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    .line 3015
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkListStoreData;->getUserConfigurations()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 3016
    invoke-virtual {v3}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->getSsidList()Ljava/util/Set;

    move-result-object v3

    .line 3014
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 3017
    return v2

    .line 3010
    :catch_0
    move-exception v0

    .line 3011
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "WifiConfigManager"

    const-string v3, "XML deserialization of store failed. All saved networks are lost!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3012
    return v1

    .line 3007
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 3008
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WifiConfigManager"

    const-string v3, "Reading from new store failed. All saved networks are lost!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3009
    return v1
.end method

.method public loadFromUserStoreAfterUnlockOrSwitch(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 3034
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->switchUserStoreAndRead(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3042
    nop

    .line 3043
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkListStoreData;->getUserConfigurations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 3044
    invoke-virtual {v1}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->getSsidList()Ljava/util/Set;

    move-result-object v1

    .line 3043
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V

    .line 3045
    const/4 v0, 0x1

    return v0

    .line 3038
    :catch_0
    move-exception v1

    .line 3039
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "WifiConfigManager"

    const-string v3, "XML deserialization of store failed. All saved private networks arelost!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3041
    return v0

    .line 3035
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 3036
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WifiConfigManager"

    const-string v3, "Reading from new store failed. All saved private networks are lost!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3037
    return v0
.end method

.method public migrateFromLegacyStore()Z
    .locals 5

    .line 2947
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2948
    const-string v0, "WifiConfigManager"

    const-string v2, "Legacy store files not found. No migration needed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    return v1

    .line 2951
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->areStoresPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2952
    const-string v0, "WifiConfigManager"

    const-string v2, "New store files found. No migration needed! Remove legacy store files"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->removeStores()Z

    .line 2955
    return v1

    .line 2957
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->read()Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;

    move-result-object v0

    .line 2958
    .local v0, "storeData":Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;
    const-string v2, "WifiConfigManager"

    const-string v3, "Reading from legacy store completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->getConfigurations()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2960
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->getDeletedEphemeralSSIDs()Ljava/util/Set;

    move-result-object v4

    .line 2959
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 2964
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2965
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    .line 2966
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 2969
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2970
    return v3

    .line 2972
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->removeStores()Z

    .line 2973
    const-string v2, "WifiConfigManager"

    const-string v3, "Migration from legacy store completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    return v1
.end method

.method public needsUnlockedKeyStore()Z
    .locals 3

    .line 2701
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2702
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2703
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiKeyStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2704
    const/4 v0, 0x1

    return v0

    .line 2707
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 2708
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllEphemeralOrPasspointConfiguredNetworks()Z
    .locals 8

    .line 1405
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1406
    const-string v0, "WifiConfigManager"

    const-string v1, "Removing all passpoint or ephemeral configured networks"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    const/4 v0, 0x0

    .line 1409
    .local v0, "didRemove":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 1410
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1411
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 1412
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1413
    const-string v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing passpoint network config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    .line 1415
    const/4 v0, 0x1

    goto :goto_1

    .line 1416
    :cond_1
    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_2

    .line 1417
    const-string v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing ephemeral network config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    .line 1419
    const/4 v0, 0x1

    .line 1411
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1422
    :cond_3
    return v0
.end method

.method public removeNetwork(II)Z
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "uid"    # I

    .line 1316
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1317
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return v1

    .line 1320
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1321
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1322
    return v1

    .line 1324
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1325
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not have permission to delete configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return v1

    .line 1329
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1330
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    return v1

    .line 1333
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    if-ne p1, v1, :cond_4

    .line 1334
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 1336
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1338
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1339
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1340
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkRemoved(I)V

    .line 1342
    :cond_5
    return v1
.end method

.method public removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Ljava/util/Set;
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1353
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1356
    :cond_0
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove all networks for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1358
    .local v0, "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 1359
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1360
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 1361
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1362
    goto :goto_1

    .line 1364
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", application \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" uninstalled from user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1366
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1364
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1367
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1368
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1360
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1371
    :cond_3
    return-object v0

    .line 1354
    .end local v0    # "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method removeNetworksForUser(I)Ljava/util/Set;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1382
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove all networks for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1384
    .local v0, "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 1385
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1386
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 1387
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq p1, v5, :cond_0

    .line 1388
    goto :goto_1

    .line 1390
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1391
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1392
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1386
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1395
    :cond_2
    return-object v0
.end method

.method public resetSimNetworks(Z)V
    .locals 6
    .param p1, "simPresent"    # Z

    .line 2653
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "resetSimNetworks"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2654
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2655
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2656
    const/4 v2, 0x0

    .line 2657
    .local v2, "currentIdentity":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 2658
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v4, Lcom/android/server/wifi/util/TelephonyUtil;

    invoke-direct {v4}, Lcom/android/server/wifi/util/TelephonyUtil;-><init>()V

    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimIdentity(Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/util/TelephonyUtil;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;

    move-result-object v2

    .line 2661
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 2662
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New identity for config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_2
    if-nez v2, :cond_3

    .line 2667
    const-string v0, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Identity is null for config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    goto :goto_2

    .line 2671
    :cond_3
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-nez v3, :cond_4

    .line 2672
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 2677
    :cond_4
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2678
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2681
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "currentIdentity":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_1
    goto :goto_0

    .line 2682
    :cond_6
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mSimPresent:Z

    .line 2683
    return-void
.end method

.method public retrieveHiddenNetworkList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation

    .line 2588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2589
    .local v0, "hiddenList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2591
    .local v1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2592
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2593
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2594
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v4, :cond_0

    .line 2595
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2597
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 2598
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2600
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2601
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2603
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 2604
    :cond_2
    return-object v0
.end method

.method public retrievePnoNetworkList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    .line 2531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2532
    .local v0, "pnoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2534
    .local v1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2535
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2536
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2537
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2538
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2539
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2540
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2542
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 2543
    :cond_2
    sget-object v3, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2545
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2546
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableSameSSIDConfig(Ljava/util/List;)V

    .line 2550
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2552
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2553
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;

    .line 2554
    .local v5, "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->isByPassDueToExceedThreshold()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mOverThresholdConfigs:Ljava/util/Map;

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2555
    :cond_5
    if-eqz v5, :cond_6

    .line 2556
    const-string v6, "WifiConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pno NetworkList continue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/net/wifi/WifiConfiguration$Status;->strings:[Ljava/lang/String;

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " AssocReject="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAssocReject:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",AuthFail="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAuthFail:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", DhcpFail="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDhcpFail:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", LowRssiBypass="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterLowRssiBypass:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", DisconnectEvent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDisconnectEvent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2561
    :cond_6
    const-string v6, "WifiConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pno NetworkList continue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/net/wifi/WifiConfiguration$Status;->strings:[Ljava/lang/String;

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Should be disable due to same SSID in list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :goto_2
    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->disableNetwork(II)Z

    .line 2565
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mDisableConfigsList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2567
    goto/16 :goto_1

    .line 2571
    .end local v5    # "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    :cond_7
    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_1

    .line 2573
    :cond_8
    return-object v0
.end method

.method public saveToStore(Z)Z
    .locals 9
    .param p1, "forceWrite"    # Z

    .line 3055
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3056
    const-string v0, "WifiConfigManager"

    const-string v2, "Cannot save to store before store is read!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    return v1

    .line 3059
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3060
    .local v0, "sharedConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3062
    .local v2, "userConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3063
    .local v3, "legacyPasspointNetId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3065
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    if-nez v6, :cond_2

    .line 3066
    goto :goto_0

    .line 3071
    :cond_2
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 3072
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3071
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3073
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3075
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addLegacyPasspointConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3076
    const-string v6, "WifiConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to migrate legacy Passpoint config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3089
    :cond_3
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v6, :cond_5

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 3090
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3089
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 3093
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 3091
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3095
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    goto :goto_0

    .line 3098
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3099
    .local v5, "networkId":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 3100
    .end local v5    # "networkId":I
    goto :goto_3

    .line 3103
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/NetworkListStoreData;->setSharedConfigurations(Ljava/util/List;)V

    .line 3104
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/NetworkListStoreData;->setUserConfigurations(Ljava/util/List;)V

    .line 3105
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->setSsidList(Ljava/util/Set;)V

    .line 3108
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/WifiConfigStore;->write(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    nop

    .line 3116
    const/4 v1, 0x1

    return v1

    .line 3112
    :catch_0
    move-exception v4

    .line 3113
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "WifiConfigManager"

    const-string v6, "XML serialization for store failed. Saved networks maybe lost!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3114
    return v1

    .line 3109
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 3110
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "WifiConfigManager"

    const-string v6, "Writing to store failed. Saved networks maybe lost!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3111
    return v1
.end method

.method public setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p3, "score"    # I

    .line 1864
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1865
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network candidate scan result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1868
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1869
    const/4 v1, 0x0

    return v1

    .line 1871
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 1872
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 1873
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 1874
    return v2
.end method

.method public setNetworkConnectChoice(ILjava/lang/String;J)Z
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "connectChoiceConfigKey"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 1940
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1941
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network connect choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1944
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1945
    return v1

    .line 1947
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1949
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1950
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkDefaultGwMacAddress(ILjava/lang/String;)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1801
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1802
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1803
    const/4 v1, 0x0

    return v1

    .line 1805
    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1806
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkNoInternetAccessExpected(IZ)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "expected"    # Z

    .line 1994
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1995
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1996
    const/4 v1, 0x0

    return v1

    .line 1998
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 1999
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkRandomizedMacAddress(ILandroid/net/MacAddress;)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "macAddress"    # Landroid/net/MacAddress;

    .line 1817
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1818
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1819
    const/4 v1, 0x0

    return v1

    .line 1821
    :cond_0
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setRandomizedMacAddress(Landroid/net/MacAddress;)V

    .line 1822
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkValidatedInternetAccess(IZ)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "validated"    # Z

    .line 1976
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1977
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1978
    return v1

    .line 1980
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1981
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1982
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1983
    const/4 v1, 0x1

    return v1
.end method

.method public setOnSavedNetworkUpdateListener(Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    .line 3174
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    .line 3175
    return-void
.end method

.method public setRecentFailureAssociationStatus(II)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .line 3184
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3185
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3186
    return-void

    .line 3188
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(I)V

    .line 3189
    return-void
.end method

.method public setWifiLatencyLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .line 3424
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v0, :cond_1

    .line 3425
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3426
    .local v0, "ifaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3427
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiLantencyLevel(I)Ljava/lang/String;

    move-result-object v1

    .line 3428
    .local v1, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3429
    .local v2, "ret":Z
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiLatencyLevel level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "ret":Z
    goto :goto_0

    .line 3431
    :cond_0
    const-string v1, "WifiConfigManager"

    const-string v2, "setWifiLatencyLevel failed because ifaceName is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    .end local v0    # "ifaceName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public setWifiNative(Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .line 3225
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 3226
    return-void
.end method

.method public tryEnableNetwork(I)Z
    .locals 2
    .param p1, "networkId"    # I

    .line 1633
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1634
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1635
    const/4 v1, 0x0

    return v1

    .line 1637
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1
.end method

.method updateBlackListDueToConnFail(ILjava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3337
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3338
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateBlackListDueToConnFail(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method updateBlackListDueToConnFail(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3341
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3342
    return v0

    .line 3344
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;

    .line 3345
    .local v1, "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update ConnFail ReasonList : configKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_7

    .line 3348
    new-instance v3, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    .line 3349
    .local v3, "newStatus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    const-string v4, "ASSOCIATION_REJECTION"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3350
    iput v2, v3, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAssocReject:I

    goto :goto_0

    .line 3351
    :cond_2
    const-string v4, "AUTHENTICATION_FAILURE"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3352
    iput v2, v3, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAuthFail:I

    goto :goto_0

    .line 3353
    :cond_3
    const-string v4, "DHCP_FAILURE"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3354
    iput v2, v3, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDhcpFail:I

    goto :goto_0

    .line 3355
    :cond_4
    const-string v4, "LOW_RSSI_BYPASS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3356
    iput v2, v3, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterLowRssiBypass:I

    goto :goto_0

    .line 3357
    :cond_5
    const-string v4, "DISCONNECTION_EVENT"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3358
    iput v2, v3, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDisconnectEvent:I

    goto :goto_0

    .line 3360
    :cond_6
    const-string v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the fail is first time and unkonwn the reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3363
    .end local v3    # "newStatus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    nop

    .line 3379
    return v0

    .line 3364
    :cond_7
    const-string v0, "ASSOCIATION_REJECTION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3365
    iget v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAssocReject:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAssocReject:I

    goto :goto_1

    .line 3366
    :cond_8
    const-string v0, "AUTHENTICATION_FAILURE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3367
    iget v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAuthFail:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAuthFail:I

    goto :goto_1

    .line 3368
    :cond_9
    const-string v0, "DHCP_FAILURE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3369
    iget v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDhcpFail:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDhcpFail:I

    goto :goto_1

    .line 3370
    :cond_a
    const-string v0, "LOW_RSSI_BYPASS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3371
    iget v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterLowRssiBypass:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterLowRssiBypass:I

    goto :goto_1

    .line 3372
    :cond_b
    const-string v0, "DISCONNECTION_EVENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3373
    iget v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDisconnectEvent:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDisconnectEvent:I

    goto :goto_1

    .line 3375
    :cond_c
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkonwn the reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->isByPassDueToExceedThreshold()Z

    move-result v0

    return v0
.end method

.method public updateLastConnectUid(II)Z
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "uid"    # I

    .line 1720
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1721
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update network last connect UID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1724
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    return v1

    .line 1727
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1728
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1729
    return v1

    .line 1731
    :cond_2
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 1732
    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkAfterConnect(I)Z
    .locals 4
    .param p1, "networkId"    # I

    .line 1749
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1750
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update network after connect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1753
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1754
    return v1

    .line 1756
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 1757
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1758
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    .line 1759
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1760
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1761
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1762
    return v3
.end method

.method public updateNetworkAfterDisconnect(I)Z
    .locals 4
    .param p1, "networkId"    # I

    .line 1776
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1777
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update network after disconnect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1780
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1781
    return v1

    .line 1783
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 1786
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v2, :cond_2

    .line 1787
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1789
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1790
    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkNotRecommended(IZ)Z
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "notRecommended"    # Z

    .line 1578
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1579
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1580
    return v1

    .line 1583
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNotRecommended(Z)V

    .line 1584
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkRecommendation: configKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " notRecommended="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1588
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1589
    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkSelectionStatus(II)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "reason"    # I

    .line 1563
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1564
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1565
    const/4 v1, 0x0

    return v1

    .line 1567
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1
.end method

.method public updateScanDetailCacheFromWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 18
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    .line 2195
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2196
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    .line 2197
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 2198
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v3

    .line 2199
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v3, :cond_1

    .line 2200
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 2201
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v5, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 2202
    .local v5, "previousSeen":J
    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 2204
    .local v7, "previousRssi":I
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 2205
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 2207
    const-wide/32 v8, 0x9c40

    .line 2208
    .local v8, "maxAge":J
    iget-wide v10, v4, Landroid/net/wifi/ScanResult;->seen:J

    sub-long/2addr v10, v5

    .line 2209
    .local v10, "age":J
    const-wide/16 v12, 0x0

    cmp-long v14, v5, v12

    if-lez v14, :cond_0

    cmp-long v12, v10, v12

    if-lez v12, :cond_0

    const-wide/16 v12, 0x2

    div-long v12, v8, v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_0

    .line 2211
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    long-to-double v14, v10

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    long-to-double v2, v8

    .end local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v16, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .local v17, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    div-double/2addr v14, v2

    sub-double/2addr v12, v14

    .line 2212
    .local v12, "alpha":D
    iget v2, v4, Landroid/net/wifi/ScanResult;->level:I

    int-to-double v2, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    mul-double/2addr v2, v14

    int-to-double v14, v7

    mul-double/2addr v14, v12

    add-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v4, Landroid/net/wifi/ScanResult;->level:I

    .end local v12    # "alpha":D
    goto :goto_0

    .line 2215
    .end local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v17    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v17    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 2216
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating scan detail cache freq="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " BSSID="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " RSSI="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2216
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "previousSeen":J
    .end local v7    # "previousRssi":I
    .end local v8    # "maxAge":J
    .end local v10    # "age":J
    .end local v17    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    goto :goto_1

    .line 2223
    .end local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_1
    move-object/from16 v16, v2

    .end local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_2
    :goto_1
    return-void
.end method

.method public updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V
    .locals 1
    .param p1, "networkId"    # I
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2234
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2235
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 2236
    return-void

    .line 2238
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V

    .line 2239
    return-void
.end method

.method public wasEphemeralNetworkDeleted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 2615
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
