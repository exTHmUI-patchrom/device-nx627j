.class public Lcom/android/server/wifi/WifiInjector;
.super Ljava/lang/Object;
.source "WifiInjector.java"


# static fields
.field private static final BOOT_DEFAULT_WIFI_COUNTRY_CODE:Ljava/lang/String; = "ro.boot.wificountrycode"

.field private static final WIFICOND_SERVICE_NAME:Ljava/lang/String; = "wificond"

.field static sWifiInjector:Lcom/android/server/wifi/WifiInjector;


# instance fields
.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

.field private final mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectivityLocalLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private final mHostapdHal:Lcom/android/server/wifi/HostapdHal;

.field private final mIpConfigStore:Lcom/android/server/net/IpConfigStore;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockManager:Lcom/android/server/wifi/WifiLockManager;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mNwManagementService:Landroid/os/INetworkManagementService;

.field private final mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

.field private final mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private final mPasspointNetworkEvaluator:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mRttHandlerThread:Landroid/os/HandlerThread;

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private final mSavedNetworkEvaluator:Lcom/android/server/wifi/SavedNetworkEvaluator;

.field private final mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field private final mScoredNetworkEvaluator:Lcom/android/server/wifi/ScoredNetworkEvaluator;

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private final mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

.field private final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private final mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private final mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

.field private final mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private final mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUseRealLogger:Z

.field private final mWakeupController:Lcom/android/server/wifi/WakeupController;

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiAwareHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

.field private final mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private final mWifiController:Lcom/android/server/wifi/WifiController;

.field private final mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

.field private final mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private final mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

.field private final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private final mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private final mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

.field private final mWifiP2pNative:Lcom/android/server/wifi/p2p/WifiP2pNative;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private final mWifiServiceHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

.field private final mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

.field private final mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

.field private final mWificondControl:Lcom/android/server/wifi/WificondControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 41
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v11, p0

    .line 145
    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v0}, Lcom/android/server/wifi/FrameworkFacade;-><init>()V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 84
    new-instance v0, Lcom/android/server/wifi/BackupManagerProxy;

    invoke-direct {v0}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 104
    new-instance v0, Lcom/android/server/wifi/Clock;

    invoke-direct {v0}, Lcom/android/server/wifi/Clock;-><init>()V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    .line 107
    new-instance v0, Lcom/android/server/wifi/SystemPropertyService;

    invoke-direct {v0}, Lcom/android/server/wifi/SystemPropertyService;-><init>()V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 108
    new-instance v0, Lcom/android/server/wifi/SystemBuildProperties;

    invoke-direct {v0}, Lcom/android/server/wifi/SystemBuildProperties;-><init>()V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 109
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    .line 146
    if-eqz v12, :cond_4

    .line 151
    sget-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    if-nez v0, :cond_3

    .line 156
    sput-object v11, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 158
    iput-object v12, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    .line 159
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/wifi/WifiInjector;->mUseRealLogger:Z

    .line 161
    new-instance v0, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 162
    new-instance v0, Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 163
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkScoreManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 164
    new-instance v0, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 165
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v1, 0x1

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 167
    new-instance v6, Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/util/WifiPermissionsUtil;-><init>(Lcom/android/server/wifi/util/WifiPermissionsWrapper;Landroid/content/Context;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;)V

    iput-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 169
    new-instance v0, Lcom/android/server/wifi/WifiBackupRestore;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiBackupRestore;-><init>(Lcom/android/server/wifi/util/WifiPermissionsUtil;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    .line 170
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v1, "batterystats"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 172
    new-instance v0, Lcom/android/server/wifi/WifiStateTracker;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateTracker;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    .line 174
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    .line 175
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiStateMachine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    .line 179
    .local v15, "wifiStateMachineLooper":Landroid/os/Looper;
    new-instance v0, Lcom/android/server/wifi/CarrierNetworkConfig;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    .line 180
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/CarrierNetworkConfig;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 181
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;-><init>(Lcom/android/server/wifi/Clock;)V

    move-object v14, v0

    .line 182
    .local v14, "awareMetrics":Lcom/android/server/wifi/aware/WifiAwareMetrics;
    new-instance v0, Lcom/android/server/wifi/rtt/RttMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/rtt/RttMetrics;-><init>(Lcom/android/server/wifi/Clock;)V

    move-object v13, v0

    .line 183
    .local v13, "rttMetrics":Lcom/android/server/wifi/rtt/RttMetrics;
    new-instance v0, Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1, v15, v14, v13}, Lcom/android/server/wifi/WifiMetrics;-><init>(Lcom/android/server/wifi/Clock;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/rtt/RttMetrics;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 185
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0, v11}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 186
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/HalDeviceManager;-><init>(Lcom/android/server/wifi/Clock;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    .line 187
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 188
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiVendorHal;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/os/Looper;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    .line 189
    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 190
    new-instance v0, Lcom/android/server/wifi/HostapdHal;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/HostapdHal;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    .line 191
    new-instance v0, Lcom/android/server/wifi/WificondControl;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/wifi/WificondControl;-><init>(Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/CarrierNetworkConfig;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    .line 192
    const-string v0, "network_management"

    .line 193
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mNwManagementService:Landroid/os/INetworkManagementService;

    .line 194
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mNwManagementService:Landroid/os/INetworkManagementService;

    iget-object v8, v11, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    iget-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wifi/WifiNative;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/HostapdHal;Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WifiMonitor;Landroid/os/INetworkManagementService;Lcom/android/server/wifi/PropertyService;Lcom/android/server/wifi/WifiMetrics;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 197
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v0, v11}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 198
    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;-><init>(Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 199
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pNative;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pNative;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiP2pNative:Lcom/android/server/wifi/p2p/WifiP2pNative;

    .line 202
    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 204
    new-instance v0, Lcom/android/server/wifi/WifiCountryCode;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "ro.boot.wificountrycode"

    .line 205
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e8

    .line 207
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiCountryCode;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Z)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 208
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/FrameworkFacade;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 213
    new-instance v0, Lcom/android/server/wifi/WifiKeyStore;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;-><init>(Landroid/security/KeyStore;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    .line 214
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    .line 216
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->createSharedFile()Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v3

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 218
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    move-object v10, v0

    .line 219
    .local v10, "writer":Lcom/android/server/net/DelayedDiskWrite;
    new-instance v0, Lcom/android/server/wifi/WifiNetworkHistory;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/android/server/wifi/WifiNetworkHistory;-><init>(Landroid/content/Context;Lcom/android/server/net/DelayedDiskWrite;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    .line 220
    new-instance v0, Lcom/android/server/net/IpConfigStore;

    invoke-direct {v0, v10}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mIpConfigStore:Lcom/android/server/net/IpConfigStore;

    .line 221
    new-instance v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v3, Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;

    invoke-direct {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;-><init>()V

    new-instance v4, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStoreLegacy;-><init>(Lcom/android/server/wifi/WifiNetworkHistory;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    .line 225
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    new-instance v8, Lcom/android/server/wifi/NetworkListStoreData;

    iget-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/wifi/NetworkListStoreData;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-direct {v9}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;-><init>()V

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-direct/range {v16 .. v27}, Lcom/android/server/wifi/WifiConfigManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiConfigStoreLegacy;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/NetworkListStoreData;Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 231
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setWifiNative(Lcom/android/server/wifi/WifiNative;)V

    .line 233
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiConfigManager(Lcom/android/server/wifi/WifiConfigManager;)V

    .line 234
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityHelper;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConnectivityHelper;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    .line 235
    new-instance v0, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    const/16 v1, 0x200

    :goto_0
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    .line 236
    new-instance v0, Lcom/android/server/wifi/ScoringParams;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/ScoringParams;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 238
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setScoringParams(Lcom/android/server/wifi/ScoringParams;)V

    .line 239
    new-instance v0, Lcom/android/server/wifi/WifiNetworkSelector;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiNetworkSelector;-><init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 242
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiNetworkSelector(Lcom/android/server/wifi/WifiNetworkSelector;)V

    .line 243
    new-instance v0, Lcom/android/server/wifi/SavedNetworkEvaluator;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    iget-object v8, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wifi/SavedNetworkEvaluator;-><init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;Lcom/android/server/wifi/WifiConnectivityHelper;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSavedNetworkEvaluator:Lcom/android/server/wifi/SavedNetworkEvaluator;

    .line 245
    new-instance v9, Lcom/android/server/wifi/ScoredNetworkEvaluator;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v8, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-object v0, v9

    move-object v1, v12

    move-object v2, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/ScoredNetworkEvaluator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;Landroid/net/wifi/WifiNetworkScoreCache;Lcom/android/server/wifi/util/WifiPermissionsUtil;)V

    iput-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mScoredNetworkEvaluator:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    .line 248
    new-instance v0, Lcom/android/server/wifi/SIMAccessor;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    .line 249
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointManager;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    new-instance v6, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    invoke-direct {v6}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;-><init>()V

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-direct/range {v16 .. v25}, Lcom/android/server/wifi/hotspot2/PasspointManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiMetrics;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 252
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mPasspointNetworkEvaluator:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    .line 254
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setPasspointManager(Lcom/android/server/wifi/hotspot2/PasspointManager;)V

    .line 255
    new-instance v9, Lcom/android/server/wifi/ScanRequestProxy;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 256
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AppOpsManager;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    .line 257
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/ActivityManager;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v8, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    move-object v0, v9

    move-object v4, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/ScanRequestProxy;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/app/ActivityManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/Clock;)V

    iput-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 260
    new-instance v0, Lcom/android/server/wifi/SarManager;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v6, Landroid/hardware/SystemSensorManager;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v15}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object v1, v0

    move-object v4, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/SarManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/hardware/SensorManager;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSarManager:Lcom/android/server/wifi/SarManager;

    .line 262
    iget-boolean v0, v11, Lcom/android/server/wifi/WifiInjector;->mUseRealLogger:Z

    if-eqz v0, :cond_1

    .line 263
    new-instance v6, Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    new-instance v5, Lcom/android/server/wifi/LastMileLogger;

    invoke-direct {v5, v11}, Lcom/android/server/wifi/LastMileLogger;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    move-object v0, v6

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiDiagnostics;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;Lcom/android/server/wifi/LastMileLogger;)V

    iput-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    goto :goto_1

    .line 267
    :cond_1
    new-instance v0, Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 269
    :goto_1
    new-instance v9, Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    .line 270
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    iget-object v8, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/16 v16, 0x0

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object v0, v9

    move-object v3, v15

    move-object/from16 v17, v5

    move-object v5, v11

    move-object v12, v9

    move-object/from16 v9, v16

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    .end local v10    # "writer":Lcom/android/server/net/DelayedDiskWrite;
    .local v21, "writer":Lcom/android/server/net/DelayedDiskWrite;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WrongPasswordNotifier;Lcom/android/server/wifi/SarManager;)V

    iput-object v12, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 279
    new-instance v7, Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v5, Lcom/android/server/wifi/DefaultModeManager;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0, v15}, Lcom/android/server/wifi/DefaultModeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v0, v7

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiStateMachinePrime;-><init>(Lcom/android/server/wifi/WifiInjector;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/DefaultModeManager;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 282
    new-instance v0, Lcom/android/server/wifi/OpenNetworkNotifier;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 283
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v30

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    iget-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v10, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v8, v9, v10}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    invoke-direct/range {v28 .. v37}, Lcom/android/server/wifi/OpenNetworkNotifier;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    .line 286
    new-instance v0, Lcom/android/server/wifi/CarrierNetworkNotifier;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 287
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v33

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v5, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    iget-object v9, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v10, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v8, v9, v10}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    invoke-direct/range {v31 .. v40}, Lcom/android/server/wifi/CarrierNetworkNotifier;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    .line 291
    new-instance v0, Lcom/android/server/wifi/WakeupNotificationFactory;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WakeupNotificationFactory;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V

    move-object/from16 v27, v0

    .line 293
    .local v27, "wakeupNotificationFactory":Lcom/android/server/wifi/WakeupNotificationFactory;
    new-instance v0, Lcom/android/server/wifi/WakeupOnboarding;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 294
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v25

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v27}, Lcom/android/server/wifi/WakeupOnboarding;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WakeupNotificationFactory;)V

    move-object v5, v0

    .line 296
    .local v5, "wakeupOnboarding":Lcom/android/server/wifi/WakeupOnboarding;
    new-instance v12, Lcom/android/server/wifi/WakeupController;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 297
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/WakeupLock;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 298
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->getWakeupMetrics()Lcom/android/server/wifi/WifiWakeMetrics;

    move-result-object v4

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v3, v0, v4, v6}, Lcom/android/server/wifi/WakeupLock;-><init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiWakeMetrics;Lcom/android/server/wifi/Clock;)V

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    .line 299
    invoke-static {v0}, Lcom/android/server/wifi/WakeupEvaluator;->fromContext(Landroid/content/Context;)Lcom/android/server/wifi/WakeupEvaluator;

    move-result-object v4

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v7, v11, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 300
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->getWakeupMetrics()Lcom/android/server/wifi/WifiWakeMetrics;

    move-result-object v8

    iget-object v10, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object v0, v12

    move-object v9, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wifi/WakeupController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WakeupLock;Lcom/android/server/wifi/WakeupEvaluator;Lcom/android/server/wifi/WakeupOnboarding;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiWakeMetrics;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/FrameworkFacade;)V

    iput-object v12, v11, Lcom/android/server/wifi/WifiInjector;->mWakeupController:Lcom/android/server/wifi/WakeupController;

    .line 301
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDiagnostics(Lcom/android/server/wifi/BaseWifiDiagnostics;)V

    .line 303
    :cond_2
    new-instance v0, Lcom/android/server/wifi/WifiLockManager;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiLockManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mLockManager:Lcom/android/server/wifi/WifiLockManager;

    .line 304
    new-instance v0, Lcom/android/server/wifi/WifiController;

    iget-object v1, v11, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    .line 305
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v18

    iget-object v4, v11, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v6, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    move-object v7, v13

    move-object v13, v0

    .end local v13    # "rttMetrics":Lcom/android/server/wifi/rtt/RttMetrics;
    .local v7, "rttMetrics":Lcom/android/server/wifi/rtt/RttMetrics;
    move-object v8, v14

    move-object v14, v1

    .end local v14    # "awareMetrics":Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .local v8, "awareMetrics":Lcom/android/server/wifi/aware/WifiAwareMetrics;
    move-object v1, v15

    move-object v15, v2

    .end local v15    # "wifiStateMachineLooper":Landroid/os/Looper;
    .local v1, "wifiStateMachineLooper":Landroid/os/Looper;
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v13 .. v20}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiStateMachinePrime;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 307
    new-instance v0, Lcom/android/server/wifi/SelfRecovery;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wifi/SelfRecovery;-><init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/Clock;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    .line 308
    new-instance v0, Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v14, v11, Lcom/android/server/wifi/WifiInjector;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    iget-object v15, v11, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v3, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object v13, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/server/wifi/WifiLastResortWatchdog;-><init>(Lcom/android/server/wifi/SelfRecovery;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 310
    new-instance v0, Lcom/android/server/wifi/WifiMulticastLockManager;

    iget-object v2, v11, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 311
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getMcastLockManagerFilterController()Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    move-result-object v2

    .line 312
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/wifi/WifiMulticastLockManager;-><init>(Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, v11, Lcom/android/server/wifi/WifiInjector;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    .line 313
    return-void

    .line 152
    .end local v1    # "wifiStateMachineLooper":Landroid/os/Looper;
    .end local v5    # "wakeupOnboarding":Lcom/android/server/wifi/WakeupOnboarding;
    .end local v7    # "rttMetrics":Lcom/android/server/wifi/rtt/RttMetrics;
    .end local v8    # "awareMetrics":Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .end local v21    # "writer":Lcom/android/server/net/DelayedDiskWrite;
    .end local v27    # "wakeupNotificationFactory":Lcom/android/server/wifi/WakeupNotificationFactory;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WifiInjector was already created, use getInstance instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WifiInjector should not be initialized with a null Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiInjector;
    .locals 2

    .line 322
    sget-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to retrieve a WifiInjector instance before constructor was called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->enableVerboseLogging(I)V

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiBackupRestore;->enableVerboseLogging(I)V

    .line 336
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HalDeviceManager;->enableVerboseLogging(I)V

    .line 337
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ScanRequestProxy;->enableVerboseLogging(I)V

    .line 338
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWakeupController:Lcom/android/server/wifi/WakeupController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WakeupController;->enableVerboseLogging(I)V

    .line 339
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->enableVerboseLogging(I)V

    .line 340
    invoke-static {p1}, Lcom/android/server/wifi/LogcatLog;->enableVerboseLogging(I)V

    .line 341
    return-void
.end method

.method public getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .line 627
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public getBackupManagerProxy()Lcom/android/server/wifi/BackupManagerProxy;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    return-object v0
.end method

.method public getBuildProperties()Lcom/android/server/wifi/BuildProperties;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    return-object v0
.end method

.method public getClock()Lcom/android/server/wifi/Clock;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method public getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method public getHalDeviceManager()Lcom/android/server/wifi/HalDeviceManager;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method public getJavaRuntime()Ljava/lang/Runtime;
    .locals 1

    .line 623
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public getPasspointManager()Lcom/android/server/wifi/hotspot2/PasspointManager;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 3

    .line 615
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public getPropertyService()Lcom/android/server/wifi/PropertyService;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    return-object v0
.end method

.method public getRttHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mRttHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wifiRttService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mRttHandlerThread:Landroid/os/HandlerThread;

    .line 582
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mRttHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mRttHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getSarManager()Lcom/android/server/wifi/SarManager;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object v0
.end method

.method public getScanRequestProxy()Lcom/android/server/wifi/ScanRequestProxy;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    return-object v0
.end method

.method public getScoringParams()Lcom/android/server/wifi/ScoringParams;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    return-object v0
.end method

.method public getSelfRecovery()Lcom/android/server/wifi/SelfRecovery;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    return-object v0
.end method

.method public getSupplicantStaIfaceHal()Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public getWakeupController()Lcom/android/server/wifi/WakeupController;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWakeupController:Lcom/android/server/wifi/WakeupController;

    return-object v0
.end method

.method public getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method public getWifiAwareHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wifiAwareService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    .line 569
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWifiBackupRestore()Lcom/android/server/wifi/WifiBackupRestore;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    return-object v0
.end method

.method public getWifiConfigManager()Lcom/android/server/wifi/WifiConfigManager;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method public getWifiController()Lcom/android/server/wifi/WifiController;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method public getWifiCountryCode()Lcom/android/server/wifi/WifiCountryCode;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method public getWifiDiagnostics()Lcom/android/server/wifi/BaseWifiDiagnostics;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    return-object v0
.end method

.method public getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    return-object v0
.end method

.method public getWifiLockManager()Lcom/android/server/wifi/WifiLockManager;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mLockManager:Lcom/android/server/wifi/WifiLockManager;

    return-object v0
.end method

.method public getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method public getWifiMulticastLockManager()Lcom/android/server/wifi/WifiMulticastLockManager;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    return-object v0
.end method

.method public getWifiNative()Lcom/android/server/wifi/WifiNative;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method public getWifiP2pMonitor()Lcom/android/server/wifi/p2p/WifiP2pMonitor;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    return-object v0
.end method

.method public getWifiP2pNative()Lcom/android/server/wifi/p2p/WifiP2pNative;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pNative:Lcom/android/server/wifi/p2p/WifiP2pNative;

    return-object v0
.end method

.method public getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method public getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    return-object v0
.end method

.method public declared-synchronized getWifiScanner()Landroid/net/wifi/WifiScanner;
    .locals 4

    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string v2, "wifiscanner"

    .line 527
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiScanner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 529
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiScanner;-><init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiInjector;
    throw v0
.end method

.method public getWifiServiceHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWifiSettingsStore()Lcom/android/server/wifi/WifiSettingsStore;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    return-object v0
.end method

.method public getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method public getWifiStateMachineHandler()Landroid/os/Handler;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getWifiStateMachineHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWifiStateMachinePrime()Lcom/android/server/wifi/WifiStateMachinePrime;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    return-object v0
.end method

.method public getWifiStateTracker()Lcom/android/server/wifi/WifiStateTracker;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getWifiTrafficPoller()Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method public makeClientModeManager(Lcom/android/server/wifi/ClientModeManager$Listener;)Lcom/android/server/wifi/ClientModeManager;
    .locals 9
    .param p1, "listener"    # Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 503
    new-instance v8, Lcom/android/server/wifi/ClientModeManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v6, p0, Lcom/android/server/wifi/WifiInjector;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object v0, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/ClientModeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/ClientModeManager$Listener;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/WifiStateMachine;)V

    return-object v8
.end method

.method public makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 512
    new-instance v0, Lcom/android/server/wifi/LogcatLog;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/LogcatLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeScanOnlyModeManager(Lcom/android/server/wifi/ScanOnlyModeManager$Listener;)Lcom/android/server/wifi/ScanOnlyModeManager;
    .locals 10
    .param p1, "listener"    # Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    .line 491
    new-instance v9, Lcom/android/server/wifi/ScanOnlyModeManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v6, p0, Lcom/android/server/wifi/WifiInjector;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWakeupController:Lcom/android/server/wifi/WakeupController;

    iget-object v8, p0, Lcom/android/server/wifi/WifiInjector;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/ScanOnlyModeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/ScanOnlyModeManager$Listener;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/WakeupController;Lcom/android/server/wifi/SarManager;)V

    return-object v9
.end method

.method public makeSoftApManager(Landroid/net/wifi/WifiManager$SoftApCallback;Lcom/android/server/wifi/SoftApModeConfiguration;)Lcom/android/server/wifi/SoftApManager;
    .locals 12
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .param p2, "config"    # Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 478
    new-instance v11, Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 479
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v9, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v10, p0, Lcom/android/server/wifi/WifiInjector;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object v0, v11

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wifi/SoftApManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Landroid/net/wifi/WifiManager$SoftApCallback;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/SarManager;)V

    .line 478
    return-object v11
.end method

.method public makeTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public makeWifiConnectivityManager(Landroid/net/wifi/WifiInfo;Z)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 28
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "hasConnectionRequests"    # Z

    move-object/from16 v0, p0

    .line 544
    new-instance v23, Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v2, v0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiInjector;->getScoringParams()Lcom/android/server/wifi/ScoringParams;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    iget-object v9, v0, Lcom/android/server/wifi/WifiInjector;->mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    iget-object v10, v0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v11, v0, Lcom/android/server/wifi/WifiInjector;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    iget-object v12, v0, Lcom/android/server/wifi/WifiInjector;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    iget-object v13, v0, Lcom/android/server/wifi/WifiInjector;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    iget-object v14, v0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, v0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    .line 548
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    iget-object v7, v0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v1, v0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/android/server/wifi/WifiInjector;->mSavedNetworkEvaluator:Lcom/android/server/wifi/SavedNetworkEvaluator;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/android/server/wifi/WifiInjector;->mScoredNetworkEvaluator:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/android/server/wifi/WifiInjector;->mPasspointNetworkEvaluator:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    move-object/from16 v17, v1

    move-object/from16 v1, v23

    move-object/from16 v16, v7

    move-object/from16 v7, p1

    move-object/from16 v22, v15

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    move-object/from16 v15, v24

    move/from16 v18, p2

    invoke-direct/range {v1 .. v22}, Lcom/android/server/wifi/WifiConnectivityManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/OpenNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkConfig;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;)V

    .line 544
    return-object v23
.end method

.method public makeWificond()Landroid/net/wifi/IWificond;
    .locals 2

    .line 466
    const-string v0, "wificond"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 467
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWificond;

    move-result-object v1

    return-object v1
.end method
