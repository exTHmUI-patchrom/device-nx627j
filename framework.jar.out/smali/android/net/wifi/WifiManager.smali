.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;,
        Landroid/net/wifi/WifiManager$SoftApCallbackProxy;,
        Landroid/net/wifi/WifiManager$SoftApCallback;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WpsCallback;,
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$SapStartFailure;,
        Landroid/net/wifi/WifiManager$WifiApState;
    }
.end annotation


# static fields
.field public static final ACTION_PASSPOINT_DEAUTH_IMMINENT:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_DEAUTH_IMMINENT"

.field public static final ACTION_PASSPOINT_ICON:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_ICON"

.field public static final ACTION_PASSPOINT_OSU_PROVIDERS_LIST:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_OSU_PROVIDERS_LIST"

.field public static final ACTION_PASSPOINT_SUBSCRIPTION_REMEDIATION:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_SUBSCRIPTION_REMEDIATION"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_DISABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_ENABLE"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_WIFI_DISCONNECT_IN_PROGRESS:Ljava/lang/String; = "com.qualcomm.qti.net.wifi.WIFI_DISCONNECT_IN_PROGRESS"

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CHANGE_REASON_REMOVED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final DPP_EVENT_ACTION:Ljava/lang/String; = "com.qualcomm.qti.net.wifi.DPP_EVENT"

.field public static final ERROR:I = 0x0

.field public static final ERROR_AUTHENTICATING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_AUTH_FAILURE_EAP_FAILURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_AUTH_FAILURE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_AUTH_FAILURE_TIMEOUT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_AUTH_FAILURE_WRONG_PSWD:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ANQP_ELEMENT_DATA:Ljava/lang/String; = "android.net.wifi.extra.ANQP_ELEMENT_DATA"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_BSSID_LONG:Ljava/lang/String; = "android.net.wifi.extra.BSSID_LONG"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final EXTRA_DELAY:Ljava/lang/String; = "android.net.wifi.extra.DELAY"

.field public static final EXTRA_DPP_EVENT_DATA:Ljava/lang/String; = "dppEventData"

.field public static final EXTRA_DPP_EVENT_TYPE:Ljava/lang/String; = "dppEventType"

.field public static final EXTRA_ESS:Ljava/lang/String; = "android.net.wifi.extra.ESS"

.field public static final EXTRA_FILENAME:Ljava/lang/String; = "android.net.wifi.extra.FILENAME"

.field public static final EXTRA_ICON:Ljava/lang/String; = "android.net.wifi.extra.ICON"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_RESULTS_UPDATED:Ljava/lang/String; = "resultsUpdated"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUBSCRIPTION_REMEDIATION_METHOD:Ljava/lang/String; = "android.net.wifi.extra.SUBSCRIPTION_REMEDIATION_METHOD"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SUPPLICANT_ERROR_REASON:Ljava/lang/String; = "supplicantErrorReason"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_URL:Ljava/lang/String; = "android.net.wifi.extra.URL"

.field public static final EXTRA_WIFI_AP_FAILURE_REASON:Ljava/lang/String; = "wifi_ap_error_code"

.field public static final EXTRA_WIFI_AP_INTERFACE_NAME:Ljava/lang/String; = "wifi_ap_interface_name"

.field public static final EXTRA_WIFI_AP_MODE:Ljava/lang/String; = "wifi_ap_mode"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_WIFI_CREDENTIAL_EVENT_TYPE:Ljava/lang/String; = "et"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_WIFI_CREDENTIAL_SSID:Ljava/lang/String; = "ssid"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_WIFI_DATA_STALL_REASON:Ljava/lang/String; = "data_stall_reasoncode"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final HOTSPOT_FAILED:I = 0x2

.field public static final HOTSPOT_OBSERVER_REGISTERED:I = 0x3

.field public static final HOTSPOT_STARTED:I = 0x0

.field public static final HOTSPOT_STOPPED:I = 0x1

.field public static final IFACE_IP_MODE_CONFIGURATION_ERROR:I = 0x0

.field public static final IFACE_IP_MODE_LOCAL_ONLY:I = 0x2

.field public static final IFACE_IP_MODE_TETHERED:I = 0x1

.field public static final IFACE_IP_MODE_UNSPECIFIED:I = -0x1

.field public static final INVALID_ARGS:I = 0x8

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NOT_AUTHORIZED:I = 0x9

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAP_START_FAILURE_GENERAL:I = 0x0

.field public static final SAP_START_FAILURE_NO_CHANNEL:I = 0x1

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_AP_STATE_FAILED:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_COUNTRY_CODE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.COUNTRY_CODE_CHANGED"

.field public static final WIFI_CREDENTIAL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_CREDENTIAL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_CREDENTIAL_FORGOT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_CREDENTIAL_SAVED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_DATA_STALL:Ljava/lang/String; = "com.qualcomm.qti.net.wifi.WIFI_DATA_STALL"

.field public static final WIFI_FEATURE_ADDITIONAL_STA:I = 0x800

.field public static final WIFI_FEATURE_AP_STA:I = 0x8000

.field public static final WIFI_FEATURE_AWARE:I = 0x40

.field public static final WIFI_FEATURE_BATCH_SCAN:I = 0x200

.field public static final WIFI_FEATURE_CONFIG_NDO:I = 0x200000

.field public static final WIFI_FEATURE_CONTROL_ROAMING:I = 0x800000

.field public static final WIFI_FEATURE_D2AP_RTT:I = 0x100

.field public static final WIFI_FEATURE_D2D_RTT:I = 0x80

.field public static final WIFI_FEATURE_EPR:I = 0x4000

.field public static final WIFI_FEATURE_HAL_EPNO:I = 0x40000

.field public static final WIFI_FEATURE_IE_WHITELIST:I = 0x1000000

.field public static final WIFI_FEATURE_INFRA:I = 0x1

.field public static final WIFI_FEATURE_INFRA_5G:I = 0x2

.field public static final WIFI_FEATURE_LINK_LAYER_STATS:I = 0x10000

.field public static final WIFI_FEATURE_LOGGER:I = 0x20000

.field public static final WIFI_FEATURE_MKEEP_ALIVE:I = 0x100000

.field public static final WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x10

.field public static final WIFI_FEATURE_P2P:I = 0x8

.field public static final WIFI_FEATURE_PASSPOINT:I = 0x4

.field public static final WIFI_FEATURE_PNO:I = 0x400

.field public static final WIFI_FEATURE_RSSI_MONITOR:I = 0x80000

.field public static final WIFI_FEATURE_SCANNER:I = 0x20

.field public static final WIFI_FEATURE_SCAN_RAND:I = 0x2000000

.field public static final WIFI_FEATURE_TDLS:I = 0x1000

.field public static final WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0x2000

.field public static final WIFI_FEATURE_TRANSMIT_POWER:I = 0x400000

.field public static final WIFI_FEATURE_TX_POWER_LIMIT:I = 0x4000000

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_NO_LOCKS_HELD:I = 0x0

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static final sServiceHandlerDispatchLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mConnected:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private final mNBWifiBackup:Lnubia/net/wifi/NBWifiBackup;

.field mService:Landroid/net/wifi/IWifiManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3003
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sServiceHandlerDispatchLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager;->mListenerKey:I

    .line 1021
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    .line 1022
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    .line 1041
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    .line 1058
    new-instance v0, Lnubia/net/wifi/NBWifiBackup;

    invoke-direct {v0, p0}, Lnubia/net/wifi/NBWifiBackup;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mNBWifiBackup:Lnubia/net/wifi/NBWifiBackup;

    .line 1060
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 1061
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 1062
    iput-object p3, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    .line 1063
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    .line 1064
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .line 99
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->stopLocalOnlyHotspot()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .line 99
    sget-object v0, Landroid/net/wifi/WifiManager;->sServiceHandlerDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .line 99
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .line 99
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .line 99
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .line 99
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$708(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .line 99
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$710(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .line 99
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1272
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .line 1987
    const/16 v0, -0x64

    if-gt p0, v0, :cond_0

    .line 1988
    const/4 v0, 0x0

    return v0

    .line 1989
    :cond_0
    const/16 v0, -0x37

    if-lt p0, v0, :cond_1

    .line 1990
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 1992
    :cond_1
    const/high16 v0, 0x42340000    # 45.0f

    .line 1993
    .local v0, "inputRange":F
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    .line 1994
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .line 2008
    sub-int v0, p0, p1

    return v0
.end method

.method private declared-synchronized getChannel()Lcom/android/internal/util/AsyncChannel;
    .locals 5

    monitor-enter p0

    .line 3102
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_1

    .line 3103
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v0

    .line 3104
    .local v0, "messenger":Landroid/os/Messenger;
    if-eqz v0, :cond_0

    .line 3109
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3110
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    .line 3112
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 3113
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3115
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3118
    goto :goto_0

    .line 3116
    :catch_0
    move-exception v2

    .line 3117
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "WifiManager"

    const-string v4, "interrupted wait at init"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "messenger":Landroid/os/Messenger;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 3105
    .restart local v0    # "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getWifiServiceMessenger() returned null!  This is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3120
    .end local v0    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3101
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    throw v0
.end method

.method private getSupportedFeatures()I
    .locals 2

    .line 1588
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 1595
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .line 3081
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3083
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3085
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/net/wifi/WifiManager;->mListenerKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/WifiManager;->mListenerKey:I

    .line 3086
    .local v1, "key":I
    if-eqz v1, :cond_1

    .line 3087
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3088
    monitor-exit v0

    .line 3089
    return v1

    .line 3088
    .end local v1    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 3093
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3094
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3095
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3096
    .local v1, "listener":Ljava/lang/Object;
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3097
    monitor-exit v0

    return-object v1

    .line 3098
    .end local v1    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopLocalOnlyHotspot()V
    .locals 3

    .line 2171
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2172
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    if-nez v1, :cond_0

    .line 2174
    monitor-exit v0

    return-void

    .line 2176
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopLocalOnlyHotspot()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2181
    nop

    .line 2182
    :try_start_2
    monitor-exit v0

    .line 2183
    return-void

    .line 2179
    :catch_0
    move-exception v1

    .line 2180
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2182
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public achieveConfiguredNetworks()[B
    .locals 3

    .line 4097
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getConfigInformation()Ljava/util/List;

    move-result-object v0

    .line 4098
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mNBWifiBackup:Lnubia/net/wifi/NBWifiBackup;

    invoke-virtual {v1, v0}, Lnubia/net/wifi/NBWifiBackup;->getConfigured(Ljava/util/List;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4099
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_0
    move-exception v0

    .line 4100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v2, "achieveConfiguredNetworks: failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    const/4 v1, 0x0

    return-object v1
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1185
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1186
    return v0

    .line 1188
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1189
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1293
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    nop

    .line 1299
    return-void

    .line 1294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public cancelLocalOnlyHotspotRequest()V
    .locals 2

    .line 2155
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2156
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->stopLocalOnlyHotspot()V

    .line 2157
    monitor-exit v0

    .line 2158
    return-void

    .line 2157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .line 3260
    if-eqz p1, :cond_0

    .line 3261
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    .line 3263
    :cond_0
    return-void
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 3160
    if-ltz p1, :cond_0

    .line 3161
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25001

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3162
    return-void

    .line 3160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3140
    if-eqz p1, :cond_0

    .line 3143
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25001

    const/4 v2, -0x1

    .line 3144
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    .line 3143
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3145
    return-void

    .line 3140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 3520
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 3486
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 3502
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public deauthenticateNetwork(JZ)V
    .locals 2
    .param p1, "holdoff"    # J
    .param p3, "ess"    # Z

    .line 1376
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->deauthenticateNetwork(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    nop

    .line 1380
    return-void

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 3217
    if-ltz p1, :cond_0

    .line 3218
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25011

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3219
    return-void

    .line 3217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "SSID"    # Ljava/lang/String;

    .line 3228
    if-eqz p1, :cond_0

    .line 3230
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3233
    nop

    .line 3234
    return-void

    .line 3231
    :catch_0
    move-exception v0

    .line 3232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3228
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .line 1469
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->disableNetwork(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disconnect()Z
    .locals 2

    .line 1482
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    const/4 v0, 0x1

    return v0

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 3912
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppAddBootstrapQrCode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3913
    :catch_0
    move-exception v0

    .line 3914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppBootstrapGenerate(Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3930
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppBootstrapGenerate(Landroid/net/wifi/WifiDppConfig;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3931
    :catch_0
    move-exception v0

    .line 3932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppBootstrapRemove(I)I
    .locals 2
    .param p1, "bootstrap_id"    # I

    .line 3962
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppBootstrapRemove(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3963
    :catch_0
    move-exception v0

    .line 3964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "curve"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiry"    # I

    .line 4015
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4016
    :catch_0
    move-exception v0

    .line 4017
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppConfiguratorGetKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 4065
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppConfiguratorGetKey(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4066
    :catch_0
    move-exception v0

    .line 4067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppConfiguratorRemove(I)I
    .locals 2
    .param p1, "config_id"    # I

    .line 4031
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppConfiguratorRemove(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4032
    :catch_0
    move-exception v0

    .line 4033
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppGetUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "bootstrap_id"    # I

    .line 3946
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppGetUri(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3947
    :catch_0
    move-exception v0

    .line 3948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppListen(Ljava/lang/String;IZZ)I
    .locals 2
    .param p1, "frequency"    # Ljava/lang/String;
    .param p2, "dpp_role"    # I
    .param p3, "qr_mutual"    # Z
    .param p4, "netrole_ap"    # Z

    .line 3984
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/wifi/IWifiManager;->dppListen(Ljava/lang/String;IZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3985
    :catch_0
    move-exception v0

    .line 3986
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppStartAuth(Landroid/net/wifi/WifiDppConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 4049
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->dppStartAuth(Landroid/net/wifi/WifiDppConfig;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4050
    :catch_0
    move-exception v0

    .line 4051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dppStopListen()V
    .locals 2

    .line 3997
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->dppStopListen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4000
    nop

    .line 4001
    return-void

    .line 3998
    :catch_0
    move-exception v0

    .line 3999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableNetwork(IZ)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "attemptConnect"    # Z

    .line 1431
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1432
    .local v1, "pin":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1433
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1434
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xf

    .line 1435
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1436
    invoke-virtual {v2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1438
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkPinner;->pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V

    .line 1443
    .end local v0    # "request":Landroid/net/NetworkRequest;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    .local v0, "success":Z
    nop

    .line 1445
    nop

    .line 1448
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 1449
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->unpin()V

    .line 1452
    :cond_2
    return v0

    .line 1444
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public enableVerboseLogging(I)V
    .locals 4
    .param p1, "verbose"    # I

    .line 3728
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3732
    goto :goto_0

    .line 3729
    :catch_0
    move-exception v0

    .line 3731
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVerboseLogging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3800
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableWifiConnectivityManager(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3803
    nop

    .line 3804
    return-void

    .line 3801
    :catch_0
    move-exception v0

    .line 3802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableWifiCoverageExtendFeature(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1255
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableWifiCoverageExtendFeature(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    nop

    .line 1259
    return-void

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public factoryReset()V
    .locals 2

    .line 3755
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3758
    nop

    .line 3759
    return-void

    .line 3756
    :catch_0
    move-exception v0

    .line 3757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3713
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3714
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3717
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3718
    nop

    .line 3719
    return-void

    .line 3717
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 3203
    if-ltz p1, :cond_0

    .line 3204
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25004

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3205
    return-void

    .line 3203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 2
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

    .line 1143
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "capaType"    # Ljava/lang/String;

    .line 3895
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3896
    :catch_0
    move-exception v0

    .line 3897
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
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

    .line 1087
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 1088
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1089
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_0

    .line 1090
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1092
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1093
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1782
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 2
    .param p1, "updateType"    # I

    .line 1710
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1712
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1714
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .line 1861
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    .local v0, "country":Ljava/lang/String;
    return-object v0

    .line 1863
    .end local v0    # "country":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .line 3768
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3769
    :catch_0
    move-exception v0

    .line 3770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 1

    .line 1767
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .line 1901
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    .line 3791
    const/4 v0, 0x0

    return v0
.end method

.method public getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 2
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

    .line 1162
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 1124
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPasspointConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 1328
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1103
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 1104
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1105
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_0

    .line 1106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1108
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1109
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1798
    const/16 v0, 0x37

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1800
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .line 1973
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x25014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1974
    return-void
.end method

.method public getVerboseLoggingLevel()I
    .locals 2

    .line 3742
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3743
    :catch_0
    move-exception v0

    .line 3744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2281
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2282
    :catch_0
    move-exception v0

    .line 2283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApState()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2252
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .line 3274
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger(Ljava/lang/String;)Landroid/os/Messenger;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3275
    :catch_0
    move-exception v0

    .line 3276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiState()I
    .locals 2

    .line 1940
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .line 3704
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3705
    const/4 v0, 0x1

    return v0

    .line 3706
    :catch_0
    move-exception v0

    .line 3707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public is5GHzBandSupported()Z
    .locals 1

    .line 1601
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAdditionalStaSupported()Z
    .locals 1

    .line 1674
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceToApRttSupported()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1659
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceToDeviceRttSupported()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1651
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .line 1875
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDualModeSupported()Z
    .locals 2

    .line 1888
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->needs5GHzToAnyApBandConversion()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1889
    :catch_0
    move-exception v0

    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnhancedPowerReportingSupported()Z
    .locals 1

    .line 1696
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isExtendingWifi()Z
    .locals 2

    .line 1227
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isExtendingWifi()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .line 3692
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3693
    :catch_0
    move-exception v0

    .line 3694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOffChannelTdlsSupported()Z
    .locals 1

    .line 1689
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isP2pSupported()Z
    .locals 1

    .line 1616
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPasspointSupported()Z
    .locals 1

    .line 1609
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPortableHotspotSupported()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1625
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPreferredNetworkOffloadSupported()Z
    .locals 1

    .line 1666
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    .line 1816
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1817
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTdlsSupported()Z
    .locals 1

    .line 1681
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2268
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiAwareSupported()Z
    .locals 1

    .line 1642
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isWifiCoverageExtendFeatureEnabled()Z
    .locals 2

    .line 1242
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isWifiCoverageExtendFeatureEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiEnabled()Z
    .locals 2

    .line 1963
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiScannerSupported()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1634
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isWifiToggleEnabled()Z
    .locals 2

    .line 1951
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isWifiToggleEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 1362
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyUserOfApBandConversion()V
    .locals 2

    .line 2311
    const-string v0, "WifiManager"

    const-string v1, "apBand was converted, notify the user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->notifyUserOfApBandConversion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    nop

    .line 2317
    return-void

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public numWifiInformation()I
    .locals 1

    .line 4141
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mNBWifiBackup:Lnubia/net/wifi/NBWifiBackup;

    invoke-virtual {v0}, Lnubia/net/wifi/NBWifiBackup;->backNumWifiInformation()I

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1527
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public queryPasspointIcon(JLjava/lang/String;)V
    .locals 2
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .line 1348
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->queryPasspointIcon(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    nop

    .line 1352
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reassociate()Z
    .locals 2

    .line 1512
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->reassociate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    const/4 v0, 0x1

    return v0

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reconnect()Z
    .locals 2

    .line 1497
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->reconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    const/4 v0, 0x1

    return v0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2666
    if-eqz p1, :cond_1

    .line 2667
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2670
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 2672
    .local v1, "binder":Landroid/os/Binder;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v3, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    invoke-direct {v3, v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;-><init>(Landroid/os/Looper;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 2673
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 2672
    invoke-interface {v2, v1, v3, v4}, Landroid/net/wifi/IWifiManager;->registerSoftApCallback(Landroid/os/IBinder;Landroid/net/wifi/ISoftApCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2676
    nop

    .line 2677
    return-void

    .line 2674
    :catch_0
    move-exception v2

    .line 2675
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2666
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "binder":Landroid/os/Binder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .line 1396
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->removeNetwork(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removePasspointConfiguration(Ljava/lang/String;)V
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 1310
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    nop

    .line 1316
    return-void

    .line 1311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restoreBackupData([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 3824
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->restoreBackupData([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3827
    nop

    .line 3828
    return-void

    .line 3825
    :catch_0
    move-exception v0

    .line 3826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restoreSupplicantBackupData([B[B)V
    .locals 2
    .param p1, "supplicantData"    # [B
    .param p2, "ipConfigData"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3840
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->restoreSupplicantBackupData([B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3843
    nop

    .line 3844
    return-void

    .line 3841
    :catch_0
    move-exception v0

    .line 3842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrieveBackupData()[B
    .locals 2

    .line 3812
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->retrieveBackupData()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3813
    :catch_0
    move-exception v0

    .line 3814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 3185
    if-eqz p1, :cond_0

    .line 3186
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3187
    return-void

    .line 3185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveConfiguration()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1836
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguredNetworks([B)I
    .locals 8
    .param p1, "bytes"    # [B

    .line 4113
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mNBWifiBackup:Lnubia/net/wifi/NBWifiBackup;

    invoke-virtual {v0, p1}, Lnubia/net/wifi/NBWifiBackup;->setConfigured([B)Ljava/util/List;

    move-result-object v0

    .line 4114
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .line 4115
    .local v1, "writeWifiNum":I
    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 4116
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4117
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 4119
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v6, v5, v3}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork2(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v2, :cond_0

    .line 4120
    return v2

    .line 4122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 4127
    nop

    .line 4128
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 4124
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v4

    .line 4125
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "WifiManager"

    const-string/jumbo v7, "setConfiguredNetworks: failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    return v2

    .line 4129
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return v1

    .line 4131
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;

    .line 1847
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    nop

    .line 1851
    return-void

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEnableAutoJoinWhenAssociated(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 3781
    const/4 v0, 0x0

    return v0
.end method

.method public setLatencyLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .line 4081
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->setLatencyLevel(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4082
    :catch_0
    move-exception v0

    .line 4083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .locals 2
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .line 2341
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    nop

    .line 2345
    return-void

    .line 2342
    :catch_0
    move-exception v0

    .line 2343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2355
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2358
    nop

    .line 2359
    return-void

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2298
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2299
    :catch_0
    move-exception v0

    .line 2300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 1920
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1921
    const/4 v0, 0x1

    return v0

    .line 1925
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1926
    :catch_0
    move-exception v0

    .line 1927
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2121
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2122
    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    .line 2138
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2122
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2123
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    invoke-direct {v2, p0, v1, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2126
    .local v2, "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2127
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 2128
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->getMessenger()Landroid/os/Messenger;

    move-result-object v5

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 2127
    invoke-interface {v4, v5, v6, v3}, Landroid/net/wifi/IWifiManager;->startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v4

    .line 2129
    .local v4, "returnCode":I
    if-eqz v4, :cond_1

    .line 2131
    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->notifyFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 2134
    :cond_1
    :try_start_3
    iput-object v2, p0, Landroid/net/wifi/WifiManager;->mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2137
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "returnCode":I
    nop

    .line 2138
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_start_4
    monitor-exit v0

    .line 2139
    return-void

    .line 2135
    .restart local v1    # "looper":Landroid/os/Looper;
    .restart local v2    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :catch_0
    move-exception v3

    .line 2136
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 2138
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public startScan()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->startScan(Landroid/os/WorkSource;)Z

    move-result v0

    return v0
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1752
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->startScan(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1754
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 2043
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2044
    :catch_0
    move-exception v0

    .line 2045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/ProvisioningCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/ProvisioningCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 3854
    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 3856
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    invoke-direct {v2, v0, p2}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;-><init>(Landroid/os/Looper;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/IWifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3860
    nop

    .line 3861
    return-void

    .line 3858
    :catch_0
    move-exception v1

    .line 3859
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .line 3246
    if-eqz p2, :cond_0

    .line 3247
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    .line 3249
    :cond_0
    return-void
.end method

.method public stopSoftAp()Z
    .locals 2

    .line 2058
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->stopSoftAp()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterLocalOnlyHotspotObserver()V
    .locals 3

    .line 2225
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2226
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    if-nez v1, :cond_0

    .line 2228
    monitor-exit v0

    return-void

    .line 2230
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWatchLocalOnlyHotspot()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2235
    nop

    .line 2236
    :try_start_2
    monitor-exit v0

    .line 2237
    return-void

    .line 2233
    :catch_0
    move-exception v1

    .line 2234
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2236
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 2689
    if-eqz p1, :cond_0

    .line 2690
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->unregisterSoftApCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2696
    nop

    .line 2697
    return-void

    .line 2694
    :catch_0
    move-exception v0

    .line 2695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2689
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInterfaceIpState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 2025
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    nop

    .line 2029
    return-void

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1210
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 1213
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 1211
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public watchLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;Landroid/os/Handler;)V
    .locals 5
    .param p1, "observer"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2204
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2205
    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    .line 2215
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2205
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2206
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-direct {v2, p0, v1, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    .line 2209
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 2208
    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V

    .line 2210
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->registered()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2214
    nop

    .line 2215
    .end local v1    # "looper":Landroid/os/Looper;
    :try_start_2
    monitor-exit v0

    .line 2216
    return-void

    .line 2211
    .restart local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v2

    .line 2212
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    .line 2213
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2215
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
