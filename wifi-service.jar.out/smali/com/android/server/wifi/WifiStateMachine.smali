.class public Lcom/android/server/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$FilsState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$RoamingState;,
        Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;,
        Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;,
        Lcom/android/server/wifi/WifiStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;,
        Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;
    }
.end annotation


# static fields
.field private static final ASSOCIATION_REJECTION_EVENT:I = 0x2b

.field private static final ASSOCIATION_REJECTION_FULL:I = 0x11

.field private static final AUTHENTICATION_FAILURE_EVENT:I = 0x7

.field static final BASE:I = 0x20000

.field static final CMD_ACCEPT_UNVALIDATED:I = 0x20099

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ADD_OR_UPDATE_PASSPOINT_CONFIG:I = 0x2006a

.field static final CMD_ASSOCIATED_BSSID:I = 0x20093

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CONFIG_ND_OFFLOAD:I = 0x200cc

.field private static final CMD_DIAGS_CONNECT_TIMEOUT:I = 0x200fc

.field static final CMD_DISABLE_EPHEMERAL_NETWORK:I = 0x20062

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISABLE_P2P_WATCHDOG_TIMER:I = 0x20070

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field public static final CMD_DPP_ADD_BOOTSTRAP_QRCODE:I = 0x2012e

.field public static final CMD_DPP_AUTH_INIT:I = 0x20135

.field public static final CMD_DPP_CONFIGURATOR_GET_KEY:I = 0x20136

.field public static final CMD_DPP_CONF_ADD:I = 0x20133

.field public static final CMD_DPP_CONF_REMOVE:I = 0x20134

.field public static final CMD_DPP_GENERATE_BOOTSTRAP:I = 0x2012d

.field public static final CMD_DPP_GET_URI:I = 0x20130

.field public static final CMD_DPP_LISTEN_START:I = 0x20131

.field public static final CMD_DPP_LISTEN_STOP:I = 0x20132

.field public static final CMD_DPP_REMOVE_BOOTSTRAP:I = 0x2012f

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER:I = 0x200a6

.field static final CMD_GET_ALL_MATCHING_CONFIGS:I = 0x200a8

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_GET_LINK_LAYER_STATS:I = 0x2003f

.field static final CMD_GET_MATCHING_CONFIG:I = 0x20063

.field static final CMD_GET_MATCHING_OSU_PROVIDERS:I = 0x2006d

.field static final CMD_GET_PASSPOINT_CONFIGS:I = 0x2006c

.field static final CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS:I = 0x2003e

.field static final CMD_GET_REAL_CONFIGURED_NETWORKS:I = 0x200dc

.field static final CMD_GET_SUPPORTED_FEATURES:I = 0x2003d

.field static final CMD_INITIALIZE:I = 0x20087

.field static final CMD_INSTALL_PACKET_FILTER:I = 0x200ca

.field static final CMD_IPV4_PROVISIONING_FAILURE:I = 0x200c9

.field static final CMD_IPV4_PROVISIONING_SUCCESS:I = 0x200c8

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_IP_REACHABILITY_LOST:I = 0x20095

.field private static final CMD_IP_REACHABILITY_SESSION_END:I = 0x20137

.field static final CMD_MATCH_PROVIDER_NETWORK:I = 0x20069

.field static final CMD_NETWORK_STATUS:I = 0x20094

.field static final CMD_QUERY_OSU_ICON:I = 0x20068

.field static final CMD_READ_PACKET_FILTER:I = 0x200d0

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_APP_CONFIGURATIONS:I = 0x20061

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REMOVE_PASSPOINT_CONFIG:I = 0x2006b

.field static final CMD_REMOVE_USER_CONFIGURATIONS:I = 0x20098

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_ROAM_WATCHDOG_TIMER:I = 0x2005e

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_RSSI_THRESHOLD_BREACHED:I = 0x200a4

.field static final CMD_SAVE_NETWORKS:I = 0x200dd

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x2005f

.field static final CMD_SET_FALLBACK_PACKET_FILTERING:I = 0x200cb

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_SET_WIFI_LATENCY_LEVEL:I = 0x20191

.field static final CMD_START_CONNECT:I = 0x2008f

.field static final CMD_START_IP_PACKET_OFFLOAD:I = 0x200a0

.field static final CMD_START_ROAM:I = 0x20091

.field static final CMD_START_RSSI_MONITORING_OFFLOAD:I = 0x200a2

.field private static final CMD_START_SUBSCRIPTION_PROVISIONING:I = 0x200fe

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_IP_PACKET_OFFLOAD:I = 0x200a1

.field static final CMD_STOP_RSSI_MONITORING_OFFLOAD:I = 0x200a3

.field static final CMD_TARGET_BSSID:I = 0x2008d

.field static final CMD_TEST_NETWORK_DISCONNECT:I = 0x20059

.field static final CMD_UNWANTED_NETWORK:I = 0x20090

.field static final CMD_UPDATE_LINKPROPERTIES:I = 0x2008c

.field static final CMD_USER_STOP:I = 0x200cf

.field static final CMD_USER_SWITCH:I = 0x200cd

.field static final CMD_USER_UNLOCK:I = 0x200ce

.field public static final CONNECT_MODE:I = 0x1

.field private static final DEFAULT_POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field private static final DIAGS_CONNECT_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DISABLED_MODE:I = 0x4

.field static final DISABLE_P2P_GUARD_TIMER_MSEC:I = 0x7d0

.field static final DISCONNECTING_GUARD_TIMER_MSEC:I = 0x1388

.field private static final EXTRA_OSU_ICON_QUERY_BSSID:Ljava/lang/String; = "BSSID"

.field private static final EXTRA_OSU_ICON_QUERY_FILENAME:Ljava/lang/String; = "FILENAME"

.field private static final EXTRA_OSU_PROVIDER:Ljava/lang/String; = "OsuProvider"

.field private static final FAILURE:I = -0x1

.field private static final GOOGLE_OUI:Ljava/lang/String; = "DA-A1-19"

.field public static final LAST_SELECTED_NETWORK_EXPIRATION_AGE_MILLIS:I = 0x7530
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LINK_FLAPPING_DEBOUNCE_MSEC:I = 0xfa0

.field private static final LOGD_LEVEL_DEBUG:Ljava/lang/String; = "D"

.field private static final LOGD_LEVEL_VERBOSE:Ljava/lang/String; = "V"

.field private static final MESSAGE_HANDLING_STATUS_DEFERRED:I = -0x4

.field private static final MESSAGE_HANDLING_STATUS_DISCARD:I = -0x5

.field private static final MESSAGE_HANDLING_STATUS_FAIL:I = -0x2

.field private static final MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = -0x7

.field private static final MESSAGE_HANDLING_STATUS_LOOPED:I = -0x6

.field private static final MESSAGE_HANDLING_STATUS_OBSOLETE:I = -0x3

.field private static final MESSAGE_HANDLING_STATUS_OK:I = 0x1

.field private static final MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x2

.field private static final MESSAGE_HANDLING_STATUS_REFUSED:I = -0x1

.field private static final MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORKTYPE_UNTRUSTED:Ljava/lang/String; = "WIFI_UT"

.field private static final NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN:I = 0x2

.field private static final NETWORK_STATUS_UNWANTED_DISCONNECT:I = 0x0

.field private static final NETWORK_STATUS_UNWANTED_VALIDATION_FAILED:I = 0x1

.field public static final NUM_LOG_RECS_NORMAL:S = 0x64s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_VERBOSE:S = 0xbb8s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_VERBOSE_LOW_MEMORY:S = 0xc8s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ONE_HOUR_MILLI:I = 0x36ee80

.field static final ROAM_GUARD_TIMER_MSEC:I = 0x3a98

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field private static final SUCCESS:I = 0x1

.field public static final SUPPLICANT_BSSID_ANY:Ljava/lang/String; = "any"

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final SYSTEM_PROPERTY_LOG_CONTROL_WIFIHAL:Ljava/lang/String; = "log.tag.WifiHAL"

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field public static final WIFI_WORK_SOURCE:Landroid/os/WorkSource;

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static sScanAlarmIntentCount:I

.field private static final sSmToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private didBlackListBSSID:Z

.field disconnectingWatchdogCount:I

.field private lastConnectAttemptTimestamp:J

.field private lastLinkLayerStatsUpdate:J

.field private lastOntimeReportTimeStamp:J

.field private lastScanFreqs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastScreenStateChangeTimeStamp:J

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectionReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private mDataInterfaceName:Ljava/lang/String;

.field private mDebugLatencyState:Z

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDiagsConnectionStartMillis:J

.field mDisableP2pWatchdogCount:I

.field private mDisconnectOnlyOnInitialIpReachability:Z

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectedTimeStamp:J

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEnableRssiPolling:Z

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFilsConfig:Landroid/net/wifi/WifiConfiguration;

.field private mFilsState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIpClient:Landroid/net/ip/IpClient;

.field private mIpReachabilityDisconnectEnabled:Z

.field private mIpReachabilityMonitorActive:Z

.field private mIsAutoRoaming:Z

.field private mIsFilsConnection:Z

.field private mIsIpClientStarted:Z

.field private mIsRunning:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverRoamAttempt:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mMcastLockManagerFilterController:Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

.field private mModeChange:Z

.field private final mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

.field private mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkMisc:Landroid/net/NetworkMisc;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOnTime:I

.field private mOnTimeLastReport:I

.field private mOnTimeScreenStateChange:I

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private final mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private mPeriodicScanToken:I

.field private volatile mPollRssiIntervalMsecs:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRoamFailCount:I

.field private mRoamingState:Lcom/android/internal/util/State;

.field private mRssiPollToken:I

.field private mRssiRanges:[B

.field mRunningBeaconCount:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mRxTime:I

.field private mRxTimeLastReport:I

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field private mScreenOn:Z

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mSupportedFeatureSet:I

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTargetNetworkId:I

.field private mTargetRoamBSSID:Ljava/lang/String;

.field private final mTcpBufferSizes:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemporarilyDisconnectWifi:Z

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mTxTime:I

.field private mTxTimeLastReport:I

.field private mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

.field private mUntrustedReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingEnabled:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

.field private mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

.field private final mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiLatencyLevelObserver:Landroid/database/ContentObserver;

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private final mWifiReqCountLock:Ljava/lang/Object;

.field private final mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

.field private messageHandlingStatus:I

.field roamWatchdogCount:I

.field private targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

.field private testNetworkDisconnect:Z

.field private testNetworkDisconnectCounter:I

.field private wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 696
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    .line 698
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    .line 699
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    .line 783
    new-instance v0, Landroid/os/WorkSource;

    const/16 v1, 0x3f2

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    .line 818
    sput v2, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WrongPasswordNotifier;Lcom/android/server/wifi/SarManager;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "userManager"    # Landroid/os/UserManager;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p6, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p7, "countryCode"    # Lcom/android/server/wifi/WifiCountryCode;
    .param p8, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p9, "wrongPasswordNotifier"    # Lcom/android/server/wifi/WrongPasswordNotifier;
    .param p10, "sarManager"    # Lcom/android/server/wifi/SarManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 840
    const-string v2, "WifiStateMachine"

    move-object/from16 v3, p3

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 171
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    .line 176
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    .line 208
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 224
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 230
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 238
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    .line 242
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOnlyOnInitialIpReachability:Z

    .line 243
    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitorActive:Z

    .line 272
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    .line 274
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 276
    const/16 v6, 0xbb8

    iput v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    .line 277
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 283
    const/4 v6, 0x4

    iput v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    .line 286
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mModeChange:Z

    .line 288
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 290
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 329
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 336
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 347
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    .line 350
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    .line 354
    const-string v7, "any"

    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 358
    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    .line 359
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    .line 360
    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 421
    new-instance v9, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v9}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 426
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    .line 429
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    .line 433
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    .line 438
    new-instance v9, Landroid/net/NetworkCapabilities;

    invoke-direct {v9}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 441
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    .line 498
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    .line 509
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 552
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    .line 558
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisableP2pWatchdogCount:I

    .line 720
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 735
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 738
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 747
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 750
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 752
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 754
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 756
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 758
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 760
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$RoamingState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    .line 762
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 764
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 766
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine$FilsState;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/WifiStateMachine$FilsState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    .line 767
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFilsConnection:Z

    .line 768
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    .line 778
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 788
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 793
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 798
    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 803
    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 831
    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupportedFeatureSet:I

    .line 1332
    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    .line 1345
    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    .line 1346
    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    .line 1361
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1375
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1376
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1377
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1379
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 1380
    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1381
    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 1382
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1383
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1384
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1386
    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 3181
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 6838
    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDebugLatencyState:Z

    .line 6840
    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$5;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, v0, v8}, Lcom/android/server/wifi/WifiStateMachine$5;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLatencyLevelObserver:Landroid/database/ContentObserver;

    .line 841
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 842
    iget-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 843
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    .line 844
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getPropertyService()Lcom/android/server/wifi/PropertyService;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 845
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getBuildProperties()Lcom/android/server/wifi/BuildProperties;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 846
    iput-object v1, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 847
    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 848
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 849
    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 853
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/android/server/wifi/WifiStateMachine;->mSarManager:Lcom/android/server/wifi/SarManager;

    .line 855
    new-instance v12, Lnubia/net/wifi/NBWifiRssiInfo;

    invoke-direct {v12}, Lnubia/net/wifi/NBWifiRssiInfo;-><init>()V

    iput-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    .line 859
    new-instance v12, Landroid/net/NetworkInfo;

    const-string v13, "WIFI"

    const-string v14, ""

    invoke-direct {v12, v5, v2, v13, v14}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 860
    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v13, "batterystats"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 862
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getWifiStateTracker()Lcom/android/server/wifi/WifiStateTracker;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    .line 863
    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v13, "network_management"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 865
    .local v12, "b":Landroid/os/IBinder;
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.wifi.direct"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 868
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 869
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getWifiConfigManager()Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 871
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getPasspointManager()Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 873
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 874
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getWifiDiagnostics()Lcom/android/server/wifi/BaseWifiDiagnostics;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 875
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getScanRequestProxy()Lcom/android/server/wifi/ScanRequestProxy;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 876
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 878
    new-instance v13, Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-direct {v13}, Lcom/android/server/wifi/ExtendedWifiInfo;-><init>()V

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    .line 879
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v13, v1, v14, v15}, Lcom/android/server/wifi/FrameworkFacade;->makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 882
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 883
    new-instance v13, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

    invoke-direct {v13, v0}, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mMcastLockManagerFilterController:Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

    .line 885
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 886
    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 887
    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 888
    iput v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 890
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 892
    new-instance v6, Lcom/android/server/wifi/WifiScoreReport;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getScoringParams()Lcom/android/server/wifi/ScoringParams;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v6, v13, v14}, Lcom/android/server/wifi/WifiScoreReport;-><init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    .line 894
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 895
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 896
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v13, 0xb

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 897
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v13, 0x12

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 898
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v13, 0x14

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 899
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v13, 0xd

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 900
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v13, 0x100000

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 901
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v13}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 903
    new-instance v6, Landroid/net/NetworkCapabilities;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v6, v13}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 905
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 906
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mPowerManager:Landroid/os/PowerManager;

    .line 911
    const-string v13, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->registerWifiLatencyLevelObserver()V

    .line 917
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/server/wifi/WifiStateMachine$1;

    invoke-direct {v14, v0}, Lcom/android/server/wifi/WifiStateMachine$1;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 966
    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "wifi_suspend_optimizations_enabled"

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$2;

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/android/server/wifi/WifiStateMachine$2;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 966
    const/4 v2, 0x0

    invoke-virtual {v13, v14, v15, v2, v5}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 976
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v14, "wifi_connected_mac_randomization_enabled"

    invoke-static {v14}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Lcom/android/server/wifi/WifiStateMachine$3;

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v15, v0, v2}, Lcom/android/server/wifi/WifiStateMachine$3;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 976
    const/4 v2, 0x0

    invoke-virtual {v5, v13, v14, v2, v15}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 985
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$4;

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiStateMachine$4;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 994
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v14, "wifi_suspend_optimizations_enabled"

    const/4 v15, 0x1

    invoke-virtual {v5, v13, v14, v15}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v15, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 997
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->updateConnectedMacRandomizationSetting()V

    .line 999
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1000
    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v2, v13, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1002
    const-string v5, "WifiSuspend"

    invoke-virtual {v2, v13, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1003
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1005
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x104016c

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 1008
    const-string v5, "persist.vendor.wifi.enableIpReachabilityMonitorPeriod"

    const-string v13, "1"

    .line 1009
    invoke-static {v5, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "1"

    .line 1010
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOnlyOnInitialIpReachability:Z

    .line 1013
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1014
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1015
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1016
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1017
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1018
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1019
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1020
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1021
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1024
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1026
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1027
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->start()V

    .line 1034
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    .line 1035
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    return v0
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOnlyOnInitialIpReachability:Z

    return v0
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpReachabilityLost()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    return v0
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTargetSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/wifi/WifiStateMachine;BILcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->processRssiThreshold(BILcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpClient()V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11408(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return v0
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    return v0
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic access$11608(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide v0
.end method

.method static synthetic access$11702(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .line 154
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide p1
.end method

.method static synthetic access$11800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .line 154
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic access$1604(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic access$1606(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic access$1704(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic access$1706(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Lcom/android/internal/util/State;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->deleteNetworkConfigAndSendReply(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDebugLatencyState:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/hotspot2/PasspointManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getAdditionalWifiServiceInterfaces()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->saveNetworkConfigAndSendReply(Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiLatencyConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .line 154
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiDiagnostics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setupClientMode()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ScanRequestProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/ExtendedWifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopClientMode()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendWifiConnectBroadcast(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiStateMachine;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->isPermanentWrongPasswordFailure(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleEapAuthFailure(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiScoreReport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiStateMachine;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->connectToUserSelectNetwork(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .line 154
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    return-wide p1
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFilsConnection:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFilsConnection:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->configureRandomizedMacAddress(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptStart(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/WifiConfiguration;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitorActive:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitorActive:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->isProviderOwnedNetwork(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiDppConfig$DppResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/WifiDppConfig$DppResult;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendDppEventBroadcast(ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    return-void
.end method

.method static synthetic access$8902(Lcom/android/server/wifi/WifiStateMachine;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # [B

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateConnectedMacRandomizationSetting()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$9008(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkMisc;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    return v0
.end method

.method static synthetic access$9502(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V

    return-void
.end method

.method private broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 6389
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6391
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6392
    const-string v1, "et"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6394
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6397
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    .line 5231
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5234
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x6

    if-ne p1, v0, :cond_1

    .line 5235
    const-string v0, "1"

    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 5236
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 5237
    const-string v0, "0"

    goto :goto_0

    .line 5238
    :cond_2
    if-ne p1, v1, :cond_5

    .line 5239
    const-string v0, "6"

    goto :goto_0

    .line 5241
    .restart local v0    # "prefix":Ljava/lang/String;
    :goto_1
    nop

    .line 5244
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5245
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5246
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5247
    .local v2, "mnc":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 5248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 5251
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5252
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 5255
    .restart local v1    # "mcc":Ljava/lang/String;
    .local v2, "mnc":Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@wlan.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5241
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    return-object v0

    .line 5232
    :cond_6
    :goto_3
    const-string v0, ""

    return-object v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .line 2622
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 2625
    :cond_0
    return-void
.end method

.method private checkOrDeferScanAllowed(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1366
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 1367
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1368
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1369
    .local v2, "dmsg":Landroid/os/Message;
    const-wide/16 v3, 0x2af8

    iget-wide v5, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v5, v0, v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1370
    const/4 v3, 0x0

    return v3

    .line 1372
    .end local v2    # "dmsg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private cleanWifiScore()V
    .locals 3

    .line 2747
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    .line 2748
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    .line 2749
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    .line 2750
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iput-wide v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    .line 2751
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScoreReport;->reset()V

    .line 2752
    return-void
.end method

.method private clearLinkProperties()V
    .locals 2

    .line 2790
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v1, :cond_0

    .line 2792
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1}, Landroid/net/DhcpResults;->clear()V

    .line 2794
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2797
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 2798
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2799
    :cond_1
    return-void

    .line 2794
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private configureRandomizedMacAddress(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3540
    if-nez p1, :cond_0

    .line 3541
    const-string v0, "WifiStateMachine"

    const-string v1, "No config to change MAC address to"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    return-void

    .line 3544
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 3545
    .local v0, "currentMac":Landroid/net/MacAddress;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getOrCreateRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 3546
    .local v1, "newMac":Landroid/net/MacAddress;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkRandomizedMacAddress(ILandroid/net/MacAddress;)Z

    .line 3548
    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration;->isValidMacAddressForRandomization(Landroid/net/MacAddress;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3549
    const-string v2, "WifiStateMachine"

    const-string v3, "Config generated an invalid MAC address"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3550
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3551
    const-string v2, "WifiStateMachine"

    const-string v3, "No changes in MAC address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3553
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(ILandroid/net/wifi/WifiConfiguration;)V

    .line 3554
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 3555
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiNative;->setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v2

    .line 3556
    .local v2, "setMacSuccess":Z
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectedMacRandomization SSID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "). setMacAddress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3558
    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3556
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    .end local v2    # "setMacSuccess":Z
    :goto_0
    return-void
.end method

.method private configureVerboseHalLogging(Z)V
    .locals 3
    .param p1, "enableVerbose"    # Z

    .line 1239
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-interface {v0}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    const-string v1, "log.tag.WifiHAL"

    .line 1243
    if-eqz p1, :cond_1

    const-string v2, "V"

    goto :goto_0

    :cond_1
    const-string v2, "D"

    .line 1242
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/PropertyService;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method private connectToUserSelectNetwork(IIZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "uid"    # I
    .param p3, "forceReconnect"    # Z

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectToUserSelectNetwork netId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceReconnect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectToUserSelectNetwork Invalid network Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1300
    const/4 v0, 0x0

    return v0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1303
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1309
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->setUserConnectChoice(I)V

    goto :goto_1

    .line 1304
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToUserSelectNetwork Allowing uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with insufficient permissions to connect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    .line 1311
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->getNetworkId()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToUserSelectNetwork already connecting/connected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->prepareForForcedConnection(I)V

    .line 1317
    const-string v0, "any"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiStateMachine;->startConnectToNetwork(IILjava/lang/String;)V

    .line 1319
    :goto_2
    return v1
.end method

.method private deleteNetworkConfigAndSendReply(Landroid/os/Message;Z)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "calledFromForget"    # Z

    .line 6508
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v0

    .line 6509
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 6510
    const-string v1, "Failed to remove network"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6513
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 6514
    if-eqz v0, :cond_1

    .line 6515
    const v1, 0x25006

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 6516
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    .line 6518
    return v2

    .line 6520
    :cond_1
    const v2, 0x25005

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6521
    return v1

    .line 6524
    :cond_2
    if-eqz v0, :cond_3

    .line 6525
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6526
    return v2

    .line 6528
    :cond_3
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6529
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6530
    return v1
.end method

.method private fetchRssiLinkSpeedAndFrequencyNative()V
    .locals 8

    .line 2671
    const/4 v0, 0x0

    .line 2672
    .local v0, "newRssi":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 2673
    .local v1, "newLinkSpeed":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 2674
    .local v2, "newFrequency":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;

    move-result-object v3

    .line 2675
    .local v3, "pollResult":Lcom/android/server/wifi/WifiNative$SignalPollResult;
    if-nez v3, :cond_0

    .line 2676
    return-void

    .line 2679
    :cond_0
    iget v4, v3, Lcom/android/server/wifi/WifiNative$SignalPollResult;->currentRssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2680
    iget v4, v3, Lcom/android/server/wifi/WifiNative$SignalPollResult;->txBitrate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2681
    iget v4, v3, Lcom/android/server/wifi/WifiNative$SignalPollResult;->associationFrequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2683
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 2684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchRssiLinkSpeedAndFrequencyNative rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " linkspeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " freq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2688
    :cond_1
    const/16 v4, -0x7f

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xc8

    if-ge v5, v6, :cond_4

    .line 2693
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit16 v4, v4, -0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2694
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->setRssi(I)V

    .line 2697
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    invoke-virtual {v5}, Lnubia/net/wifi/NBWifiRssiInfo;->getNewRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Lnubia/net/wifi/NBWifiRssiInfo;->setLastRssi(I)V

    .line 2698
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lnubia/net/wifi/NBWifiRssiInfo;->updateRssiAndFreq(ILjava/lang/String;Ljava/util/List;)V

    .line 2715
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lnubia/net/wifi/NBWifiRssiUtils;->calculateSignalLevel(Lnubia/net/wifi/NBWifiRssiInfo;I)I

    move-result v4

    .line 2717
    .local v4, "newSignalLevel":I
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v4, v5, :cond_3

    .line 2718
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 2719
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 2721
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(Lnubia/net/wifi/NBWifiRssiInfo;)V

    .line 2724
    :cond_3
    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2725
    .end local v4    # "newSignalLevel":I
    goto :goto_0

    .line 2726
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setRssi(I)V

    .line 2727
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 2730
    :goto_0
    if-eqz v1, :cond_5

    .line 2731
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->setLinkSpeed(I)V

    .line 2733
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    .line 2734
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->setFrequency(I)V

    .line 2736
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->updateScanDetailCacheFromWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 2740
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 2741
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiMetrics;->handlePollResult(Landroid/net/wifi/WifiInfo;)V

    .line 2743
    :cond_7
    return-void
.end method

.method private getAdditionalWifiServiceInterfaces()V
    .locals 5

    .line 3520
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3522
    .local v0, "s1":Landroid/os/IBinder;
    nop

    .line 3523
    invoke-static {v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 3525
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    if-eqz v1, :cond_0

    .line 3526
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3527
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 3528
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 3527
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 3531
    .end local v0    # "s1":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method private getCurrentWifiLatencyConfig()Ljava/lang/String;
    .locals 3

    .line 6854
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia.wifi.latency"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6856
    .local v0, "level":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Wlan Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigManager;->mSetWlanLevelByGameServer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,Content Observer level= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6857
    .local v1, "LatencyConfig":Ljava/lang/String;
    return-object v1
.end method

.method private getDstMacForKeepalive(Landroid/net/KeepalivePacketData;)[B
    .locals 3
    .param p1, "packetData"    # Landroid/net/KeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    .line 1432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1433
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 1432
    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1433
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 1434
    .local v0, "gateway":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1435
    .local v1, "dstMacStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1436
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v1    # "dstMacStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v2, -0x15

    invoke-direct {v1, v2}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v1
.end method

.method private static getEtherProtoForKeepalive(Landroid/net/KeepalivePacketData;)I
    .locals 2
    .param p0, "packetData"    # Landroid/net/KeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 1445
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    return v0

    .line 1446
    :cond_0
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 1447
    sget v0, Landroid/system/OsConstants;->ETH_P_IPV6:I

    return v0

    .line 1449
    :cond_1
    new-instance v0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0
.end method

.method private static getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .line 6572
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6573
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6574
    const-string v1, "v4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6576
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6577
    const-string v1, "v4r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6579
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6580
    const-string v1, "v4dns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6582
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6583
    const-string v1, "v6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6585
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6586
    const-string v1, "v6r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6588
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6589
    const-string v1, "v6dns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6592
    :cond_5
    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 2966
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getTargetSsid()Ljava/lang/String;
    .locals 2

    .line 6600
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6601
    .local v0, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 6602
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v1

    .line 6604
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleEapAuthFailure(II)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "errorCode"    # I

    .line 5092
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    .line 5093
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5094
    .local v0, "targetedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 5095
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5099
    :pswitch_0
    const/16 v1, 0x4001

    if-ne p2, v1, :cond_0

    .line 5100
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->resetCarrierKeysForImsiEncryption()V

    .line 5107
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleIPv4Failure()V
    .locals 4

    .line 3285
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->captureBugReportData(I)V

    .line 3286
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 3287
    const/4 v0, -0x1

    .line 3288
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3289
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    .line 3290
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0

    .line 3293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP failure count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3295
    .end local v0    # "count":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/16 v0, 0xa

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    .line 3298
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v1, :cond_2

    .line 3300
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1}, Landroid/net/DhcpResults;->clear()V

    .line 3302
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_3

    .line 3304
    const-string v0, "handleIPv4Failure"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3306
    :cond_3
    return-void

    .line 3302
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 3234
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIPv4Success <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3240
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3241
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 3242
    iget-object v1, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 3243
    .local v1, "addr":Ljava/net/Inet4Address;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3245
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    if-eqz v0, :cond_1

    .line 3246
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->getIpAddress()I

    move-result v0

    .line 3247
    .local v0, "previousAddress":I
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    .line 3248
    .local v2, "newAddress":I
    if-eq v0, v2, :cond_1

    .line 3249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIPv4Success, roaming and address changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3254
    .end local v0    # "previousAddress":I
    .end local v2    # "newAddress":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3256
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3257
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 3258
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setEphemeral(Z)V

    .line 3262
    :cond_2
    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3263
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3266
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3267
    return-void

    .line 3243
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "addr":Ljava/net/Inet4Address;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleIpConfigurationLost()V
    .locals 3

    .line 3309
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3310
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3312
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 3316
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-nez v0, :cond_0

    .line 3317
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const-string v2, "DHCP_FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateBlackListDueToConnFail(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startScreenOffPnoScan()V

    .line 3327
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->disconnect(Ljava/lang/String;)Z

    .line 3328
    return-void
.end method

.method private handleIpReachabilityLost()V
    .locals 2

    .line 3332
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3333
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3338
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->disconnect(Ljava/lang/String;)Z

    .line 3339
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 1

    .line 3043
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Z)V

    .line 3044
    return-void
.end method

.method private handleNetworkDisconnect(Z)V
    .locals 3
    .param p1, "connectionInProgress"    # Z

    .line 3047
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 3048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetworkDisconnect: Stopping DHCP and clearing IP stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3052
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3048
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3055
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    .line 3057
    const-string v0, "handleNetworkDisconnect"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->clearTargetBssid(Ljava/lang/String;)Z

    .line 3059
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_2

    .line 3060
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpClient()V

    .line 3063
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScoreReport;->reset()V

    .line 3064
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->reset()V

    .line 3066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    .line 3068
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 3069
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3070
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 3071
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 3075
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 3078
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 3080
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 3081
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerDisconnected()V

    .line 3082
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 3083
    return-void
.end method

.method private handleScreenStateChanged(Z)V
    .locals 5
    .param p1, "screenOn"    # Z

    .line 2584
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 2585
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleScreenStateChanged Enter: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUserWantsSuspendOpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " suppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 2589
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2586
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2591
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 2592
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2593
    const/4 v0, 0x0

    .line 2594
    .local v0, "shouldReleaseWakeLock":I
    const v1, 0x20056

    if-eqz p1, :cond_1

    .line 2595
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    goto :goto_0

    .line 2597
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2599
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2600
    const/4 v0, 0x1

    .line 2602
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2606
    .end local v0    # "shouldReleaseWakeLock":I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats()Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 2607
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 2608
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 2610
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->setScreenState(Z)V

    .line 2612
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_4

    .line 2613
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    .line 2616
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSarManager:Lcom/android/server/wifi/SarManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SarManager;->handleScreenStateChanged(Z)V

    .line 2618
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChanged Exit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2619
    :cond_5
    return-void
.end method

.method private handleSuccessfulIpConfiguration()V
    .locals 3

    .line 3270
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3271
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3272
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 3274
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter(I)V

    .line 3278
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3280
    :cond_0
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 2970
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 2971
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 2976
    .local v1, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 2978
    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2979
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget v3, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setNetworkId(I)V

    .line 2980
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2981
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    goto :goto_0

    .line 2984
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setNetworkId(I)V

    .line 2985
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2986
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 2989
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 2991
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2992
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 2993
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setEphemeral(Z)V

    .line 2996
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v3

    .line 2998
    .local v3, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v3, :cond_1

    .line 2999
    iget-object v4, v0, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v4

    .line 3000
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v4, :cond_1

    .line 3001
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ExtendedWifiInfo;->setFrequency(I)V

    .line 3002
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v5

    .line 3003
    .local v5, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v5, :cond_1

    .line 3004
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-ne v6, v7, :cond_1

    .line 3005
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMeteredHint(Z)V

    .line 3011
    .end local v3    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v5    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 3012
    return-object v1
.end method

.method private hasConnectionRequests()Z
    .locals 1

    .line 6638
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    if-lez v0, :cond_0

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

.method private isPermanentWrongPasswordFailure(II)Z
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "reasonCode"    # I

    .line 3404
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 3405
    return v0

    .line 3407
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3408
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3409
    return v0

    .line 3411
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isProviderOwnedNetwork(ILjava/lang/String;)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "providerFqdn"    # Ljava/lang/String;

    .line 5081
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 5082
    return v0

    .line 5084
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5085
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_1

    .line 5086
    return v0

    .line 5088
    :cond_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .line 2146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 2147
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2150
    :cond_0
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 3346
    const/4 v0, 0x0

    .line 3347
    .local v0, "macAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3349
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 3352
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 3354
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2

    .line 3355
    const-string v3, "[ ]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3356
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 3357
    goto :goto_0

    .line 3362
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 3363
    .local v4, "ip":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v3, v5

    .line 3365
    .local v5, "mac":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3366
    move-object v0, v5

    .line 3367
    goto :goto_1

    .line 3369
    .end local v3    # "tokens":[Ljava/lang/String;
    .end local v4    # "ip":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3371
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 3372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find remoteAddress {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "} in /proc/net/arp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3382
    .end local v2    # "line":Ljava/lang/String;
    :cond_3
    nop

    .line 3383
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3385
    :catch_0
    move-exception v2

    .line 3388
    goto :goto_3

    .line 3387
    :cond_4
    :goto_2
    goto :goto_3

    .line 3381
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 3378
    :catch_1
    move-exception v2

    .line 3379
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "Could not read /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3382
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 3383
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3376
    :catch_2
    move-exception v2

    .line 3377
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v3, "Could not open /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3382
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_4

    .line 3383
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 3389
    :goto_3
    return-object v0

    .line 3381
    :goto_4
    nop

    .line 3382
    if-eqz v1, :cond_5

    .line 3383
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 3385
    :catch_3
    move-exception v3

    nop

    .line 3387
    :cond_5
    :goto_5
    throw v2
.end method

.method private obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .line 6373
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6374
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 6375
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 6376
    return-object v0
.end method

.method private p2pSendMessage(I)Z
    .locals 1
    .param p1, "what"    # I

    .line 6613
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 6614
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6615
    const/4 v0, 0x1

    return v0

    .line 6617
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p2pSendMessage(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 6626
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 6627
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6628
    const/4 v0, 0x1

    return v0

    .line 6630
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processRssiThreshold(BILcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)V
    .locals 7
    .param p1, "curRssi"    # B
    .param p2, "reason"    # I
    .param p3, "rssiHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 247
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_3

    const/16 v0, -0x80

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 251
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v1, v1, v0

    if-ge p1, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v1, v1, v0

    .line 256
    .local v1, "maxRssi":B
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v2, v2, v3

    .line 260
    .local v2, "minRssi":B
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setRssi(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 262
    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/wifi/WifiStateMachine;->startRssiMonitoringOffload(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v3

    .line 263
    .local v3, "ret":I
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-program RSSI thresholds for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], curRssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto :goto_1

    .line 251
    .end local v1    # "maxRssi":B
    .end local v2    # "minRssi":B
    .end local v3    # "ret":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 248
    :cond_3
    :goto_2
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRssiThreshold: Invalid rssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private registerForWifiMonitorEvents()V
    .locals 11

    .line 1038
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2008d

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v4, 0x20093

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1040
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v5, 0x2402c

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1041
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1041
    const v5, 0x2402b

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1043
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1043
    const v6, 0x24007

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1045
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1045
    const v7, 0x24034

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1047
    const v7, 0x24033

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1049
    const v7, 0x2403d

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1051
    const v7, 0x24003

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1053
    const v8, 0x24004

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1055
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1055
    const v9, 0x24035

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1057
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1057
    const v9, 0x24006

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1059
    const v10, 0x2400f

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1061
    const v10, 0x24010

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1064
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1063
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1065
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1066
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1065
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1068
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1067
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1070
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1069
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1071
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1072
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1071
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1074
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1073
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1075
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1076
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1075
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1077
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1077
    const v3, 0x2403f

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24065

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1080
    return-void
.end method

.method private registerWifiLatencyLevelObserver()V
    .locals 4

    .line 6861
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia.wifi.latency"

    .line 6862
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLatencyLevelObserver:Landroid/database/ContentObserver;

    .line 6861
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6864
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .line 6348
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6349
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 6350
    .local v0, "dstMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 6351
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .line 6354
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6355
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 6356
    .local v0, "dstMsg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 6357
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 6358
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 6361
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6362
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 6363
    .local v0, "dstMsg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6364
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 6365
    return-void
.end method

.method private reportConnectionAttemptEnd(II)V
    .locals 4
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    .line 3205
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    .line 3206
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionAttemptEnded(I)V

    .line 3207
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    goto :goto_0

    .line 3225
    :cond_0
    goto :goto_0

    .line 3218
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    .line 3220
    nop

    .line 3230
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 3231
    return-void
.end method

.method private reportConnectionAttemptStart(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "targetBSSID"    # Ljava/lang/String;
    .param p3, "roamType"    # I

    .line 3187
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 3188
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 3189
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->reportConnectionEvent(JB)V

    .line 3196
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDiagsConnectionStartMillis:J

    .line 3197
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3196
    const v1, 0x200fc

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 3198
    return-void
.end method

.method private resetRssiInfo()V
    .locals 3

    .line 2875
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 2876
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2877
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNBRssiInfo:Lnubia/net/wifi/NBWifiRssiInfo;

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Lnubia/net/wifi/NBWifiRssiInfo;->setLastRssi(I)V

    .line 2879
    :cond_0
    return-void
.end method

.method private saveNetworkConfigAndSendReply(Landroid/os/Message;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .line 6542
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6543
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, -0x1

    const v2, 0x25008

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 6544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAVE_NETWORK with null configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 6545
    invoke-virtual {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " my state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6546
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6544
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6547
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6548
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6549
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 6551
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    .line 6552
    invoke-virtual {v5, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v5

    .line 6553
    .local v5, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v5}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_1

    .line 6554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAVE_NETWORK adding/updating config="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6555
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6556
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6557
    return-object v5

    .line 6559
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 6560
    invoke-virtual {v5}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    iget v8, p1, Landroid/os/Message;->sendingUid:I

    .line 6559
    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-result v6

    if-nez v6, :cond_2

    .line 6561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAVE_NETWORK enabling config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6562
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6563
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 6564
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 6566
    :cond_2
    invoke-direct {p0, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    .line 6567
    const v1, 0x25009

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 6568
    return-object v5
.end method

.method private sendConnectedState()V
    .locals 4

    .line 5672
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5673
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->shouldEvaluateWhetherToSendExplicitlySelected(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5674
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 5675
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v1

    .line 5676
    .local v1, "prompt":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 5677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network selected by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " prompt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5679
    :cond_0
    if-eqz v1, :cond_2

    .line 5683
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 5684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explictlySelected acceptUnvalidated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5686
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v2, :cond_2

    .line 5687
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->explicitlySelected(Z)V

    .line 5692
    .end local v1    # "prompt":Z
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 5693
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 5694
    return-void
.end method

.method private sendDppEventBroadcast(ILandroid/net/wifi/WifiDppConfig$DppResult;)V
    .locals 4
    .param p1, "dppEventType"    # I
    .param p2, "result"    # Landroid/net/wifi/WifiDppConfig$DppResult;

    .line 2913
    new-instance v0, Landroid/net/wifi/WifiDppConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiDppConfig;-><init>()V

    .line 2914
    .local v0, "config":Landroid/net/wifi/WifiDppConfig;
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiDppConfig;->setDppResult(Landroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2915
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.qualcomm.qti.net.wifi.DPP_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2916
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2917
    const-string v2, "dppEventType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2918
    const-string v2, "dppEventData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2919
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2920
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .line 2893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2894
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2895
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2896
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2897
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .line 2883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2884
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2885
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 2886
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 2887
    const-string v2, "networkInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2889
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2890
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 3
    .param p1, "newRssi"    # I

    .line 2848
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    goto :goto_0

    .line 2849
    :catch_0
    move-exception v0

    .line 2852
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2853
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2854
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2855
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2856
    return-void
.end method

.method private sendRssiChangeBroadcast(Lnubia/net/wifi/NBWifiRssiInfo;)V
    .locals 3
    .param p1, "newRssiInfo"    # Lnubia/net/wifi/NBWifiRssiInfo;

    .line 2863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Lnubia/net/wifi/NBWifiRssiInfo;->getNewRssi()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2866
    goto :goto_0

    .line 2864
    :catch_0
    move-exception v0

    .line 2867
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.NUBIA_RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2868
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2869
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2870
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2871
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->resetRssiInfo()V

    .line 2872
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 2906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2907
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2908
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2909
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2910
    return-void
.end method

.method private sendWifiConnectBroadcast(ILandroid/os/Message;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 5024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.NUBIA_WIFI_CONNECT_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5025
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SSID"

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5026
    const-string v1, "networkId"

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2}, Lcom/android/server/wifi/ExtendedWifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5027
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5028
    const-string v1, "arg1"

    iget v2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5029
    const-string v1, "arg2"

    iget v2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5030
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5031
    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 2928
    const/4 v0, 0x0

    .line 2930
    .local v0, "hidden":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    if-eqz v1, :cond_0

    .line 2943
    const/4 v0, 0x1

    .line 2945
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2947
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2946
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2950
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2951
    return v1

    .line 2954
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_4

    .line 2955
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_3

    .line 2957
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2959
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 2960
    return v2

    .line 2962
    :cond_4
    return v1
.end method

.method private setRandomMacOui()Z
    .locals 6

    .line 1272
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, "oui":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    const-string v0, "DA-A1-19"

    .line 1276
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1277
    .local v1, "ouiParts":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 1278
    .local v2, "ouiBytes":[B
    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1279
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1280
    const/4 v3, 0x2

    aget-object v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting OUI to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1283
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui(Ljava/lang/String;[B)Z

    move-result v3

    return v3
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .line 2658
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2659
    :cond_0
    if-eqz p2, :cond_1

    .line 2660
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0

    .line 2662
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2664
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2665
    :cond_2
    return-void
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .line 2628
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " -want "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2630
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " stack:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2629
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2638
    :cond_0
    if-eqz p2, :cond_2

    .line 2639
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v5, p1

    and-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2641
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2642
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSuspendOptimizationsNative do it "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " stack:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2643
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2649
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 2652
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2653
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Ljava/lang/String;Z)Z

    .line 2655
    :cond_3
    :goto_0
    return-void
.end method

.method private setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 401
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 405
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 406
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 407
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force BSSID to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "due to config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 411
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTargetBssid set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x1

    return v0

    .line 402
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private setupClientMode()V
    .locals 6

    .line 4025
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupClientMode() ifacename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateTracker;->updateState(I)V

    .line 4028
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4029
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4030
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    .line 4032
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v5

    .line 4031
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/WifiInjector;->makeWifiConnectivityManager(Landroid/net/wifi/WifiInfo;Z)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    .line 4033
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->setUntrustedConnectionAllowed(Z)V

    .line 4034
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    .line 4035
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->enableVerboseLogging(I)V

    .line 4036
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4039
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateDataInterface()V

    .line 4040
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerForWifiMonitorEvents()V

    .line 4041
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    .line 4042
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantLogLevel()V

    .line 4045
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    const v3, 0x2006f

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 4047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 4048
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4049
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4050
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 4052
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->migrateFromLegacyStore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4053
    const-string v3, "WifiStateMachine"

    const-string v4, "Failed to migrate from legacy config store"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 4058
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Ljava/lang/String;Z)Z

    .line 4060
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z

    .line 4061
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    .line 4063
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/BaseWifiDiagnostics;->startLogging(Z)V

    .line 4064
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 4065
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 4072
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Ljava/lang/String;Z)Z

    .line 4075
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 4081
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets(Ljava/lang/String;)Z

    .line 4082
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets(Ljava/lang/String;)Z

    .line 4085
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4086
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4085
    move v4, v2

    goto :goto_2

    .line 4086
    :cond_3
    nop

    .line 4085
    move v4, v1

    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Ljava/lang/String;Z)Z

    .line 4088
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 4090
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_4

    .line 4091
    const v0, 0x20083

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(I)Z

    .line 4095
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wifi/WifiNative;->enableStaAutoReconnect(Ljava/lang/String;Z)Z

    .line 4097
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setConcurrencyPriority(Z)Z

    .line 4098
    return-void
.end method

.method private stopClientMode()V
    .locals 4

    .line 4105
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0}, Lcom/android/server/wifi/BaseWifiDiagnostics;->stopLogging()V

    .line 4107
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_0

    .line 4110
    const v0, 0x20084

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(I)Z

    .line 4113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 4114
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 4116
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    if-eqz v2, :cond_1

    .line 4117
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v2}, Landroid/net/ip/IpClient;->shutdown()V

    .line 4120
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v2}, Landroid/net/ip/IpClient;->awaitShutdown()V

    .line 4122
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 4123
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 4124
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    .line 4125
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 4126
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 4128
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 4129
    return-void
.end method

.method private stopIpClient()V
    .locals 1

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 1176
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->stop()V

    .line 1177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsIpClientStarted:Z

    .line 1178
    return-void
.end method

.method private syncGetScanResultsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 3017
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3018
    .local v0, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 3020
    .local v3, "result":Lcom/android/server/wifi/ScanDetail;
    new-instance v4, Landroid/net/wifi/ScanResult;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3021
    .end local v3    # "result":Lcom/android/server/wifi/ScanDetail;
    goto :goto_0

    .line 3022
    :cond_0
    return-object v1
.end method

.method static unexpectedDisconnectedReason(I)Z
    .locals 1
    .param p0, "reason"    # I

    .line 6476
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

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

.method private updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 5039
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-nez v0, :cond_0

    .line 5040
    return-void

    .line 5043
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5045
    .local v0, "result":Landroid/net/NetworkCapabilities;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/16 v2, 0xe

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5046
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 5048
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5051
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    const/16 v2, 0xb

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-static {p1, v1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5052
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 5054
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5057
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_3

    .line 5058
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    goto :goto_2

    .line 5060
    :cond_3
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    .line 5063
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5064
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 5066
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 5069
    :goto_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5070
    return-void
.end method

.method private updateConnectedMacRandomizationSetting()V
    .locals 5

    .line 3567
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "wifi_connected_mac_randomization_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3569
    .local v0, "macRandomizationFlag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3570
    .local v1, "macRandomizationEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3571
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->setEnableConnectedMacRandomization(Z)V

    .line 3572
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiMetrics;->setIsMacRandomizationOn(Z)V

    .line 3573
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableConnectedMacRandomization Setting changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    return-void
.end method

.method private updateDataInterface()V
    .locals 5

    .line 1252
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFstDataInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "dataInterfaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1256
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 1258
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->shutdown()V

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)Landroid/net/ip/IpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    .line 1264
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ip/IpClient;->setMulticastFilter(Z)V

    .line 1266
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    if-eqz v1, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->setInterface(Ljava/lang/String;)V

    .line 1269
    :cond_2
    return-void
.end method

.method private updateDefaultRouteMacAddress(I)Ljava/lang/String;
    .locals 9
    .param p1, "timeout"    # I

    .line 2805
    const/4 v0, 0x0

    .line 2806
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2807
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2808
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .line 2809
    .local v3, "gateway":Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 2810
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_0

    .line 2811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDefaultRouteMacAddress found Ipv4 default :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2811
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2814
    :cond_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2816
    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 2817
    const/4 v4, 0x0

    .line 2818
    .local v4, "reachable":Z
    const/16 v5, -0xbe

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2820
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, p1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    .line 2826
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2827
    if-ne v4, v5, :cond_2

    .line 2829
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_2

    .line 2831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .end local v4    # "reachable":Z
    :goto_1
    const-string v6, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2831
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 2826
    .restart local v4    # "reachable":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2821
    :catch_0
    move-exception v6

    .line 2822
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDefaultRouteMacAddress exception reaching :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2822
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2826
    .end local v6    # "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2827
    if-ne v4, v5, :cond_2

    .line 2829
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_2

    .line 2831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 2826
    :goto_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 2827
    if-ne v4, v5, :cond_1

    .line 2829
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_1

    .line 2831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2831
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_1
    throw v1

    .line 2837
    .end local v4    # "reachable":Z
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 2838
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v4, v5, v0}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkDefaultGwMacAddress(ILjava/lang/String;)Z

    .line 2842
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "gateway":Ljava/net/InetAddress;
    :cond_3
    goto/16 :goto_0

    .line 2843
    :cond_4
    return-object v0
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 2755
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link configuration changed for netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2760
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2761
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_1

    .line 2762
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2765
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_2

    .line 2768
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 2771
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_4

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2773
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperties nid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_3

    .line 2777
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2782
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method


# virtual methods
.method buildDiscoverWithRapidCommitPacket()V
    .locals 10

    .line 3115
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3116
    .local v0, "mDiscoverPacket":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2

    .line 3117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 3118
    .local v1, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3119
    .local v2, "dst":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_0

    .line 3120
    const-string v5, "%02x:"

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3122
    .end local v4    # "i":I
    :cond_0
    const-string v4, "%02x"

    new-array v7, v6, [Ljava/lang/Object;

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3124
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0xc

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 3125
    const-string v7, "%02x"

    new-array v8, v6, [Ljava/lang/Object;

    aget-byte v9, v1, v5

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3127
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3128
    .local v3, "mDiscoverPacketBytes":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->flushAllHlp(Ljava/lang/String;)Z

    .line 3129
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wifi/WifiNative;->addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3131
    .end local v1    # "bytes":[B
    .end local v2    # "dst":Ljava/lang/StringBuilder;
    .end local v3    # "mDiscoverPacketBytes":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public clearANQPCache()V
    .locals 0

    .line 1249
    return-void
.end method

.method public clearTargetBssid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dbg"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 376
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 377
    const/4 v1, 0x0

    return v1

    .line 379
    :cond_0
    const-string v1, "any"

    .line 380
    .local v1, "bssid":Ljava/lang/String;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 381
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 382
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 383
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force BSSID to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "due to config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clearTargetBssid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 389
    :cond_2
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 390
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiNative;->setConfiguredNetworkBSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V
    .locals 0
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "holdoff"    # J
    .param p4, "ess"    # Z

    .line 1685
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .line 1688
    if-eqz p1, :cond_0

    .line 1689
    const v0, 0x20062

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1691
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .line 1697
    const v0, 0x20049

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1698
    return-void
.end method

.method public disconnectCommand(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 1701
    const v0, 0x20049

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1702
    return-void
.end method

.method doNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 5218
    const v0, 0x20094

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5219
    return-void
.end method

.method public dppStopListen(Lcom/android/internal/util/AsyncChannel;)V
    .locals 1
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 6764
    const v0, 0x20132

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 6765
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2084
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2085
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSignalLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastBssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationalMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserWantsSuspendOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiCountryCode;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2098
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    :cond_0
    const-string v0, "mNetworkFactory is not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    if-eqz v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 2107
    :cond_1
    const-string v0, "mUntrustedNetworkFactory is not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wlan Wake Reasons:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2112
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2114
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->dump(Ljava/io/PrintWriter;)V

    .line 2115
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2116
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->captureBugReportData(I)V

    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/BaseWifiDiagnostics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2118
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpClient(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 2122
    :cond_2
    const-string v0, "mWifiConnectivityManager is not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWakeupController()Lcom/android/server/wifi/WakeupController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WakeupController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2125
    return-void
.end method

.method public dumpIpClient(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2077
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpClient:Landroid/net/ip/IpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ip/IpClient;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2080
    :cond_0
    return-void
.end method

.method public enableRssiPolling(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1969
    const/4 v0, 0x0

    const v1, 0x20052

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1970
    return-void
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2012
    move v0, p2

    .line 2013
    .local v0, "enabler":I
    const v1, 0x2005c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2014
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 1211
    if-lez p1, :cond_1

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    .line 1213
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    .line 1213
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    goto :goto_1

    .line 1216
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    .line 1217
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1219
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->configureVerboseHalLogging(Z)V

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantLogLevel()V

    .line 1221
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiCountryCode;->enableVerboseLogging(I)V

    .line 1222
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScoreReport;->enableVerboseLogging(Z)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->startLogging(Z)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    if-eqz v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->wifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enableVerboseLogging(I)V

    .line 1226
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor;->enableVerboseLogging(I)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->enableVerboseLogging(I)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->enableVerboseLogging(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->enableVerboseLogging(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->enableVerboseLogging(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_3

    .line 1232
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->enableVerboseLogging(I)V

    .line 1233
    :cond_3
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 6468
    const v0, 0x200a6

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 6469
    return-void
.end method

.method public failureDetected(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 3595
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getSelfRecovery()Lcom/android/server/wifi/SelfRecovery;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SelfRecovery;->trigger(I)V

    .line 3596
    return-void
.end method

.method getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1803
    const v0, 0x200a8

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1805
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1806
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1807
    return-object v1
.end method

.method public getCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "capaType"    # Ljava/lang/String;

    .line 3177
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    .line 4184
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .line 1996
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_0

    .line 1997
    new-instance v0, Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->netId:I

    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    return-object v0

    .line 1999
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getCurrentScanResult()Landroid/net/wifi/ScanResult;
    .locals 5

    .line 4165
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4166
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4167
    return-object v1

    .line 4169
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v2}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 4170
    .local v2, "BSSID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 4171
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 4173
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4174
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v3

    .line 4176
    .local v3, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v3, :cond_2

    .line 4177
    return-object v1

    .line 4180
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/server/wifi/ScanDetailCache;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 4158
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4159
    const/4 v0, 0x0

    return-object v0

    .line 4161
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedTimeMilli()J
    .locals 4

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 1338
    .local v0, "now_ms":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    sub-long v2, v0, v2

    return-wide v2

    .line 1340
    .end local v0    # "now_ms":J
    :cond_0
    return-wide v2
.end method

.method public getIpReachabilityDisconnectEnabled()Z
    .locals 1

    .line 6645
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2175
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v1, :cond_0

    .line 2176
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    if-eqz v1, :cond_1

    .line 2179
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    if-lez v1, :cond_2

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    const/16 v2, 0x3f2

    if-eq v1, v2, :cond_2

    .line 2183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    :cond_2
    const-string v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getUptimeSinceBootMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2186
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2187
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 2573
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2437
    :sswitch_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_3

    .line 2442
    const-string v1, " OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2443
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    .line 2444
    const-string v1, " FAIL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_28

    .line 2447
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2428
    :sswitch_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    const-string v1, " txpkts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccess:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2433
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->txBad:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2434
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2435
    goto/16 :goto_3

    .line 2199
    :sswitch_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2204
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_28

    .line 2205
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const-string v2, " nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2207
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_5

    .line 2208
    const-string v2, " hidden"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    :cond_5
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "*"

    .line 2211
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2212
    const-string v2, " hasPSK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2214
    :cond_6
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_7

    .line 2215
    const-string v2, " ephemeral"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    :cond_7
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_8

    .line 2218
    const-string v2, " selfAdded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    :cond_8
    const-string v2, " cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2221
    const-string v2, " suid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2225
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2230
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_28

    .line 2231
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    const-string v2, " nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2233
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_9

    .line 2234
    const-string v2, " hidden"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    :cond_9
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2237
    const-string v2, " hasPSK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :cond_a
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_b

    .line 2240
    const-string v2, " ephemeral"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    :cond_b
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_c

    .line 2243
    const-string v2, " selfAdded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    :cond_c
    const-string v2, " cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2246
    const-string v2, " suid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2247
    nop

    .line 2248
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 2249
    .local v2, "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string v3, " ajst="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    .line 2249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    .end local v2    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    goto/16 :goto_3

    .line 2564
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2566
    goto/16 :goto_3

    .line 2254
    :sswitch_5
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timedOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2259
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2260
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " blacklist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    goto/16 :goto_3

    .line 2189
    .end local v1    # "bssid":Ljava/lang/String;
    :sswitch_6
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 2194
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v1, :cond_28

    .line 2195
    invoke-virtual {v1}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2297
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 2298
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    :cond_e
    const-string v1, " nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2301
    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2302
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2303
    const-string v1, " lastbssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getFrequency()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 2306
    const-string v1, " freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2307
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2267
    :sswitch_8
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    const-string v1, " nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2274
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_10

    .line 2275
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    :cond_10
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetworkConfigKey()Ljava/lang/String;

    move-result-object v2

    .line 2278
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_28

    .line 2279
    const-string v3, " last="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2452
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "key":Ljava/lang/String;
    :sswitch_9
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2457
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2458
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 2459
    .local v2, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 2460
    .local v3, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v2, :cond_11

    .line 2461
    const-string v4, " st="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2463
    :cond_11
    if-eqz v3, :cond_12

    .line 2464
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2466
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "state":Landroid/net/NetworkInfo$State;
    .end local v3    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    :cond_12
    goto/16 :goto_3

    .line 2568
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2569
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2540
    :sswitch_b
    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    goto/16 :goto_3

    .line 2508
    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2509
    goto/16 :goto_3

    .line 2505
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    goto/16 :goto_3

    .line 2554
    :sswitch_e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_13

    .line 2556
    const-string v1, "DHCP_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2557
    :cond_13
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x20010

    if-ne v1, v2, :cond_14

    .line 2558
    const-string v1, "STATIC_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2560
    :cond_14
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    goto/16 :goto_3

    .line 2544
    :sswitch_f
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_15

    .line 2546
    const-string v1, "DHCP_OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2547
    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x2000f

    if-ne v1, v2, :cond_16

    .line 2548
    const-string v1, "STATIC_OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2550
    :cond_16
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    goto/16 :goto_3

    .line 2534
    :sswitch_10
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    const-string v1, " thresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    goto/16 :goto_3

    .line 2500
    :sswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2501
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2357
    :sswitch_12
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2362
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_18

    .line 2363
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2364
    .local v2, "now":Ljava/lang/Long;
    const-string v3, " bssid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    const-string v3, " rssi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2366
    const-string v3, " freq="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2367
    iget-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_17

    iget-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_17

    .line 2368
    const-string v3, " seen="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v1, Landroid/net/wifi/ScanResult;->seen:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2371
    :cond_17
    const-string v3, " !seen="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2374
    .end local v2    # "now":Ljava/lang/Long;
    :cond_18
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2375
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    :cond_19
    const-string v2, " roam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    const-string v2, " fail count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    goto/16 :goto_3

    .line 2339
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_13
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2343
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2344
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1a

    .line 2345
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 2348
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2350
    :cond_1b
    const-string v2, " roam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2351
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2352
    if-eqz v1, :cond_28

    .line 2353
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2284
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_14
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1c

    .line 2289
    const-string v1, " BSSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 2292
    const-string v1, " Target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2294
    :cond_1d
    const-string v1, " roam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsAutoRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    goto/16 :goto_3

    .line 2490
    :sswitch_15
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2492
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_28

    .line 2495
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2469
    :sswitch_16
    const/4 v1, -0x1

    .line 2470
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2471
    .local v2, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1e

    .line 2472
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    .line 2475
    :cond_1e
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    const-string v5, " failures: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2481
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "wifi_max_dhcp_retry_count"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 2485
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v5}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    :cond_1f
    const-string v5, " bcn=%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    goto/16 :goto_3

    .line 2525
    .end local v1    # "count":I
    .end local v2    # "c":Landroid/net/wifi/WifiConfiguration;
    :sswitch_17
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisableP2pWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2530
    goto/16 :goto_3

    .line 2518
    :sswitch_18
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2523
    goto/16 :goto_3

    .line 2511
    :sswitch_19
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2516
    goto/16 :goto_3

    .line 2313
    :sswitch_1a
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2317
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2318
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2319
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    :cond_20
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2321
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    :cond_21
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2323
    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2324
    const-string v1, " sc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget v1, v1, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2325
    const-string v1, " link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v1}, Lcom/android/server/wifi/ExtendedWifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2326
    const-string v1, " tx=%.1f,"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    const-string v1, " %.1f,"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    const-string v1, " %.1f "

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    const-string v1, " rx=%.1f"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    const-string v1, " bcn=%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v1

    .line 2332
    .local v1, "report":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 2333
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    :cond_22
    const-string v2, " score=%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget v5, v5, Lcom/android/server/wifi/ExtendedWifiInfo;->score:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    goto/16 :goto_3

    .line 2421
    .end local v1    # "report":Ljava/lang/String;
    :sswitch_1b
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2426
    goto/16 :goto_3

    .line 2407
    :sswitch_1c
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2411
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetworkConfigKey()Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 2413
    const-string v2, " last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    :cond_23
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2416
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_28

    if-eqz v1, :cond_24

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2417
    :cond_24
    const-string v3, " target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2381
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1d
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 2386
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2387
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    const-string v2, " prio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2389
    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2390
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_25

    .line 2391
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2393
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2394
    .local v2, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_27

    .line 2395
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2396
    const-string v3, " is current"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2398
    :cond_26
    const-string v3, " current="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    const-string v3, " prio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2400
    const-string v3, " status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2403
    .end local v2    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_27
    :goto_2
    nop

    .line 2580
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_28
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_1d
        0x20036 -> :sswitch_1c
        0x2003b -> :sswitch_1b
        0x20053 -> :sswitch_1a
        0x2005e -> :sswitch_19
        0x20060 -> :sswitch_18
        0x20070 -> :sswitch_17
        0x2008b -> :sswitch_16
        0x2008c -> :sswitch_15
        0x2008d -> :sswitch_14
        0x2008f -> :sswitch_13
        0x20090 -> :sswitch_1a
        0x20091 -> :sswitch_12
        0x20093 -> :sswitch_14
        0x20095 -> :sswitch_11
        0x200a2 -> :sswitch_10
        0x200a3 -> :sswitch_10
        0x200a4 -> :sswitch_10
        0x200c8 -> :sswitch_f
        0x200c9 -> :sswitch_e
        0x200ca -> :sswitch_d
        0x200cb -> :sswitch_c
        0x200cd -> :sswitch_b
        0x20137 -> :sswitch_a
        0x2300b -> :sswitch_9
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_7
        0x24006 -> :sswitch_6
        0x2402b -> :sswitch_5
        0x2403f -> :sswitch_8
        0x24065 -> :sswitch_4
        0x25001 -> :sswitch_13
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_2
        0x25011 -> :sswitch_1c
        0x25014 -> :sswitch_1a
        0x30003 -> :sswitch_1
        0x30004 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getMcastLockManagerFilterController()Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mMcastLockManagerFilterController:Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .line 1329
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method protected getOperationalModeForTest()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1651
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method getPollRssiIntervalMsecs()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    return v0
.end method

.method getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 1192
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1193
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v0, v3}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getScanResultForBssid(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;

    .line 3027
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3029
    .local v0, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 3030
    .local v2, "result":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 3031
    .local v3, "scanRes":Landroid/net/wifi/ScanResult;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScanResults scanRes.BSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3033
    return-object v3

    .line 3034
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    goto :goto_0

    .line 3035
    .end local v3    # "scanRes":Landroid/net/wifi/ScanResult;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    return-object v0
.end method

.method getWifiLinkLayerStats()Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 12

    .line 1409
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1410
    const-string v0, "getWifiLinkLayerStats called without an interface"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1411
    const/4 v0, 0x0

    return-object v0

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 1414
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v0

    .line 1415
    .local v0, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    if-eqz v0, :cond_1

    .line 1416
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1417
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1418
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1419
    iget v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->beacon_rx:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 1420
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/ExtendedWifiInfo;->updatePacketRates(Lcom/android/server/wifi/WifiLinkLayerStats;J)V

    goto :goto_0

    .line 1422
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/FrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v1

    .line 1423
    .local v1, "mTxPkts":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v10

    .line 1424
    .local v10, "mRxPkts":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    move-wide v4, v1

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi/ExtendedWifiInfo;->updatePacketRates(JJJ)V

    .line 1426
    .end local v1    # "mTxPkts":J
    .end local v10    # "mRxPkts":J
    :goto_0
    return-object v0
.end method

.method public getWifiScoreReport()Lcom/android/server/wifi/WifiScoreReport;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    return-object v0
.end method

.method handle3GAuthRequest(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;)V
    .locals 6
    .param p1, "requestData"    # Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;

    .line 6422
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6427
    :cond_0
    const-string v0, "id does not match targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6428
    return-void

    .line 6425
    :cond_1
    :goto_0
    const-string v0, "id matches targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6431
    nop

    .line 6432
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/TelephonyUtil;->get3GAuthResponse(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;Landroid/telephony/TelephonyManager;)Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;

    move-result-object v0

    .line 6433
    .local v0, "response":Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;
    if-eqz v0, :cond_2

    .line 6434
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    iget-object v4, v0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;->response:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 6437
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->umtsAuthFailedResponse(Ljava/lang/String;I)Z

    .line 6439
    :goto_1
    return-void
.end method

.method handleGsmAuthRequest(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;)V
    .locals 5
    .param p1, "requestData"    # Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;

    .line 6400
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6405
    :cond_0
    const-string v0, "id does not match targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6406
    return-void

    .line 6403
    :cond_1
    :goto_0
    const-string v0, "id matches targetWifiConfiguration"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6409
    iget-object v0, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 6410
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/util/TelephonyUtil;->getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 6411
    .local v0, "response":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 6412
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(Ljava/lang/String;I)Z

    goto :goto_1

    .line 6414
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplicant Response -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 6415
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    const-string v4, "GSM-AUTH"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 6419
    :goto_1
    return-void
.end method

.method public handleIfaceDestroyed()V
    .locals 0

    .line 1610
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    .line 1611
    return-void
.end method

.method handlePostDhcpSetup()V
    .locals 3

    .line 3165
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3166
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 3168
    const v0, 0x2300f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->p2pSendMessage(II)Z

    .line 3171
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(Ljava/lang/String;I)Z

    .line 3173
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 4

    .line 3087
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(Ljava/lang/String;I)Z

    .line 3094
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3095
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 3098
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats()Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 3100
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x30006

    if-eqz v0, :cond_0

    .line 3102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3103
    .local v0, "msg":Landroid/os/Message;
    const v3, 0x2300f

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3104
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3105
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3106
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3107
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3108
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3110
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3112
    :goto_0
    return-void
.end method

.method handlePreFilsDhcpSetup()V
    .locals 3

    .line 3142
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x30006

    if-eqz v0, :cond_0

    .line 3144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3145
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x2300f

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3146
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3147
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3148
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3149
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3150
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3152
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3154
    :goto_0
    return-void
.end method

.method public handleUserStop(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2136
    const v0, 0x200cf

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2137
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2128
    const v0, 0x200cd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2129
    return-void
.end method

.method public handleUserUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2132
    const v0, 0x200ce

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2133
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectedMacRandomizationEnabled()Z
    .locals 1

    .line 3584
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableConnectedMacRandomization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_1

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilsState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1561
    :goto_1
    return v0
.end method

.method public isSupplicantTransientState()Z
    .locals 4

    .line 1566
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 1567
    .local v0, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1577
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 1578
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant is under steady state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1572
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_3

    .line 1573
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant is under transient state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;

    .line 1672
    const v0, 0x20069

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1673
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1674
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1675
    return v1
.end method

.method maybeRegisterNetworkFactory()V
    .locals 7

    .line 3494
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-nez v0, :cond_0

    .line 3495
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3496
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 3497
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "WIFI"

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    .line 3499
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    .line 3500
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->register()V

    .line 3504
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "WIFI_UT"

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    .line 3506
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->setScoreFilter(I)V

    .line 3507
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->register()V

    .line 3510
    :cond_0
    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    .line 1715
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1716
    return-void
.end method

.method public reconnectCommand(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 1708
    const v0, 0x2004a

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1709
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2154
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x20053

    if-eq v0, v1, :cond_0

    .line 2158
    const/4 v0, 0x1

    return v0

    .line 2156
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method registerConnected()V
    .locals 3

    .line 4132
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4133
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkAfterConnect(I)Z

    .line 4135
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScoreReport;->reset()V

    .line 4138
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4139
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4140
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->onPasspointNetworkConnected(Ljava/lang/String;)V

    .line 4143
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method registerDisconnected()V
    .locals 2

    .line 4146
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4147
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkAfterDisconnect(I)Z

    .line 4149
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->removeAllEphemeralOrPasspointConfiguredNetworks()Z

    .line 4151
    :cond_0
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .line 1723
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1724
    return-void
.end method

.method public removeAppConfigs(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2028
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2029
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2030
    iput p2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2031
    const v1, 0x20061

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2032
    return-void
.end method

.method public removeUserConfigs(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2038
    const v0, 0x20098

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2039
    return-void
.end method

.method reportOnTime()Ljava/lang/String;
    .locals 14

    .line 1389
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 1390
    .local v0, "now":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    sub-int/2addr v3, v4

    .line 1393
    .local v3, "on":I
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1394
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    sub-int/2addr v4, v5

    .line 1395
    .local v4, "tx":I
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iput v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1396
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    sub-int/2addr v5, v6

    .line 1397
    .local v5, "rx":I
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1398
    iget-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    .line 1399
    .local v6, "period":I
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1400
    const-string v7, "[on:%d tx:%d rx:%d period:%d]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x3

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    sub-int/2addr v7, v8

    .line 1403
    .end local v3    # "on":I
    .local v7, "on":I
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1404
    .end local v6    # "period":I
    .local v3, "period":I
    const-string v6, " from screen [on:%d period:%d]"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public declared-synchronized resetSimAuthNetworks(Z)V
    .locals 1
    .param p1, "simPresent"    # Z

    monitor-enter p0

    .line 1988
    const v0, 0x20065

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    monitor-exit p0

    return-void

    .line 1987
    .end local p1    # "simPresent":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiStateMachine;
    throw p1
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 2020
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2021
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1980
    const/4 v0, 0x0

    const v1, 0x2004d

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1981
    return-void
.end method

.method public setIpReachabilityDisconnectEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 6652
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityDisconnectEnabled:Z

    .line 6653
    return-void
.end method

.method public setLatencyLevel(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 2005
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->setLatencyLevel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setOperationalMode(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "ifaceName"    # Ljava/lang/String;

    .line 1617
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for iface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1620
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mModeChange:Z

    .line 1621
    if-eq p1, v0, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1626
    :cond_1
    if-eqz p2, :cond_2

    .line 1627
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1628
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1630
    :cond_2
    const-string v0, "WifiStateMachine"

    const-string v1, "supposed to enter connect mode, but iface is null -> DefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1636
    :goto_0
    const v0, 0x20048

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V

    .line 1637
    return-void
.end method

.method setPollRssiIntervalMsecs(I)V
    .locals 0
    .param p1, "newPollIntervalMsecs"    # I

    .line 367
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    .line 368
    return-void
.end method

.method setPowerSaveForFilsDhcp()V
    .locals 3

    .line 3157
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(Ljava/lang/String;I)Z

    .line 3159
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3160
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Ljava/lang/String;Z)V

    .line 3161
    return-void
.end method

.method setSupplicantLogLevel()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Z)V

    .line 1203
    return-void
.end method

.method public setTrafficPoller(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 2
    .param p1, "trafficPoller"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 1185
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 1186
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->setInterface(Ljava/lang/String;)V

    .line 1189
    :cond_0
    return-void
.end method

.method public setWifiDiagnostics(Lcom/android/server/wifi/BaseWifiDiagnostics;)V
    .locals 0
    .param p1, "WifiDiagnostics"    # Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 1181
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 1182
    return-void
.end method

.method public setWifiStateForApiCalls(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 1505
    packed-switch p1, :pswitch_data_0

    .line 1517
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempted to set an invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1511
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1512
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting wifi state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1515
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldEvaluateWhetherToSendExplicitlySelected(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5659
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5660
    const-string v1, "WifiStateMachine"

    const-string v2, "Current WifiConfiguration is null, but IP provisioning just succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    return v0

    .line 5663
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 5664
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetwork()I

    move-result v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 5665
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 5664
    :cond_1
    return v0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .line 3931
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3932
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3933
    return-object v0

    .line 3935
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4009
    :sswitch_0
    const-string v0, "RSSI_PKTCNT_FETCH"

    .line 4010
    goto :goto_0

    .line 3946
    :sswitch_1
    const-string v0, "WifiManager.DISABLE_NETWORK"

    .line 3947
    goto :goto_0

    .line 3952
    :sswitch_2
    const-string v0, "SAVE_NETWORK"

    .line 3953
    goto :goto_0

    .line 3955
    :sswitch_3
    const-string v0, "FORGET_NETWORK"

    .line 3956
    goto :goto_0

    .line 3949
    :sswitch_4
    const-string v0, "CONNECT_NETWORK"

    .line 3950
    goto :goto_0

    .line 4012
    :sswitch_5
    const-string v0, "WifiMonitor.DPP_EVENT"

    .line 4013
    goto :goto_0

    .line 3970
    :sswitch_6
    const-string v0, "FILS_NETWORK_CONNECTION_EVENT"

    .line 3971
    goto :goto_0

    .line 3988
    :sswitch_7
    const-string v0, "WifiMonitor.HS20_REMEDIATION_EVENT"

    .line 3989
    goto :goto_0

    .line 3982
    :sswitch_8
    const-string v0, "WifiMonitor.RX_HS20_ANQP_ICON_EVENT"

    .line 3983
    goto :goto_0

    .line 3985
    :sswitch_9
    const-string v0, "WifiMonitor.GAS_QUERY_DONE_EVENT"

    .line 3986
    goto :goto_0

    .line 3991
    :sswitch_a
    const-string v0, "WifiMonitor.GAS_QUERY_START_EVENT"

    .line 3992
    goto :goto_0

    .line 3979
    :sswitch_b
    const-string v0, "WifiMonitor.ANQP_DONE_EVENT"

    .line 3980
    goto :goto_0

    .line 3976
    :sswitch_c
    const-string v0, "ASSOCIATION_REJECTION_EVENT"

    .line 3977
    goto :goto_0

    .line 3964
    :sswitch_d
    const-string v0, "SUP_REQUEST_IDENTITY"

    .line 3965
    goto :goto_0

    .line 3961
    :sswitch_e
    const-string v0, "AUTHENTICATION_FAILURE_EVENT"

    .line 3962
    goto :goto_0

    .line 3958
    :sswitch_f
    const-string v0, "SUPPLICANT_STATE_CHANGE_EVENT"

    .line 3959
    goto :goto_0

    .line 3973
    :sswitch_10
    const-string v0, "NETWORK_DISCONNECTION_EVENT"

    .line 3974
    goto :goto_0

    .line 3967
    :sswitch_11
    const-string v0, "NETWORK_CONNECTION_EVENT"

    .line 3968
    goto :goto_0

    .line 4006
    :sswitch_12
    const-string v0, "P2P.BLOCK_DISCOVERY"

    .line 4007
    goto :goto_0

    .line 4003
    :sswitch_13
    const-string v0, "P2P.SET_MIRACAST_MODE"

    .line 4004
    goto :goto_0

    .line 4000
    :sswitch_14
    const-string v0, "P2P.DISCONNECT_WIFI_RESPONSE"

    .line 4001
    goto :goto_0

    .line 3943
    :sswitch_15
    const-string v0, "WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST"

    .line 3944
    goto :goto_0

    .line 3997
    :sswitch_16
    const-string v0, "P2P_CONNECTION_CHANGED"

    .line 3998
    goto :goto_0

    .line 3994
    :sswitch_17
    const-string v0, "GROUP_CREATING_TIMED_OUT"

    .line 3995
    goto :goto_0

    .line 3940
    :sswitch_18
    const-string v0, "AsyncChannel.CMD_CHANNEL_DISCONNECTED"

    .line 3941
    goto :goto_0

    .line 3937
    :sswitch_19
    const-string v0, "AsyncChannel.CMD_CHANNEL_HALF_CONNECTED"

    .line 3938
    nop

    .line 4018
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_19
        0x11004 -> :sswitch_18
        0x23001 -> :sswitch_17
        0x2300b -> :sswitch_16
        0x2300c -> :sswitch_15
        0x2300d -> :sswitch_14
        0x2300e -> :sswitch_13
        0x2300f -> :sswitch_12
        0x24003 -> :sswitch_11
        0x24004 -> :sswitch_10
        0x24006 -> :sswitch_f
        0x24007 -> :sswitch_e
        0x2400f -> :sswitch_d
        0x2402b -> :sswitch_c
        0x2402c -> :sswitch_b
        0x24033 -> :sswitch_a
        0x24034 -> :sswitch_9
        0x24035 -> :sswitch_8
        0x2403d -> :sswitch_7
        0x2403f -> :sswitch_6
        0x24065 -> :sswitch_5
        0x25001 -> :sswitch_4
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_2
        0x25011 -> :sswitch_1
        0x25014 -> :sswitch_0
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 3927
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startConnectToNetwork(IILjava/lang/String;)V
    .locals 1
    .param p1, "networkId"    # I
    .param p2, "uid"    # I
    .param p3, "bssid"    # Ljava/lang/String;

    .line 6449
    const v0, 0x2008f

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 6450
    return-void
.end method

.method public startRoamToNetwork(ILandroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 6459
    const v0, 0x20091

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 6460
    return-void
.end method

.method startRssiMonitoringOffload(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 2
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B
    .param p3, "rssiHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 1490
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method startWifiIPPacketOffload(ILandroid/net/KeepalivePacketData;I)I
    .locals 11
    .param p1, "slot"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalSeconds"    # I

    .line 1455
    const/4 v0, 0x0

    .line 1456
    .local v0, "packet":[B
    const/4 v1, 0x0

    .line 1457
    .local v1, "dstMac":[B
    const/4 v2, 0x0

    move v3, v2

    .line 1460
    .local v3, "proto":I
    :try_start_0
    invoke-virtual {p2}, Landroid/net/KeepalivePacketData;->getPacket()[B

    move-result-object v8
    :try_end_0
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1461
    .end local v0    # "packet":[B
    .local v8, "packet":[B
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->getDstMacForKeepalive(Landroid/net/KeepalivePacketData;)[B

    move-result-object v7
    :try_end_1
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1462
    .end local v1    # "dstMac":[B
    .local v7, "dstMac":[B
    :try_start_2
    invoke-static {p2}, Lcom/android/server/wifi/WifiStateMachine;->getEtherProtoForKeepalive(Landroid/net/KeepalivePacketData;)I

    move-result v9
    :try_end_2
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1465
    .end local v3    # "proto":I
    .local v9, "proto":I
    nop

    .line 1467
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    mul-int/lit16 v10, p3, 0x3e8

    move v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacket(Ljava/lang/String;I[B[BII)I

    move-result v0

    .line 1469
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): hardware error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1472
    const/16 v1, -0x1f

    return v1

    .line 1474
    :cond_0
    return v2

    .line 1463
    .end local v0    # "ret":I
    .end local v9    # "proto":I
    .restart local v3    # "proto":I
    :catch_0
    move-exception v0

    move-object v1, v7

    goto :goto_0

    .end local v7    # "dstMac":[B
    .restart local v1    # "dstMac":[B
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v8    # "packet":[B
    .local v0, "packet":[B
    :catch_2
    move-exception v2

    move-object v8, v0

    move-object v0, v2

    .line 1464
    .local v0, "e":Landroid/net/KeepalivePacketData$InvalidPacketException;
    .restart local v8    # "packet":[B
    :goto_0
    iget v2, v0, Landroid/net/KeepalivePacketData$InvalidPacketException;->error:I

    return v2
.end method

.method stopRssiMonitoringOffload()I
    .locals 2

    .line 1494
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method stopWifiIPPacketOffload(I)I
    .locals 3
    .param p1, "slot"    # I

    .line 1479
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacket(Ljava/lang/String;I)I

    move-result v0

    .line 1480
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): hardware error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1482
    const/16 v1, -0x1f

    return v1

    .line 1484
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1732
    const v0, 0x20034

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1733
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1734
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1735
    return v1
.end method

.method public syncAddOrUpdateNetwork2(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1761
    const v0, 0x200dd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1762
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1763
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1764
    return v1
.end method

.method public syncAddOrUpdatePasspointConfig(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p3, "uid"    # I

    .line 1835
    const/4 v0, 0x0

    const v1, 0x2006a

    invoke-virtual {p1, v1, p3, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1837
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    nop

    .line 1838
    .local v0, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1839
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .line 1962
    const v0, 0x25011

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 1963
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x25012

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1964
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1965
    return v1
.end method

.method public syncDppAddBootstrapQrCode(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "uri"    # Ljava/lang/String;

    .line 6677
    const/4 v0, 0x0

    const v1, 0x2012e

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6679
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 6680
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6681
    return v1
.end method

.method public syncDppBootstrapGenerate(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 6694
    const/4 v0, 0x0

    const v1, 0x2012d

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6696
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 6697
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6698
    return v1
.end method

.method public syncDppBootstrapRemove(Lcom/android/internal/util/AsyncChannel;I)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bootstrap_id"    # I

    .line 6726
    const v0, 0x2012f

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 6728
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 6729
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6730
    return v1
.end method

.method public syncDppConfiguratorAdd(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "curve"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "expiry"    # I

    .line 6779
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6780
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "curve"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6781
    const-string v1, "key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6782
    const v1, 0x20133

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6784
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 6785
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 6786
    return v2
.end method

.method public syncDppConfiguratorGetKey(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "id"    # I

    .line 6829
    nop

    .line 6830
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6829
    const/4 v1, 0x0

    const v2, 0x20136

    invoke-virtual {p1, v2, v1, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6831
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 6832
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6833
    return-object v1
.end method

.method public syncDppConfiguratorRemove(Lcom/android/internal/util/AsyncChannel;I)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config_id"    # I

    .line 6798
    const v0, 0x20134

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 6799
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 6800
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6801
    return v1
.end method

.method public syncDppGetUri(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bootstrap_id"    # I

    .line 6710
    const v0, 0x20130

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 6712
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 6713
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6714
    return-object v1
.end method

.method public syncDppListen(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;IZZ)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "dpp_role"    # I
    .param p4, "qr_mutual"    # Z
    .param p5, "netrole_ap"    # Z

    .line 6748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6749
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "freq"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6750
    const-string v1, "dppRole"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6751
    const-string v1, "mutual"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6752
    const-string v1, "netRoleAp"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6753
    const/4 v1, 0x0

    const v2, 0x20131

    invoke-virtual {p1, v2, v1, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6755
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 6756
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 6757
    return v2
.end method

.method public syncDppStartAuth(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 6813
    const/4 v0, 0x0

    const v1, 0x20135

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6815
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 6816
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6817
    return v1
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .line 1948
    nop

    .line 1949
    nop

    .line 1948
    const v0, 0x20036

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v0

    .line 1950
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1951
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1952
    return v1
.end method

.method public syncGetConfigInformation(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1748
    const v0, 0x200dc

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 1749
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1750
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1751
    return-object v1
.end method

.method public syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1776
    const v0, 0x2003b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 1777
    .local v0, "resultMsg":Landroid/os/Message;
    if-nez v0, :cond_0

    .line 1778
    const/4 v1, 0x0

    return-object v1

    .line 1780
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1781
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1782
    return-object v1
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .line 1600
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_0
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    monitor-exit v0

    return-object v1

    .line 1602
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1922
    const v0, 0x2003f

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1923
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 1924
    .local v1, "result":Lcom/android/server/wifi/WifiLinkLayerStats;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1925
    return-object v1
.end method

.method public syncGetMatchingOsuProviders(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation

    .line 1819
    nop

    .line 1820
    const v0, 0x2006d

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1821
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1822
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1823
    return-object v1
.end method

.method public syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1795
    const v0, 0x20063

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1796
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1797
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1798
    return-object v1
.end method

.method public syncGetPasspointConfigs(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 1864
    const v0, 0x2006c

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1865
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1866
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1867
    return-object v1
.end method

.method public syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 2
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1787
    const v0, 0x2003e

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1789
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1790
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1791
    return-object v1
.end method

.method public syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1896
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupportedFeatureSet:I

    if-eqz v0, :cond_0

    .line 1897
    const-string v0, "WifiStateMachine"

    const-string v1, "Have Got Supported Features ,so provde by framework"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupportedFeatureSet:I

    return v0

    .line 1901
    :cond_0
    const v0, 0x2003d

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1902
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 1903
    .local v1, "supportedFeatureSet":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1905
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1907
    .local v2, "checkRtt":Z
    if-nez v2, :cond_1

    .line 1908
    and-int/lit16 v1, v1, -0x181

    .line 1913
    :cond_1
    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupportedFeatureSet:I

    .line 1915
    return v1
.end method

.method public syncGetWifiState()I
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1547
    const-string v0, "[invalid state]"

    return-object v0

    .line 1545
    :pswitch_0
    const-string v0, "unknown state"

    return-object v0

    .line 1543
    :pswitch_1
    const-string v0, "enabled"

    return-object v0

    .line 1541
    :pswitch_2
    const-string v0, "enabling"

    return-object v0

    .line 1539
    :pswitch_3
    const-string v0, "disabled"

    return-object v0

    .line 1537
    :pswitch_4
    const-string v0, "disabling"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncInitialize(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 5
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 6661
    const v0, 0x20087

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 6662
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6663
    .local v1, "result":Z
    :goto_0
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=qcdbg= syncInitialize() result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6664
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6665
    return v1
.end method

.method public syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bssid"    # J
    .param p4, "fileName"    # Ljava/lang/String;

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1663
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BSSID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1664
    const-string v1, "FILENAME"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const v1, 0x20068

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1666
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1667
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1668
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .line 1934
    const v0, 0x20035

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 1935
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1936
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1937
    return v1
.end method

.method public syncRemovePasspointConfig(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;

    .line 1850
    const v0, 0x2006b

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1852
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1853
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1854
    return v1
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1591
    new-instance v0, Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Lcom/android/server/wifi/ExtendedWifiInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 1592
    .local v0, "result":Landroid/net/wifi/WifiInfo;
    return-object v0
.end method

.method public syncStartSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;Lcom/android/internal/util/AsyncChannel;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p3, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;
    .param p4, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .line 1879
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1880
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x200fe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1881
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1882
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1883
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "OsuProvider"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1884
    invoke-virtual {p4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 1885
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1886
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1887
    return v2
.end method

.method public takeBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bugTitle"    # Ljava/lang/String;
    .param p2, "bugDetail"    # Ljava/lang/String;

    .line 1643
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/BaseWifiDiagnostics;->takeBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    return-void
.end method

.method unwantedNetwork(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 5214
    const v0, 0x20090

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5215
    return-void
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .line 2042
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v0

    .line 2044
    if-eqz p1, :cond_0

    .line 2045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2073
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2071
    :catch_0
    move-exception v1

    goto :goto_2

    .line 2047
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v1, :cond_2

    .line 2048
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_1

    .line 2051
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2052
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2054
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_1

    .line 2058
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2059
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2060
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_1

    .line 2063
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_3

    .line 2065
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2066
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2067
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 2070
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    goto :goto_3

    .line 2071
    :goto_2
    nop

    .line 2073
    :goto_3
    :try_start_1
    monitor-exit v0

    .line 2074
    return-void

    .line 2073
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCapabilities()V
    .locals 1

    .line 5035
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 5036
    return-void
.end method

.method public updateWifiMetrics()V
    .locals 2

    .line 6494
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateSavedNetworks(Ljava/util/List;)V

    .line 6495
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->updateMetrics()V

    .line 6496
    return-void
.end method
