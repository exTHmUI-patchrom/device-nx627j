.class public Lcom/android/server/wifi/aware/WifiAwareStateManager;
.super Ljava/lang/Object;
.source "WifiAwareStateManager.java"

# interfaces
.implements Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    }
.end annotation


# static fields
.field private static final ALL_ZERO_MAC:[B

.field private static final COMMAND_TYPE_CONNECT:I = 0x64

.field private static final COMMAND_TYPE_CREATE_ALL_DATA_PATH_INTERFACES:I = 0x70

.field private static final COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE:I = 0x72

.field private static final COMMAND_TYPE_DELAYED_INITIALIZATION:I = 0x79

.field private static final COMMAND_TYPE_DELETE_ALL_DATA_PATH_INTERFACES:I = 0x71

.field private static final COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE:I = 0x73

.field private static final COMMAND_TYPE_DISABLE_USAGE:I = 0x6d

.field private static final COMMAND_TYPE_DISCONNECT:I = 0x65

.field private static final COMMAND_TYPE_ENABLE_USAGE:I = 0x6c

.field private static final COMMAND_TYPE_END_DATA_PATH:I = 0x76

.field private static final COMMAND_TYPE_ENQUEUE_SEND_MESSAGE:I = 0x6b

.field private static final COMMAND_TYPE_GET_AWARE:I = 0x7a

.field private static final COMMAND_TYPE_GET_CAPABILITIES:I = 0x6f

.field private static final COMMAND_TYPE_INITIATE_DATA_PATH_SETUP:I = 0x74

.field private static final COMMAND_TYPE_MAKE_AWARE_DOWN:I = 0x7c

.field private static final COMMAND_TYPE_PUBLISH:I = 0x67

.field private static final COMMAND_TYPE_RECONFIGURE:I = 0x78

.field private static final COMMAND_TYPE_RELEASE_AWARE:I = 0x7b

.field private static final COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST:I = 0x75

.field private static final COMMAND_TYPE_SUBSCRIBE:I = 0x69

.field private static final COMMAND_TYPE_TERMINATE_SESSION:I = 0x66

.field private static final COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE:I = 0x77

.field private static final COMMAND_TYPE_UPDATE_PUBLISH:I = 0x68

.field private static final COMMAND_TYPE_UPDATE_SUBSCRIBE:I = 0x6a

.field public static final HAL_COMMAND_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Command Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HAL_DATA_PATH_CONFIRM_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Data Path Confirm Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HAL_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Send Message Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MESSAGE_BUNDLE_KEY_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final MESSAGE_BUNDLE_KEY_CHANNEL:Ljava/lang/String; = "channel"

.field private static final MESSAGE_BUNDLE_KEY_CHANNEL_REQ_TYPE:Ljava/lang/String; = "channel_request_type"

.field private static final MESSAGE_BUNDLE_KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final MESSAGE_BUNDLE_KEY_FILTER_DATA:Ljava/lang/String; = "filter_data"

.field private static final MESSAGE_BUNDLE_KEY_INTERFACE_NAME:Ljava/lang/String; = "interface_name"

.field private static final MESSAGE_BUNDLE_KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ:Ljava/lang/String; = "message_arrival_seq"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_DATA:Ljava/lang/String; = "message_data"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_PEER_ID:Ljava/lang/String; = "message_peer_id"

.field private static final MESSAGE_BUNDLE_KEY_NDP_IDS:Ljava/lang/String; = "ndp_ids"

.field private static final MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE:Ljava/lang/String; = "notify_identity_chg"

.field private static final MESSAGE_BUNDLE_KEY_OOB:Ljava/lang/String; = "out_of_band"

.field private static final MESSAGE_BUNDLE_KEY_PASSPHRASE:Ljava/lang/String; = "passphrase"

.field private static final MESSAGE_BUNDLE_KEY_PEER_ID:Ljava/lang/String; = "peer_id"

.field private static final MESSAGE_BUNDLE_KEY_PID:Ljava/lang/String; = "pid"

.field private static final MESSAGE_BUNDLE_KEY_PMK:Ljava/lang/String; = "pmk"

.field private static final MESSAGE_BUNDLE_KEY_REQ_INSTANCE_ID:Ljava/lang/String; = "req_instance_id"

.field private static final MESSAGE_BUNDLE_KEY_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field private static final MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME:Ljava/lang/String; = "message_queue_time"

.field private static final MESSAGE_BUNDLE_KEY_SENT_MESSAGE:Ljava/lang/String; = "send_message"

.field private static final MESSAGE_BUNDLE_KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final MESSAGE_BUNDLE_KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final MESSAGE_BUNDLE_KEY_SSI_DATA:Ljava/lang/String; = "ssi_data"

.field private static final MESSAGE_BUNDLE_KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final MESSAGE_BUNDLE_KEY_SUCCESS_FLAG:Ljava/lang/String; = "success_flag"

.field private static final MESSAGE_BUNDLE_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_RANGE_MM:Ljava/lang/String; = "range_mm"

.field private static final MESSAGE_RANGING_INDICATION:Ljava/lang/String; = "ranging_indication"

.field private static final MESSAGE_TYPE_COMMAND:I = 0x1

.field private static final MESSAGE_TYPE_DATA_PATH_TIMEOUT:I = 0x6

.field private static final MESSAGE_TYPE_NOTIFICATION:I = 0x3

.field private static final MESSAGE_TYPE_RESPONSE:I = 0x2

.field private static final MESSAGE_TYPE_RESPONSE_TIMEOUT:I = 0x4

.field private static final MESSAGE_TYPE_SEND_MESSAGE_TIMEOUT:I = 0x5

.field private static final NOTIFICATION_TYPE_AWARE_DOWN:I = 0x132

.field private static final NOTIFICATION_TYPE_CLUSTER_CHANGE:I = 0x12e

.field private static final NOTIFICATION_TYPE_INTERFACE_CHANGE:I = 0x12d

.field private static final NOTIFICATION_TYPE_MATCH:I = 0x12f

.field private static final NOTIFICATION_TYPE_MESSAGE_RECEIVED:I = 0x131

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_CONFIRM:I = 0x136

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_END:I = 0x137

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_REQUEST:I = 0x135

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_SCHED_UPDATE:I = 0x138

.field private static final NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL:I = 0x134

.field private static final NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS:I = 0x133

.field private static final NOTIFICATION_TYPE_SESSION_TERMINATED:I = 0x130

.field public static final PARAM_ON_IDLE_DISABLE_AWARE:Ljava/lang/String; = "on_idle_disable_aware"

.field public static final PARAM_ON_IDLE_DISABLE_AWARE_DEFAULT:I = 0x1

.field private static final RESPONSE_TYPE_ON_CAPABILITIES_UPDATED:I = 0xce

.field private static final RESPONSE_TYPE_ON_CONFIG_FAIL:I = 0xc9

.field private static final RESPONSE_TYPE_ON_CONFIG_SUCCESS:I = 0xc8

.field private static final RESPONSE_TYPE_ON_CREATE_INTERFACE:I = 0xcf

.field private static final RESPONSE_TYPE_ON_DELETE_INTERFACE:I = 0xd0

.field private static final RESPONSE_TYPE_ON_DISABLE:I = 0xd5

.field private static final RESPONSE_TYPE_ON_END_DATA_PATH:I = 0xd4

.field private static final RESPONSE_TYPE_ON_INITIATE_DATA_PATH_FAIL:I = 0xd2

.field private static final RESPONSE_TYPE_ON_INITIATE_DATA_PATH_SUCCESS:I = 0xd1

.field private static final RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_FAIL:I = 0xcd

.field private static final RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_SUCCESS:I = 0xcc

.field private static final RESPONSE_TYPE_ON_RESPOND_TO_DATA_PATH_SETUP_REQUEST:I = 0xd3

.field private static final RESPONSE_TYPE_ON_SESSION_CONFIG_FAIL:I = 0xcb

.field private static final RESPONSE_TYPE_ON_SESSION_CONFIG_SUCCESS:I = 0xca

.field private static final TAG:Ljava/lang/String; = "WifiAwareStateManager"

.field private static final VDBG:Z = false

.field private static final VVDBG:Z = false

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
.field private mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

.field private volatile mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

.field private volatile mCharacteristics:Landroid/net/wifi/aware/Characteristics;

.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

.field private mCurrentDiscoveryInterfaceMac:[B

.field private mCurrentIdentityNotification:Z

.field public mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

.field mDbg:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettableParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

.field private volatile mUsageEnabled:Z

.field private mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

.field private mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MESSAGE_TYPE"

    const-string v2, "COMMAND_TYPE"

    const-string v3, "RESPONSE_TYPE"

    const-string v4, "NOTIFICATION_TYPE"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    .line 227
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    .line 223
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    .line 224
    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 225
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    .line 228
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onReset()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/aware/WifiAwareStateManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # [B

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInterfaceAddressChangeLocal([B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/aware/WifiAwareStateManager;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeLocal(I[B)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B
    .param p5, "x5"    # [B
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMatchLocal(II[B[B[BII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/aware/WifiAwareStateManager;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedLocal(IZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageReceivedLocal(II[B[B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownLocal()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendSuccessLocal(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->transmitNextMessage()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendFailLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p7, "x7"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p8, "x8"    # Z

    .line 76
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->connectLocal(SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnectLocal(SI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/aware/WifiAwareStateManager;S)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->reconfigureLocal(S)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/aware/WifiAwareStateManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->terminateSessionLocal(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "x4"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->publishLocal(SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/net/wifi/aware/PublishConfig;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updatePublishLocal(SIILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "x4"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->subscribeLocal(SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updateSubscribeLocal(SIILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIII[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # [B
    .param p6, "x6"    # I

    .line 76
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendFollowonMessageLocal(SIII[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsageLocal()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/aware/WifiAwareStateManager;S)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsageLocal(S)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/Capabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/aware/WifiAwareStateManager;SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # [B
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # [B
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .line 76
    invoke-direct/range {p0 .. p10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->initiateDataPathSetupLocal(SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/aware/WifiAwareStateManager;SZILjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [B
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequestLocal(SZILjava/lang/String;[BLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPathLocal(SI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigCompletedLocal(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # B
    .param p3, "x3"    # Z

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessLocal(Landroid/os/Message;BZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/Capabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCapabilitiesUpdatedResponseLocal(Lcom/android/server/wifi/aware/Capabilities;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCreateDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDeleteDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseSuccessLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseFailLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onRespondToDataPathSetupRequestResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onEndPathEndResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDisableResponseLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5500(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .line 76
    invoke-static {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private connectLocal(SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z
    .locals 20
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p7, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p8, "notifyIdentityChange"    # Z

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 2163
    move/from16 v11, p8

    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    const/16 v16, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2164
    const-string v0, "WifiAwareStateManager"

    const-string v3, "connect(): called with mUsageEnabled=false"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :try_start_0
    invoke-interface {v14, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2167
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    goto :goto_0

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v16

    .line 2174
    :cond_0
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2175
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal: entry already exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_1
    invoke-direct {v1, v15}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v12

    .line 2184
    .local v12, "merged":Landroid/net/wifi/aware/ConfigRequest;
    if-nez v12, :cond_2

    .line 2185
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal: requested configRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", incompatible with current configurations"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :try_start_1
    invoke-interface {v14, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2189
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2192
    goto :goto_1

    .line 2190
    :catch_1
    move-exception v0

    .line 2191
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v16

    .line 2198
    :cond_2
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v0, v12}, Landroid/net/wifi/aware/ConfigRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    if-nez v0, :cond_4

    if-nez v11, :cond_3

    goto :goto_2

    .line 2214
    :cond_3
    move v15, v11

    move-object/from16 v19, v12

    move/from16 v11, p3

    goto :goto_4

    .line 2201
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v14, v13}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectSuccess(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2204
    goto :goto_3

    .line 2202
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 2203
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal onConnectSuccess(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 2207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object v2, v0

    move v4, v13

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v14

    move-object v9, v15

    move v10, v11

    move v15, v11

    move-object/from16 v19, v12

    move-wide/from16 v11, v17

    .end local v12    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    .local v19, "merged":Landroid/net/wifi/aware/ConfigRequest;
    invoke-direct/range {v2 .. v12}, Lcom/android/server/wifi/aware/WifiAwareClientState;-><init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZJ)V

    .line 2208
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    iget-boolean v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    iput-boolean v2, v0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mDbg:Z

    .line 2209
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    .line 2210
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2211
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v11, p3

    invoke-virtual {v2, v11, v15, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSession(IZLandroid/util/SparseArray;)V

    .line 2212
    return v16

    .line 2214
    .end local v0    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v19    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    .restart local v12    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    :cond_5
    move v15, v11

    move-object/from16 v19, v12

    move/from16 v11, p3

    .line 2215
    .end local v12    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    .restart local v19    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v15, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v7, v16

    goto :goto_6

    :cond_7
    :goto_5
    move v7, v2

    .line 2217
    .local v7, "notificationRequired":Z
    :goto_6
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_8

    .line 2218
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->tryToGetAware()V

    .line 2221
    :cond_8
    iget-object v4, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_9

    move v8, v2

    goto :goto_7

    :cond_9
    move/from16 v8, v16

    :goto_7
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2223
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v9

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v10

    .line 2221
    move/from16 v5, p1

    move-object/from16 v6, v19

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z

    move-result v3

    .line 2224
    .local v3, "success":Z
    if-nez v3, :cond_a

    .line 2226
    :try_start_3
    invoke-interface {v14, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2227
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2230
    goto :goto_8

    .line 2228
    :catch_3
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectLocal onConnectFail(): RemoteException (FYI):  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_8
    return v3
.end method

.method private disableUsageLocal(S)Z
    .locals 2
    .param p1, "transactionId"    # S

    .line 2472
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2473
    return v1

    .line 2476
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownLocal()V

    .line 2478
    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    .line 2479
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->disable(S)Z

    move-result v0

    .line 2481
    .local v0, "callDispatched":Z
    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendAwareStateChangedBroadcast(Z)V

    .line 2483
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDisableUsage()V

    .line 2485
    return v0
.end method

.method private disconnectLocal(SI)Z
    .locals 12
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I

    .line 2242
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2243
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2244
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectLocal: no entry for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return v1

    .line 2247
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 2248
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getCreationTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSessionDuration(J)V

    .line 2249
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v2

    .line 2250
    .local v2, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2251
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v5

    .line 2252
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v7

    .line 2251
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 2250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2254
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->destroy()V

    .line 2256
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 2257
    iput-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 2258
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteAllDataPathInterfaces()V

    .line 2259
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->disable(S)Z

    move-result v1

    return v1

    .line 2262
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v10

    .line 2263
    .local v10, "merged":Landroid/net/wifi/aware/ConfigRequest;
    if-nez v10, :cond_3

    .line 2264
    const-string v3, "WifiAwareStateManager"

    const-string v4, "disconnectLocal: got an incompatible merge on remaining configs!?"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    return v1

    .line 2267
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v11

    .line 2268
    .local v11, "notificationReqs":Z
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v10, v3}, Landroid/net/wifi/aware/ConfigRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    if-ne v3, v11, :cond_4

    .line 2270
    return v1

    .line 2273
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2274
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v8

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v9

    .line 2273
    move v4, p1

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z

    move-result v1

    return v1
.end method

.method private doesAnyClientNeedIdentityChangeNotifications()Z
    .locals 3

    .line 3185
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3186
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getNotifyIdentityChange()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3187
    const/4 v0, 0x1

    return v0

    .line 3185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3190
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private enableUsageLocal()V
    .locals 1

    .line 2451
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-nez v0, :cond_0

    .line 2452
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getAwareInterface()V

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->queryCapabilities()V

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->releaseAwareInterface()V

    .line 2457
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    if-eqz v0, :cond_1

    .line 2458
    return-void

    .line 2460
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    .line 2461
    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendAwareStateChangedBroadcast(Z)V

    .line 2463
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordEnableUsage()V

    .line 2464
    return-void
.end method

.method private endDataPathLocal(SI)Z
    .locals 1
    .param p1, "transactionId"    # S
    .param p2, "ndpId"    # I

    .line 2537
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->endDataPath(SI)Z

    move-result v0

    return v0
.end method

.method private getClientSessionForPubSubId(I)Landroid/util/Pair;
    .locals 4
    .param p1, "pubSubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;",
            ">;"
        }
    .end annotation

    .line 3087
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3088
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 3089
    .local v1, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getAwareSessionStateForPubSubId(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 3091
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-eqz v2, :cond_0

    .line 3092
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 3087
    .end local v1    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v2    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3096
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initiateDataPathSetupLocal(SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 12
    .param p1, "transactionId"    # S
    .param p2, "networkSpecifier"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p3, "peerId"    # I
    .param p4, "channelRequestType"    # I
    .param p5, "channel"    # I
    .param p6, "peer"    # [B
    .param p7, "interfaceName"    # Ljava/lang/String;
    .param p8, "pmk"    # [B
    .param p9, "passphrase"    # Ljava/lang/String;
    .param p10, "isOutOfBand"    # Z

    move-object v0, p0

    .line 2503
    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    move v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->initiateDataPath(SIII[BLjava/lang/String;[BLjava/lang/String;ZLcom/android/server/wifi/aware/Capabilities;)Z

    move-result v1

    .line 2506
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 2507
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v3, 0x1

    move-object v4, p2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    goto :goto_0

    .line 2510
    :cond_0
    move-object v4, p2

    :goto_0
    return v1
.end method

.method public static synthetic lambda$requestMacAddresses$0(Lcom/android/server/wifi/aware/WifiAwareStateManager;ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "peerIds"    # Ljava/util/List;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 499
    .local v0, "peerIdToMacMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 500
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 501
    .local v3, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 502
    goto :goto_3

    .line 505
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v4

    .line 506
    .local v4, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move v5, v1

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 507
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 509
    .local v6, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 510
    .local v8, "peerId":I
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getPeerInfo(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    move-result-object v9

    .line 512
    .local v9, "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    if-eqz v9, :cond_1

    .line 513
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v9, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v8    # "peerId":I
    .end local v9    # "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    :cond_1
    goto :goto_2

    .line 506
    .end local v6    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 499
    .end local v3    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v4    # "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    .end local v5    # "j":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "i":I
    :cond_4
    :try_start_0
    invoke-interface {p3, v0}, Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;->macAddress(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_4

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestMacAddress (sync): exception on callback -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 17
    .param p1, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;

    move-object/from16 v0, p0

    .line 3109
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 3110
    const-string v2, "WifiAwareStateManager"

    const-string v4, "mergeConfigRequests: invalid state - called with 0 clients registered!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    return-object v3

    .line 3120
    :cond_0
    const/4 v2, 0x0

    .line 3121
    .local v2, "support5gBand":Z
    const/4 v4, 0x0

    .line 3122
    .local v4, "masterPreference":I
    const/4 v5, 0x0

    .line 3123
    .local v5, "clusterIdValid":Z
    const/4 v6, 0x0

    .line 3124
    .local v6, "clusterLow":I
    const v7, 0xffff

    .line 3125
    .local v7, "clusterHigh":I
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    .line 3127
    .local v8, "discoveryWindowInterval":[I
    if-eqz v1, :cond_1

    .line 3128
    iget-boolean v2, v1, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 3129
    iget v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 3130
    const/4 v5, 0x1

    .line 3131
    iget v6, v1, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 3132
    iget v7, v1, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 3133
    iget-object v8, v1, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 3135
    :cond_1
    const/4 v9, 0x0

    move v10, v5

    move v5, v4

    move v4, v2

    move v2, v9

    .local v2, "i":I
    .local v4, "support5gBand":Z
    .local v5, "masterPreference":I
    .local v10, "clusterIdValid":Z
    :goto_0
    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ge v2, v11, :cond_b

    .line 3136
    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v11}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getConfigRequest()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v11

    .line 3139
    .local v11, "cr":Landroid/net/wifi/aware/ConfigRequest;
    iget-boolean v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v14, :cond_2

    .line 3140
    const/4 v4, 0x1

    .line 3144
    :cond_2
    iget v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3147
    if-nez v10, :cond_3

    .line 3148
    const/4 v10, 0x1

    .line 3149
    iget v6, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 3150
    iget v7, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    goto :goto_1

    .line 3152
    :cond_3
    iget v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-eq v6, v14, :cond_4

    return-object v3

    .line 3153
    :cond_4
    iget v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-eq v7, v14, :cond_5

    return-object v3

    .line 3156
    :cond_5
    :goto_1
    move v14, v9

    .local v14, "band":I
    :goto_2
    if-gt v14, v13, :cond_a

    .line 3158
    aget v15, v8, v14

    if-ne v15, v12, :cond_6

    .line 3159
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    aput v15, v8, v14

    goto :goto_3

    .line 3160
    :cond_6
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    if-ne v15, v12, :cond_7

    goto :goto_3

    .line 3163
    :cond_7
    aget v15, v8, v14

    if-nez v15, :cond_8

    .line 3164
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    aput v15, v8, v14

    goto :goto_3

    .line 3165
    :cond_8
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    if-nez v15, :cond_9

    goto :goto_3

    .line 3168
    :cond_9
    aget v15, v8, v14

    iget-object v3, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v3, v3, v14

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v8, v14

    .line 3157
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 3156
    const/4 v3, 0x0

    goto :goto_2

    .line 3135
    .end local v11    # "cr":Landroid/net/wifi/aware/ConfigRequest;
    .end local v14    # "band":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 3173
    .end local v2    # "i":I
    :cond_b
    new-instance v2, Landroid/net/wifi/aware/ConfigRequest$Builder;

    invoke-direct {v2}, Landroid/net/wifi/aware/ConfigRequest$Builder;-><init>()V

    invoke-virtual {v2, v4}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    .line 3174
    invoke-virtual {v2, v5}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    .line 3175
    invoke-virtual {v2, v7}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    .line 3176
    .local v2, "builder":Landroid/net/wifi/aware/ConfigRequest$Builder;
    nop

    .local v9, "band":I
    :goto_4
    move v3, v9

    .end local v9    # "band":I
    .local v3, "band":I
    if-gt v3, v13, :cond_d

    .line 3177
    aget v9, v8, v3

    if-eq v9, v12, :cond_c

    .line 3178
    aget v9, v8, v3

    invoke-virtual {v2, v3, v9}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;

    .line 3176
    :cond_c
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "band":I
    .restart local v9    # "band":I
    goto :goto_4

    .line 3181
    .end local v9    # "band":I
    :cond_d
    invoke-virtual {v2}, Landroid/net/wifi/aware/ConfigRequest$Builder;->build()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v3

    return-object v3

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 3194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3196
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3197
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3198
    const-string v1, "<unknown>"

    .line 3200
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_3

    .line 3204
    :cond_1
    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    iget v3, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 3205
    if-nez v1, :cond_2

    .line 3206
    const-string v1, "<unknown>"

    .line 3208
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    :cond_3
    iget v2, p0, Landroid/os/Message;->what:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 3212
    :cond_4
    const-string v2, " (Transaction ID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3215
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private onAwareDownLocal()V
    .locals 8

    .line 3058
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_0

    .line 3059
    return-void

    .line 3062
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3063
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getCreationTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSessionDuration(J)V

    .line 3064
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 3065
    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v2

    .line 3066
    .local v2, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move v3, v0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3067
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v5

    .line 3068
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v7

    .line 3067
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 3066
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3062
    .end local v2    # "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3071
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDisableAware()V

    .line 3073
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 3075
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->onAwareDownCleanupSendQueueState()V

    .line 3076
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onAwareDownCleanupDataPaths()V

    .line 3077
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    .line 3078
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteAllDataPathInterfaces()V

    .line 3079
    return-void
.end method

.method private onCapabilitiesUpdatedResponseLocal(Lcom/android/server/wifi/aware/Capabilities;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 2870
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    .line 2871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    .line 2872
    return-void
.end method

.method private onClusterChangeLocal(I[B)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "clusterId"    # [B

    .line 2978
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2979
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2980
    .local v1, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onClusterChange(I[B[B)V

    .line 2978
    .end local v1    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2983
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordEnableAware()V

    .line 2984
    return-void
.end method

.method private onConfigCompletedLocal(Landroid/os/Message;)V
    .locals 24
    .param p1, "completedCommand"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 2549
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    .line 2550
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2552
    .local v3, "data":Landroid/os/Bundle;
    iget v15, v2, Landroid/os/Message;->arg2:I

    .line 2553
    .local v15, "clientId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 2554
    .local v13, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    const-string v0, "config"

    .line 2555
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/wifi/aware/ConfigRequest;

    .line 2556
    .local v16, "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    const-string v0, "uid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2557
    .local v14, "uid":I
    const-string v0, "pid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2558
    .local v17, "pid":I
    const-string v0, "notify_identity_chg"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2560
    .local v12, "notifyIdentityChange":Z
    const-string v0, "calling_package"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2562
    .local v18, "callingPackage":Ljava/lang/String;
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v5, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 2564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object v4, v0

    move v6, v15

    move v7, v14

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object v10, v13

    move-object/from16 v11, v16

    move/from16 v21, v12

    .end local v12    # "notifyIdentityChange":Z
    .local v21, "notifyIdentityChange":Z
    move-object/from16 v22, v3

    move-object v3, v13

    move v2, v14

    move-wide/from16 v13, v19

    .end local v13    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v14    # "uid":I
    .local v2, "uid":I
    .local v3, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .local v22, "data":Landroid/os/Bundle;
    invoke-direct/range {v4 .. v14}, Lcom/android/server/wifi/aware/WifiAwareClientState;-><init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZJ)V

    .line 2565
    .local v4, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    iput-boolean v0, v4, Lcom/android/server/wifi/aware/WifiAwareClientState;->mDbg:Z

    .line 2566
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2567
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v5, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v6, v21

    invoke-virtual {v0, v2, v6, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSession(IZLandroid/util/SparseArray;)V

    .line 2569
    .end local v21    # "notifyIdentityChange":Z
    .local v6, "notifyIdentityChange":Z
    :try_start_0
    invoke-interface {v3, v15}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectSuccess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2573
    goto :goto_0

    .line 2570
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 2571
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigCompletedLocal onConnectSuccess(): RemoteException (FYI): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    .line 2575
    .end local v2    # "uid":I
    .end local v3    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v6    # "notifyIdentityChange":Z
    .end local v15    # "clientId":I
    .end local v16    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local v17    # "pid":I
    .end local v18    # "callingPackage":Ljava/lang/String;
    .end local v22    # "data":Landroid/os/Bundle;
    nop

    .line 2588
    move-object/from16 v2, p1

    goto :goto_1

    .line 2575
    :cond_0
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 2579
    :cond_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x78

    if-ne v0, v3, :cond_4

    .line 2588
    :goto_1
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_2

    .line 2589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->createAllDataPathInterfaces()V

    .line 2591
    :cond_2
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 2592
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_3

    .line 2593
    const-string v0, "WifiAwareStateManager"

    const-string v3, "onConfigCompletedLocal: got a null merged configuration after config!?"

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    .line 2596
    return-void

    .line 2584
    :cond_4
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigCompletedLocal: unexpected completedCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    return-void
.end method

.method private onConfigFailedLocal(Landroid/os/Message;I)V
    .locals 5
    .param p1, "failedCommand"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2604
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 2605
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 2608
    .local v0, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2609
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2612
    goto :goto_0

    .line 2610
    :catch_0
    move-exception v1

    .line 2611
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigFailedLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    .end local v0    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2621
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 2630
    :goto_1
    return-void

    .line 2627
    :cond_2
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigFailedLocal: unexpected failedCommand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    return-void
.end method

.method private onCreateDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V
    .locals 3
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2881
    if-eqz p2, :cond_0

    .line 2886
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onInterfaceCreated(Ljava/lang/String;)V

    goto :goto_0

    .line 2888
    :cond_0
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDataPathInterfaceResponseLocal: failed when trying to create interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    :goto_0
    return-void
.end method

.method private onDeleteDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V
    .locals 3
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2902
    if-eqz p2, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onInterfaceDeleted(Ljava/lang/String;)V

    goto :goto_0

    .line 2909
    :cond_0
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteDataPathInterfaceResponseLocal: failed when trying to delete interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :goto_0
    return-void
.end method

.method private onDisableResponseLocal(Landroid/os/Message;I)V
    .locals 3
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2642
    if-eqz p2, :cond_0

    .line 2643
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisableResponseLocal: FAILED!? command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDisableAware()V

    .line 2648
    return-void
.end method

.method private onEndPathEndResponseLocal(Landroid/os/Message;ZI)V
    .locals 0
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2951
    return-void
.end method

.method private onInitiateDataPathResponseFailLocal(Landroid/os/Message;I)V
    .locals 2
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2931
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    .line 2932
    return-void
.end method

.method private onInitiateDataPathResponseSuccessLocal(Landroid/os/Message;I)V
    .locals 2
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "ndpId"    # I

    .line 2922
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateSuccess(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    .line 2923
    return-void
.end method

.method private onInterfaceAddressChangeLocal([B)V
    .locals 2
    .param p1, "mac"    # [B

    .line 2962
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    .line 2964
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2965
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2966
    .local v1, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    .line 2964
    .end local v1    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2969
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordEnableAware()V

    .line 2970
    return-void
.end method

.method private onMatchLocal(II[B[B[BII)V
    .locals 12
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "serviceSpecificInfo"    # [B
    .param p5, "matchFilter"    # [B
    .param p6, "rangingIndication"    # I
    .param p7, "rangeMm"    # I

    .line 2997
    nop

    .line 2998
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    .line 2999
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/aware/WifiAwareClientState;Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    if-nez v0, :cond_0

    .line 3000
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMatch: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    return-void

    .line 3004
    :cond_0
    move v3, p1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isRangingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3005
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    if-eqz p6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordMatchIndicationForRangeEnabledSubscribe(Z)V

    goto :goto_1

    .line 3007
    :cond_2
    move-object v1, p0

    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->onMatch(I[B[B[BII)V

    .line 3009
    return-void
.end method

.method private onMessageReceivedLocal(II[B[B)V
    .locals 4
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "message"    # [B

    .line 3044
    nop

    .line 3045
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    .line 3046
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/aware/WifiAwareClientState;Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    if-nez v0, :cond_0

    .line 3047
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageReceivedLocal: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    return-void

    .line 3051
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->onMessageReceived(I[B[B)V

    .line 3052
    return-void
.end method

.method private onMessageSendFailLocal(Landroid/os/Message;I)V
    .locals 9
    .param p1, "failedCommand"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2841
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2842
    .local v0, "clientId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2843
    .local v1, "sessionId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2845
    .local v2, "messageId":I
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2846
    .local v3, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v3, :cond_0

    .line 2847
    const-string v4, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageSendFailLocal: no client exists for clientId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    return-void

    .line 2851
    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    .line 2852
    .local v4, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v4, :cond_1

    .line 2853
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessageSendFailLocal: no session exists for clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    return-void

    .line 2859
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v5

    invoke-interface {v5, v2, p2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    goto :goto_0

    .line 2860
    :catch_0
    move-exception v5

    .line 2861
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageSendFailLocal: onMessageSendFail RemoteException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onMessageSendSuccessLocal(Landroid/os/Message;)V
    .locals 9
    .param p1, "completedCommand"    # Landroid/os/Message;

    .line 2812
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2813
    .local v0, "clientId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2814
    .local v1, "sessionId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2816
    .local v2, "messageId":I
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2817
    .local v3, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v3, :cond_0

    .line 2818
    const-string v4, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageSendSuccessLocal: no client exists for clientId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    return-void

    .line 2822
    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    .line 2823
    .local v4, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v4, :cond_1

    .line 2824
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessageSendSuccessLocal: no session exists for clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    return-void

    .line 2830
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendSuccess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    goto :goto_0

    .line 2831
    :catch_0
    move-exception v5

    .line 2832
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageSendSuccessLocal: RemoteException (FYI): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onRespondToDataPathSetupRequestResponseLocal(Landroid/os/Message;ZI)V
    .locals 2
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2941
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onRespondToDataPathRequest(IZI)V

    .line 2942
    return-void
.end method

.method private onSessionConfigFailLocal(Landroid/os/Message;ZI)V
    .locals 11
    .param p1, "failedCommand"    # Landroid/os/Message;
    .param p2, "isPublish"    # Z
    .param p3, "reason"    # I

    .line 2753
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x67

    if-eq v0, v3, :cond_7

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x69

    if-ne v0, v4, :cond_0

    goto/16 :goto_2

    .line 2773
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x68

    if-eq v0, v3, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6a

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 2803
    :cond_1
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionConfigFailLocal: unexpected failedCommand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2775
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2776
    .local v0, "clientId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "session_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2778
    .local v4, "sessionId":I
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2779
    .local v5, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v5, :cond_3

    .line 2780
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigFailLocal: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-void

    .line 2784
    :cond_3
    invoke-virtual {v5, v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v6

    .line 2785
    .local v6, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v6, :cond_4

    .line 2786
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigFailLocal: no session exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    return-void

    .line 2792
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v7

    invoke-interface {v7, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2795
    goto :goto_1

    .line 2793
    :catch_0
    move-exception v7

    .line 2794
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "WifiAwareStateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSessionConfigFailLocal: onSessionConfigFail() RemoteException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-virtual {v7, v8, p3, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2799
    const/4 v1, 0x3

    if-ne p3, v1, :cond_6

    .line 2800
    invoke-virtual {v5, v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->removeSession(I)V

    .line 2802
    .end local v0    # "clientId":I
    .end local v4    # "sessionId":I
    .end local v5    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v6    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_6
    goto :goto_4

    .line 2755
    :cond_7
    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2756
    .restart local v0    # "clientId":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2759
    .local v4, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2760
    .restart local v5    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v5, :cond_8

    .line 2761
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigFailLocal: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    return-void

    .line 2766
    :cond_8
    :try_start_1
    invoke-interface {v4, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2770
    goto :goto_3

    .line 2767
    :catch_1
    move-exception v6

    .line 2768
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "WifiAwareStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSessionConfigFailLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v3, :cond_9

    move v1, v2

    nop

    :cond_9
    invoke-virtual {v6, v7, p3, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2773
    .end local v0    # "clientId":I
    .end local v4    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v5    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    nop

    .line 2805
    :goto_4
    return-void
.end method

.method private onSessionConfigSuccessLocal(Landroid/os/Message;BZ)V
    .locals 24
    .param p1, "completedCommand"    # Landroid/os/Message;
    .param p2, "pubSubId"    # B
    .param p3, "isPublish"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2657
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x67

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v6, 0x69

    if-ne v0, v6, :cond_0

    goto/16 :goto_3

    .line 2714
    :cond_0
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x68

    if-eq v0, v3, :cond_2

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v6, 0x6a

    if-ne v0, v6, :cond_1

    goto :goto_0

    .line 2742
    :cond_1
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: unexpected completedCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2716
    :cond_2
    :goto_0
    iget v6, v2, Landroid/os/Message;->arg2:I

    .line 2717
    .local v6, "clientId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "session_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2719
    .local v7, "sessionId":I
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2720
    .local v8, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v8, :cond_3

    .line 2721
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    return-void

    .line 2726
    :cond_3
    invoke-virtual {v8, v7}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v9

    .line 2727
    .local v9, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v9, :cond_4

    .line 2728
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: no session exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    return-void

    .line 2734
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2738
    goto :goto_1

    .line 2735
    :catch_0
    move-exception v0

    .line 2736
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "WifiAwareStateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSessionConfigSuccessLocal: onSessionConfigSuccess() RemoteException="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v8}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v10

    iget v11, v2, Landroid/os/Message;->arg1:I

    if-ne v11, v3, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    invoke-virtual {v0, v10, v5, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2741
    .end local v6    # "clientId":I
    .end local v7    # "sessionId":I
    .end local v8    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v9    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    goto/16 :goto_b

    .line 2659
    :cond_6
    :goto_3
    iget v6, v2, Landroid/os/Message;->arg2:I

    .line 2660
    .restart local v6    # "clientId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2663
    .local v14, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2664
    .local v15, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v15, :cond_7

    .line 2665
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    return-void

    .line 2670
    :cond_7
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    move v13, v7

    .line 2672
    .local v13, "sessionId":I
    :try_start_1
    invoke-interface {v14, v13}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionStarted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2676
    nop

    .line 2678
    const/4 v0, 0x0

    .line 2679
    .local v0, "isRangingEnabled":Z
    const/4 v7, -0x1

    .line 2680
    .local v7, "minRange":I
    const/4 v8, -0x1

    .line 2681
    .local v8, "maxRange":I
    iget v9, v2, Landroid/os/Message;->arg1:I

    if-ne v9, v3, :cond_9

    .line 2682
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/aware/PublishConfig;

    .line 2684
    .local v9, "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    iget-boolean v0, v9, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    .line 2685
    .end local v9    # "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    nop

    .line 2698
    .end local v7    # "minRange":I
    .end local v8    # "maxRange":I
    .local v16, "minRange":I
    .local v17, "maxRange":I
    :cond_8
    :goto_4
    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_7

    .line 2686
    .end local v16    # "minRange":I
    .end local v17    # "maxRange":I
    .restart local v7    # "minRange":I
    .restart local v8    # "maxRange":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/aware/SubscribeConfig;

    .line 2688
    .local v9, "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez v10, :cond_b

    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    move v10, v5

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v10, 0x1

    :goto_6
    move v0, v10

    .line 2690
    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v10, :cond_c

    .line 2691
    iget v7, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    .line 2693
    :cond_c
    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v10, :cond_8

    .line 2694
    iget v8, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    .end local v9    # "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    goto :goto_4

    .line 2698
    .end local v7    # "minRange":I
    .end local v8    # "maxRange":I
    .restart local v16    # "minRange":I
    .restart local v17    # "maxRange":I
    :goto_7
    new-instance v18, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    iget-object v8, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 2700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v7, v18

    move v9, v13

    move/from16 v10, p2

    move-object v11, v14

    move/from16 v12, p3

    move/from16 v21, v13

    move v13, v0

    .end local v13    # "sessionId":I
    .local v21, "sessionId":I
    move-object/from16 v22, v14

    move-object v4, v15

    move-wide/from16 v14, v19

    .end local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .local v4, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .local v22, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    invoke-direct/range {v7 .. v15}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeApi;IBLandroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;ZZJ)V

    move-object/from16 v13, v18

    .line 2701
    .local v13, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    iget-boolean v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    iput-boolean v7, v13, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mDbg:Z

    .line 2702
    invoke-virtual {v4, v13}, Lcom/android/server/wifi/aware/WifiAwareClientState;->addSession(Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;)V

    .line 2704
    if-eqz v0, :cond_e

    .line 2705
    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget v9, v2, Landroid/os/Message;->arg1:I

    if-eq v9, v3, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    iget-object v12, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionWithRanging(IZIILandroid/util/SparseArray;)V

    goto :goto_9

    .line 2709
    :cond_e
    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget-object v9, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySession(ILandroid/util/SparseArray;)V

    .line 2711
    :goto_9
    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget v9, v2, Landroid/os/Message;->arg1:I

    if-ne v9, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move v3, v5

    :goto_a
    invoke-virtual {v7, v8, v5, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2714
    .end local v0    # "isRangingEnabled":Z
    .end local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v6    # "clientId":I
    .end local v13    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .end local v16    # "minRange":I
    .end local v17    # "maxRange":I
    .end local v21    # "sessionId":I
    .end local v22    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    nop

    .line 2745
    :goto_b
    return-void

    .line 2673
    .restart local v6    # "clientId":I
    .local v13, "sessionId":I
    .restart local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .restart local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    :catch_1
    move-exception v0

    move/from16 v21, v13

    move-object/from16 v22, v14

    move-object v4, v15

    .end local v13    # "sessionId":I
    .end local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .restart local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .restart local v21    # "sessionId":I
    .restart local v22    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    move-object v3, v0

    .line 2674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSessionConfigSuccessLocal: onSessionStarted() RemoteException="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    return-void
.end method

.method private onSessionTerminatedLocal(IZI)V
    .locals 5
    .param p1, "pubSubId"    # I
    .param p2, "isPublish"    # Z
    .param p3, "reason"    # I

    .line 3017
    nop

    .line 3018
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    .line 3019
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/aware/WifiAwareClientState;Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    if-nez v0, :cond_0

    .line 3020
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionTerminatedLocal: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    return-void

    .line 3025
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionTerminated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3029
    goto :goto_0

    .line 3026
    :catch_0
    move-exception v1

    .line 3027
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionTerminatedLocal onSessionTerminated(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->removeSession(I)V

    .line 3031
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 3032
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v4

    .line 3031
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 3033
    return-void
.end method

.method private publishLocal(SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2318
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2319
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2320
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    return v1

    .line 2324
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->publish(SBLandroid/net/wifi/aware/PublishConfig;)Z

    move-result v1

    .line 2325
    .local v1, "success":Z
    if-nez v1, :cond_1

    .line 2327
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p4, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    goto :goto_0

    .line 2328
    :catch_0
    move-exception v3

    .line 2329
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publishLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2335
    :cond_1
    return v1
.end method

.method private reconfigureLocal(S)Z
    .locals 8
    .param p1, "transactionId"    # S

    .line 2280
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    const/4 v0, 0x0

    return v0

    .line 2285
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v0

    .line 2287
    .local v0, "notificationReqs":Z
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2288
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2289
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v7

    .line 2287
    move v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z

    move-result v1

    return v1
.end method

.method private respondToDataPathRequestLocal(SZILjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 10
    .param p1, "transactionId"    # S
    .param p2, "accept"    # Z
    .param p3, "ndpId"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;
    .param p5, "pmk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;
    .param p7, "isOutOfBand"    # Z

    move-object v0, p0

    .line 2523
    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v9, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->respondToDataPathRequest(SZILjava/lang/String;[BLjava/lang/String;ZLcom/android/server/wifi/aware/Capabilities;)Z

    move-result v1

    .line 2525
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 2526
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, p3

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onRespondToDataPathRequest(IZI)V

    goto :goto_0

    .line 2528
    :cond_0
    move v5, p3

    :goto_0
    return v1
.end method

.method private sendAwareStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2145
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2146
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2147
    return-void
.end method

.method private sendFollowonMessageLocal(SIII[BI)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I
    .param p4, "peerId"    # I
    .param p5, "message"    # [B
    .param p6, "messageId"    # I

    .line 2432
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2433
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2434
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFollowonMessageLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    return v1

    .line 2438
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 2439
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v2, :cond_1

    .line 2440
    const-string v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendFollowonMessageLocal: no session exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    return v1

    .line 2445
    :cond_1
    invoke-virtual {v2, p1, p4, p5, p6}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->sendMessage(SI[BI)Z

    move-result v1

    return v1
.end method

.method private subscribeLocal(SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 8
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2373
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2374
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2375
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    return v1

    .line 2379
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->subscribe(SBLandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v2

    .line 2380
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 2382
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p4, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2385
    goto :goto_0

    .line 2383
    :catch_0
    move-exception v4

    .line 2384
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscribeLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2390
    :cond_1
    return v2
.end method

.method private terminateSessionLocal(II)V
    .locals 6
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 2298
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2299
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v0, :cond_0

    .line 2300
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminateSession: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    return-void

    .line 2304
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->terminateSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v1

    .line 2305
    .local v1, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-eqz v1, :cond_1

    .line 2306
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v3

    .line 2307
    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v5

    .line 2306
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 2309
    :cond_1
    return-void
.end method

.method private transmitNextMessage()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 841
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 842
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 843
    return-void
.end method

.method private updatePublishLocal(SIILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I
    .param p4, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 2345
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2346
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2347
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePublishLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    return v1

    .line 2351
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 2352
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v2, :cond_1

    .line 2353
    const-string v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePublishLocal: no session exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return v1

    .line 2358
    :cond_1
    invoke-virtual {v2, p1, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->updatePublish(SLandroid/net/wifi/aware/PublishConfig;)Z

    move-result v1

    .line 2359
    .local v1, "status":Z
    if-nez v1, :cond_2

    .line 2360
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2363
    :cond_2
    return v1
.end method

.method private updateSubscribeLocal(SIILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I
    .param p4, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 2402
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2403
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2404
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSubscribeLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return v1

    .line 2408
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 2409
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v2, :cond_1

    .line 2410
    const-string v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubscribeLocal: no session exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return v1

    .line 2415
    :cond_1
    invoke-virtual {v2, p1, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->updateSubscribe(SLandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v3

    .line 2416
    .local v3, "status":Z
    if-nez v3, :cond_2

    .line 2417
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2420
    :cond_2
    return v3
.end method


# virtual methods
.method public connect(IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p6, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p7, "notifyOnIdentityChanged"    # Z

    .line 578
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 580
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 581
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 582
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 583
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 585
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notify_identity_chg"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 589
    return-void
.end method

.method public createAllDataPathInterfaces()V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 752
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 753
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 754
    return-void
.end method

.method public createDataPathInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 771
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 773
    return-void
.end method

.method public delayedInitialization()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x79

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 539
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 540
    return-void
.end method

.method public deleteAllDataPathInterfaces()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 761
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 762
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 763
    return-void
.end method

.method public deleteDataPathInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 781
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 782
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 783
    return-void
.end method

.method public disableUsage()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 723
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 724
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 725
    return-void
.end method

.method public disconnect(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 597
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 598
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 599
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 600
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3222
    const-string v0, "AwareStateManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mClients: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsageEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCapabilities: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAwareConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentIdentityNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3229
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3231
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSettableParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3233
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3234
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3235
    const-string v0, "mAwareMetrics:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3237
    return-void
.end method

.method public enableUsage()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    const-string v1, "on_idle_disable_aware"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 701
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareStateManager"

    const-string v1, "enableUsage(): while device is in IDLE mode - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 706
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiAwareStateManager"

    const-string v1, "enableUsage(): while location is disabled - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2
    return-void

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 710
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiAwareStateManager"

    const-string v1, "enableUsage(): while Wi-Fi is disabled - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_4
    return-void

    .line 713
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 714
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 715
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 716
    return-void
.end method

.method public endDataPath(I)V
    .locals 2
    .param p1, "ndpId"    # I

    .line 825
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 827
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 828
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 829
    return-void
.end method

.method public getAwareInterface()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 548
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7a

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 549
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 550
    return-void
.end method

.method public getCapabilities()Lcom/android/server/wifi/aware/Capabilities;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    return-object v0
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/Capabilities;->toPublicCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    return-object v0
.end method

.method getClient(I)Lcom/android/server/wifi/aware/WifiAwareClientState;
    .locals 1
    .param p1, "clientId"    # I

    .line 466
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    return-object v0
.end method

.method public initiateDataPathSetup(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)V
    .locals 3
    .param p1, "networkSpecifier"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p2, "peerId"    # I
    .param p3, "channelRequestType"    # I
    .param p4, "channel"    # I
    .param p5, "peer"    # [B
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p7, "pmk"    # [B
    .param p8, "passphrase"    # Ljava/lang/String;
    .param p9, "isOutOfBand"    # Z

    .line 791
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 793
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 794
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "peer_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channel_request_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 798
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "interface_name"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pmk"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 800
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "passphrase"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "out_of_band"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 803
    return-void
.end method

.method public isUsageEnabled()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    return v0
.end method

.method public makeAwareDown()V
    .locals 2

    .line 566
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareStateManager"

    const-string v1, "makeAwareDown request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7c

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 569
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 570
    return-void
.end method

.method public onAwareDownNotification(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 1102
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1103
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x132

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1104
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1105
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1106
    return-void
.end method

.method public onCapabilitiesUpdateResponse(SLcom/android/server/wifi/aware/Capabilities;)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "capabilities"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 938
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 939
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 940
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 941
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 942
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 943
    return-void
.end method

.method public onClusterChangeNotification(I[B)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "clusterId"    # [B

    .line 1044
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1045
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1046
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1047
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1048
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1049
    return-void
.end method

.method public onCommand(Landroid/os/ShellCommand;)I
    .locals 9
    .param p1, "parentShell"    # Landroid/os/ShellCommand;

    .line 259
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 260
    .local v0, "pw_err":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 262
    .local v1, "pw_out":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "subCmd":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x484afa01

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v3, v4, :cond_3

    const v4, 0x18f56

    if-eq v3, v4, :cond_2

    const v4, 0x1bc62

    if-eq v3, v4, :cond_1

    const v4, 0x3f32f6b1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "allow_ndp_any"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_1

    :cond_2
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_1

    :cond_3
    const-string v3, "get_capabilities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v7

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 325
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "flag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    if-nez v4, :cond_5

    .line 328
    const-string v4, "Null Aware data-path manager - can\'t configure"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    return v7

    .line 331
    :cond_5
    const-string v4, "true"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 332
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iput-boolean v5, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    goto/16 :goto_3

    .line 333
    :cond_6
    const-string v4, "false"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 334
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iput-boolean v6, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    goto/16 :goto_3

    .line 336
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown configuration flag for \'allow_ndp_any\' - true|false expected -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    return v7

    .line 297
    .end local v3    # "flag":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 298
    .local v3, "j":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-eqz v4, :cond_8

    .line 300
    :try_start_0
    const-string v4, "maxConcurrentAwareClusters"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxConcurrentAwareClusters:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v4, "maxPublishes"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxPublishes:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    const-string v4, "maxSubscribes"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribes:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v4, "maxServiceNameLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxServiceNameLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    const-string v4, "maxMatchFilterLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxMatchFilterLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    const-string v4, "maxTotalMatchFilterLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string v4, "maxServiceSpecificInfoLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    const-string v4, "maxExtendedServiceSpecificInfoLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v4, "maxNdiInterfaces"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v4, "maxNdpSessions"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxNdpSessions:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v4, "maxAppInfoLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxAppInfoLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v4, "maxQueuedTransmitMessages"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxQueuedTransmitMessages:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v4, "maxSubscribeInterfaceAddresses"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string v4, "supportedCipherSuites"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_2

    .line 317
    :catch_0
    move-exception v4

    .line 318
    .local v4, "e":Lorg/json/JSONException;
    const-string v5, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCommand: get_capabilities e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    return v6

    .line 286
    .end local v3    # "j":Lorg/json/JSONObject;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter name -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    return v7

    .line 293
    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 294
    return v6

    .line 266
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3    # "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter name -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    return v7

    .line 273
    :cond_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "valueStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .local v5, "value":I
    nop

    .line 280
    nop

    .line 282
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return v6

    .line 278
    .end local v5    # "value":I
    :catch_1
    move-exception v5

    .line 279
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t convert value to integer -- \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    return v7

    .line 344
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "valueStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    const-string v3, "Unknown \'wifiaware state_mgr <cmd>\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigFailedResponse(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 865
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 866
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc9

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 867
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 868
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 869
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 870
    return-void
.end method

.method public onConfigSuccessResponse(S)V
    .locals 2
    .param p1, "transactionId"    # S

    .line 854
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 855
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 856
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 857
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 858
    return-void
.end method

.method public onCreateDataPathInterfaceResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 951
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 952
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcf

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 953
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 954
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 956
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 957
    return-void
.end method

.method public onDataPathConfirmNotification(I[BZI[BLjava/util/List;)V
    .locals 3
    .param p1, "ndpId"    # I
    .param p2, "mac"    # [B
    .param p3, "accept"    # Z
    .param p4, "reason"    # I
    .param p5, "message"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BZI[B",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1148
    .local p6, "channelInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1149
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x136

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1150
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1151
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_data"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1155
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1156
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1157
    return-void
.end method

.method public onDataPathEndNotification(I)V
    .locals 2
    .param p1, "ndpId"    # I

    .line 1164
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1165
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x137

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1166
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1167
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1168
    return-void
.end method

.method public onDataPathRequestNotification(I[BI)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "mac"    # [B
    .param p3, "ndpId"    # I

    .line 1134
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1135
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x135

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1136
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1138
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1140
    return-void
.end method

.method public onDataPathScheduleUpdateNotification([BLjava/util/ArrayList;Ljava/util/List;)V
    .locals 3
    .param p1, "peerMac"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1176
    .local p2, "ndpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "channelInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1177
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1178
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1179
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ndp_ids"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1180
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1181
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1182
    return-void
.end method

.method public onDeleteDataPathInterfaceResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 965
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 966
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 967
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 968
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 969
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 970
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 971
    return-void
.end method

.method public onDisableResponse(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 877
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 878
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd5

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 879
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 880
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 881
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 882
    return-void
.end method

.method public onEndDataPathResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 1015
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1017
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1018
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1020
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1021
    return-void
.end method

.method public onHelp(Ljava/lang/String;Landroid/os/ShellCommand;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parentShell"    # Landroid/os/ShellCommand;

    .line 360
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 362
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    set <name> <value>: sets named parameter to value. Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    .line 364
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    get <name>: gets named parameter value. Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    .line 366
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v1, "    get_capabilities: prints out the capabilities as a JSON string"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const-string v1, "    allow_ndp_any true|false: configure whether Responders can be specified to accept requests from ANY requestor (null peer spec)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onInitiateDataPathResponseFail(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 990
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 991
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 992
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 993
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 994
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 995
    return-void
.end method

.method public onInitiateDataPathResponseSuccess(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "ndpId"    # I

    .line 978
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 979
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 980
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 981
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 982
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 983
    return-void
.end method

.method public onInterfaceAddressChangeNotification([B)V
    .locals 2
    .param p1, "mac"    # [B

    .line 1032
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1033
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12d

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1034
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1035
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1036
    return-void
.end method

.method public onMatchNotification(II[B[B[BII)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "serviceSpecificInfo"    # [B
    .param p5, "matchFilter"    # [B
    .param p6, "rangingIndication"    # I
    .param p7, "rangeMm"    # I

    .line 1058
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1059
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1060
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1061
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "req_instance_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ssi_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filter_data"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ranging_indication"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "range_mm"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1068
    return-void
.end method

.method public onMessageReceivedNotification(II[B[B)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "message"    # [B

    .line 1089
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1090
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1091
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1092
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1095
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1096
    return-void
.end method

.method public onMessageSendFailNotification(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 1123
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x134

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1125
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1127
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1128
    return-void
.end method

.method public onMessageSendQueuedFailResponse(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 925
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 926
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcd

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 927
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 928
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 929
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 930
    return-void
.end method

.method public onMessageSendQueuedSuccessResponse(S)V
    .locals 2
    .param p1, "transactionId"    # S

    .line 915
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 916
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcc

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 917
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 918
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 919
    return-void
.end method

.method public onMessageSendSuccessNotification(S)V
    .locals 2
    .param p1, "transactionId"    # S

    .line 1112
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1113
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x133

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1114
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1115
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1116
    return-void
.end method

.method public onReset()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    const-string v1, "on_idle_disable_aware"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    .line 356
    :cond_0
    return-void
.end method

.method public onRespondToDataPathSetupRequestResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 1003
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1004
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1005
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1006
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1009
    return-void
.end method

.method public onSessionConfigFailResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "isPublish"    # Z
    .param p3, "reason"    # I

    .line 903
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 904
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcb

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 905
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 906
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 907
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 908
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method public onSessionConfigSuccessResponse(SZB)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "isPublish"    # Z
    .param p3, "pubSubId"    # B

    .line 890
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 891
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xca

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 892
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 893
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 894
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 895
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 896
    return-void
.end method

.method public onSessionTerminatedNotification(IIZ)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "reason"    # I
    .param p3, "isPublish"    # Z

    .line 1075
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1076
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x130

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1077
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1078
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1079
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1080
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1081
    return-void
.end method

.method public publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 630
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 631
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 632
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 633
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 635
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method public queryCapabilities()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 743
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 744
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 745
    return-void
.end method

.method public reconfigure()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 610
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 611
    return-void
.end method

.method public releaseAwareInterface()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 559
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 560
    return-void
.end method

.method public requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .locals 2
    .param p1, "uid"    # I
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;",
            ")V"
        }
    .end annotation

    .line 496
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method

.method public respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;Z)V
    .locals 3
    .param p1, "accept"    # Z
    .param p2, "ndpId"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .param p4, "pmk"    # [B
    .param p5, "passphrase"    # Ljava/lang/String;
    .param p6, "isOutOfBand"    # Z

    .line 810
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x75

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 812
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 813
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 814
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "interface_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pmk"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 816
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "passphrase"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "out_of_band"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 818
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 819
    return-void
.end method

.method public sendMessage(III[BII)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I

    .line 684
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 685
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 686
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 687
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 688
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_peer_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 690
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 691
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "retry_count"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 693
    return-void
.end method

.method public setNative(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;)V
    .locals 0
    .param p1, "wifiAwareNativeManager"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p2, "wifiAwareNativeApi"    # Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 240
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 241
    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 242
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "awareMetrics"    # Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .param p4, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p5, "permissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 381
    const-string v0, "WifiAwareStateManager"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 384
    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    .line 385
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const-string v1, "WifiAwareStateManager"

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 386
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->setDbg(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->start()V

    .line 389
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 390
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 394
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mLocationManager:Landroid/location/LocationManager;

    .line 395
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 426
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareStateManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$2;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 439
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 440
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    return-void
.end method

.method public startLate()V
    .locals 0

    .line 459
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->delayedInitialization()V

    .line 460
    return-void
.end method

.method public subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 659
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 660
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 661
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 662
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 663
    return-void
.end method

.method public terminateSession(II)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 617
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 618
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 619
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 620
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 622
    return-void
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 643
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 645
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 646
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 647
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 648
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 649
    return-void
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 671
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 672
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 673
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 674
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 676
    return-void
.end method
