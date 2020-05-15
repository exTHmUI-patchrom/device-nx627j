.class public final Lcom/qti/dpm/DpmService;
.super Lcom/qti/dpm/IDpmService$Stub;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmService$DpmReceiver;,
        Lcom/qti/dpm/DpmService$DpmSender;,
        Lcom/qti/dpm/DpmService$ApnTypeToInt;,
        Lcom/qti/dpm/DpmService$DpmWwanInfo;,
        Lcom/qti/dpm/DpmService$DpmWifiInfo;,
        Lcom/qti/dpm/DpmService$DpmRatInfo;,
        Lcom/qti/dpm/DpmService$FeatureType;,
        Lcom/qti/dpm/DpmService$TCMFeatureType;
    }
.end annotation


# static fields
.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field public static final CT_FEATURE:I = 0x2

.field private static final DBG:Z = false

.field private static final DPM_APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field private static final DPM_APN_TYPE_DEFAULT_INT:I = 0x0

.field private static final DPM_CONFIG_FEATURE_MASK_FD:I = 0x1

.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field private static final DPM_CONFIG_FEATURE_MASK_TCM:I = 0x8

.field static final DPM_DEBUG_LOGLEVEL:I = 0xf86

.field private static final DPM_ENABLE_PROPERTY_MASK:I = 0xb

.field public static final DPM_INTERNET_CONNECTED_ACTION:Ljava/lang/String; = "com.qti.dpmframework.DPM_INTERNET_CONNECTED"

.field static final DPM_MAX_COMMAND_BYTES:I = 0x2000

.field static final DPM_NET_SUBTYPE_WLAN_B:I = 0x14

.field static final DPM_NET_SUBTYPE_WLAN_G:I = 0x15

.field public static final DPM_PREFERENCE_CHANGED_ACTION:Ljava/lang/String; = "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

.field public static final DPM_RET_BUSY:I = -0x2

.field public static final DPM_RET_ERROR:I = -0x1

.field public static final DPM_RET_FEATURE_UNSUPPORTED:I = -0x4

.field public static final DPM_RET_FILE_SIZE_TOO_LARGE:I = -0x5

.field public static final DPM_RET_INVALID_ARGS:I = -0x3

.field public static final DPM_RET_INVALID_TRIGGER_TYPE:I = -0x9

.field public static final DPM_RET_INVALID_VERSION:I = -0x8

.field public static final DPM_RET_MAX_NO_TRIGGERS:I = -0xc

.field public static final DPM_RET_NO_MEMORY:I = -0xb

.field public static final DPM_RET_PATH_ACCESS_DENIED:I = -0x6

.field public static final DPM_RET_PATH_NAME_TOO_LONG:I = -0x7

.field public static final DPM_RET_SUCCESS:I = 0x3e8

.field public static final DPM_RET_TRIGGER_OPERATION_UNSUPPORTED:I = -0xa

.field static final DPM_S_NOTIFY_INIT_DONE:I = 0x9

.field static final DPM_S_NOTIFY_SCREEN_STATE_CHG:I = 0xe

.field static final DPM_S_NOTIFY_SUPL_CHANGE:I = 0x16

.field static final DPM_S_NOTIFY_TETHERING_STATE_CHG:I = 0xf

.field static final DPM_S_NOTIFY_VENDOR_TRIGGER_STATE_CHG:I = 0x10

.field static final DPM_S_NOTIFY_WLAN_STATE_CHG:I = 0xa

.field static final DPM_S_NOTIFY_WWAN_STATE_CHG:I = 0xb

.field static final DPM_S_REQ_GET_FEATURE_STATUS:I = 0x2

.field static final DPM_S_REQ_SET_FEATURE_STATUS:I = 0x4

.field static final DPM_S_REQ_UPDATE_FD_PARAMS:I = 0x17

.field static final DPM_S_RSP_GET_FEATURE_STATUS:I = 0x3

.field static final DPM_S_RSP_SET_FEATURE_STATUS:I = 0x5

.field static final DPM_VERBOSE_LOGLEVEL:I = 0x1e91

.field private static ELAPSED_TIME_INDEX:I = 0x0

.field public static final EVENT_POSTDPMDINIT:I = 0x3

.field public static final EVENT_SEND:I = 0x1

.field public static final EVENT_TOGGLE_WIFI:I = 0x2

.field public static final EXTRA_FEATURE_ID:Ljava/lang/String; = "dpmFeatureId"

.field public static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "dpmFeatureParameter"

.field public static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "dpmParameterValue"

.field public static final EXTRA_TCM_FEATURE:I = 0x2

.field public static final EXTRA_TCM_FEATURE_ENABLED:I = 0x1

.field public static final FD_FEATURE:I = 0x1

.field private static final MAX_DNS_ADDRS:I = 0x2

.field private static final NSRM_TURN_OFF:I = 0x1

.field private static PID_INDEX:I = 0x0

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_DPM:Ljava/lang/String; = "dpmd"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final SUB_TYPE:Ljava/lang/String; = "SERVICE"

.field public static final TCM_FEATURE:I = 0x4

.field private static UID_INDEX:I = 0x0

.field public static final dataPath:Ljava/lang/String; = "/data/dpm/"

.field static isDispatched:Z = false

.field static isDpmdDisconnected:Z = false

.field static isDpmdUp:Z = false

.field public static final systemPath:Ljava/lang/String; = "/system/etc/dpm/"


# instance fields
.field DPM_EVENT_STATE_OFF:Z

.field DPM_EVENT_STATE_ON:Z

.field private _dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

.field private _dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

.field apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

.field private bDpmdCmd:Z

.field private bluetoothTethered:Z

.field private hashSize:I

.field private id:I

.field private mContext:Landroid/content/Context;

.field private mDefaultNetwork:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/dpm/DpmRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field mSender:Lcom/qti/dpm/DpmService$DpmSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field private mTcmRuntimeFeatureRequestedStatus:I

.field private mTcmRuntimeFeatureStatus:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field processesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private usbTethered:Z

.field private wifiTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    const/4 v0, 0x0

    sput v0, Lcom/qti/dpm/DpmService;->PID_INDEX:I

    .line 127
    const/4 v1, 0x1

    sput v1, Lcom/qti/dpm/DpmService;->UID_INDEX:I

    .line 128
    const/4 v1, 0x2

    sput v1, Lcom/qti/dpm/DpmService;->ELAPSED_TIME_INDEX:I

    .line 141
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 144
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    .line 147
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDispatched:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 888
    invoke-direct {p0}, Lcom/qti/dpm/IDpmService$Stub;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    .line 118
    iput-boolean v0, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    .line 119
    iput-boolean v0, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    .line 187
    const/4 v1, -0x1

    iput v1, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    .line 188
    iput v1, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    .line 208
    iput-boolean v0, p0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    .line 214
    iput v0, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    .line 215
    iput-boolean v1, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 217
    iput v0, p0, Lcom/qti/dpm/DpmService;->id:I

    .line 221
    const/16 v2, 0x11

    iput v2, p0, Lcom/qti/dpm/DpmService;->mDefaultNetwork:I

    .line 433
    new-instance v2, Lcom/qti/dpm/DpmService$ApnTypeToInt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/qti/dpm/DpmService$ApnTypeToInt;-><init>(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$1;)V

    iput-object v2, p0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    .line 435
    new-instance v2, Lcom/qti/dpm/DpmService$1;

    invoke-direct {v2, p0}, Lcom/qti/dpm/DpmService$1;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v2, p0, Lcom/qti/dpm/DpmService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 891
    iput v0, p0, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 892
    iput-object p1, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    .line 894
    const-string v2, "persist.vendor.dpm.feature"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 896
    .local v2, "dpmFeature":I
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "DPMSender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    .line 897
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 899
    const-string v3, "persist.vendor.dpm.loglevel"

    const/16 v4, 0xf86

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 900
    .local v3, "val":I
    if-eq v3, v4, :cond_0

    const/16 v4, 0x1e91

    if-ne v3, v4, :cond_1

    .line 901
    :cond_0
    sput-boolean v1, Lcom/qti/dpm/DpmMsg;->ADDTL_MSG:Z

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 905
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_2

    .line 906
    const-string v0, "SERVICE"

    const-string v4, "Looper obj is NULL."

    invoke-static {v0, v4}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void

    .line 909
    :cond_2
    new-instance v4, Lcom/qti/dpm/DpmService$DpmSender;

    invoke-direct {v4, p0, v1}, Lcom/qti/dpm/DpmService$DpmSender;-><init>(Lcom/qti/dpm/DpmService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    .line 911
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 912
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 915
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 918
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 919
    const-string v5, "SERVICE"

    const-string v6, "DPM SERVICE REGISTER SERVICE FOR NETWORK CHANGE."

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v5, p0, Lcom/qti/dpm/DpmService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 923
    iget-object v5, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 924
    iget-object v5, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 925
    iget-object v5, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    .line 926
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 929
    .local v5, "mCmDpm":Landroid/net/ConnectivityManager;
    iget-object v6, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 930
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.qti.dpmframework.DPM_INTERNET_CONNECTED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "state"

    const-string v8, "CONNECTED"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 933
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    const-string v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dpmd link properties "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v7, "apnType"

    const-string v8, "default"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    if-eqz v0, :cond_3

    .line 936
    const-string v7, "linkProperties"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 940
    :cond_3
    const-string v7, "SERVICE"

    const-string v8, "dpmd : linkpropeties is null"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :goto_0
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 943
    .end local v0    # "linkProperties":Landroid/net/LinkProperties;
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 945
    :cond_4
    const-string v0, "SERVICE"

    const-string v6, "dpmd : No internet connection"

    invoke-static {v0, v6}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_1
    new-instance v0, Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmService$DpmWifiInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .line 949
    new-instance v0, Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmService$DpmWwanInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .line 950
    new-instance v0, Lcom/qti/dpm/DpmService$DpmReceiver;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmService$DpmReceiver;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmService;->mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

    .line 951
    new-instance v0, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/qti/dpm/DpmService;->mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

    const-string v7, "DPMReceiver"

    invoke-direct {v0, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmService;->mReceiverThread:Ljava/lang/Thread;

    .line 952
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 953
    return-void
.end method

.method private NetworkStateStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .line 1026
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "CONNECTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1038
    const/4 v0, 0x5

    return v0

    .line 1036
    :pswitch_0
    return v4

    .line 1034
    :pswitch_1
    return v2

    .line 1032
    :pswitch_2
    return v5

    .line 1030
    :pswitch_3
    return v1

    .line 1028
    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7c6dfd17 -> :sswitch_4
        -0x3eb5be5a -> :sswitch_3
        -0x11519548 -> :sswitch_2
        0x37c8963b -> :sswitch_1
        0x430d9dbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .line 1043
    sget-object v0, Lcom/qti/dpm/DpmService$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1057
    const/4 v0, -0x1

    return v0

    .line 1055
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1053
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1051
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1049
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1047
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1045
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/qti/dpm/DpmService;Landroid/net/NetworkInfo$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->setWwanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qti/dpm/DpmService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendSuplState(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/qti/dpm/DpmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->postDpmdUpInit()V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->sendInitReq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/qti/dpm/DpmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->requestFeaturesSettings()V

    return-void
.end method

.method static synthetic access$2700(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->readDPMMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/qti/dpm/DpmService;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .line 77
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->setWlanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .line 77
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    return-void
.end method

.method private static dlogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1367
    return-void
.end method

.method private static dloge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1379
    return-void
.end method

.method private static dlogi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1373
    return-void
.end method

.method private static dlogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1370
    return-void
.end method

.method private static dlogw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1376
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 974
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 975
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 976
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/dpm/DpmRequest;

    .line 977
    .local v3, "rr":Lcom/qti/dpm/DpmRequest;
    iget v4, v3, Lcom/qti/dpm/DpmRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 978
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 979
    monitor-exit v0

    return-object v3

    .line 975
    .end local v3    # "rr":Lcom/qti/dpm/DpmRequest;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    monitor-exit v0

    .line 983
    const/4 v0, 0x0

    return-object v0

    .line 982
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1351
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1363
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method private static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1357
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method private static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1354
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method private static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1360
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    return-void
.end method

.method private postDpmdUpInit()V
    .locals 2

    .line 854
    const-string v0, "SERVICE"

    const-string v1, "starting initialization of components that require dpmd to have started"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v0

    .line 861
    .local v0, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v0, :cond_0

    .line 862
    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v1

    .line 865
    .local v1, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v1, :cond_1

    .line 866
    invoke-direct {p0, v1}, Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    .line 868
    :cond_1
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 963
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 964
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processUnsolicited(Landroid/os/Parcel;)V

    goto :goto_0

    .line 965
    :cond_0
    if-nez v0, :cond_1

    .line 966
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0

    .line 968
    :cond_1
    const-string v1, "SERVICE"

    const-string v2, "malformed message, expected RESPONSE_UNSOLICITED or RESPONSE_SOLICITED, rejecting"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :goto_0
    return-void
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .local v0, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .local v1, "error":I
    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v2

    .line 992
    .local v2, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v2, :cond_0

    .line 993
    const-string v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected solicited response! sn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return-void

    .line 997
    :cond_0
    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {v2, v1}, Lcom/qti/dpm/DpmRequest;->onError(I)V

    .line 999
    invoke-virtual {v2}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 1000
    return-void

    .line 1002
    :cond_1
    invoke-virtual {v2}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 1003
    return-void
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1006
    const-string v0, "SERVICE"

    const-string v1, "processUnsolicited called"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1010
    .local v0, "response":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1020
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKOWN Unsolicited Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_0
    const-string v1, "SERVICE"

    const-string v2, "DPM_S_RESP_SET_FEATURE_STATUS received"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleFeatureStatusSetResponse(Landroid/os/Parcel;)V

    .line 1014
    goto :goto_0

    .line 1016
    :cond_1
    const-string v1, "SERVICE"

    const-string v2, "DPM_S_RSP_GET_FEATURE_STATUS"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleFeatureStatusNotification(Landroid/os/Parcel;)V

    .line 1018
    nop

    .line 1022
    :goto_0
    return-void
.end method

.method private static readDPMMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "offset":I
    const/4 v1, 0x4

    .line 697
    .local v1, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 699
    .local v2, "countRead":I
    const/4 v3, -0x1

    if-gez v2, :cond_1

    .line 700
    const-string v4, "SERVICE"

    const-string v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return v3

    .line 704
    :cond_1
    add-int/2addr v0, v2

    .line 705
    sub-int/2addr v1, v2

    .line 706
    if-gtz v1, :cond_0

    .line 708
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 713
    .local v4, "messageLength":I
    const/4 v0, 0x0

    .line 714
    move v1, v4

    .line 716
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 718
    if-gez v2, :cond_3

    .line 719
    const-string v5, "SERVICE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return v3

    .line 724
    :cond_3
    add-int/2addr v0, v2

    .line 725
    sub-int/2addr v1, v2

    .line 726
    if-gtz v1, :cond_2

    .line 728
    return v4
.end method

.method private requestFeatureSettings(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .line 875
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 876
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 877
    const-string v1, "SERVICE"

    const-string v2, "requestFeatureSettings: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/4 v1, 0x0

    return v1

    .line 880
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    const-string v1, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFeatureSettings: featureId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 884
    return v2
.end method

.method private requestFeaturesSettings()V
    .locals 1

    .line 871
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->requestFeatureSettings(I)Z

    .line 872
    return-void
.end method

.method private static rlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1385
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method private sendAppInfoList(Lcom/qti/dpm/DpmRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    .line 1176
    const-string v0, "SERVICE"

    const-string v1, "sendAppInfoList"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1178
    return-void
.end method

.method private sendInitReq()Z
    .locals 3

    .line 1166
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1167
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1168
    const-string v1, "SERVICE"

    const-string v2, "sendinitReq: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const/4 v1, 0x0

    return v1

    .line 1171
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1172
    const/4 v1, 0x1

    return v1
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1140
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1141
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1142
    const-string v1, "SERVICE"

    const-string v2, "sendScreenState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void

    .line 1145
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendScreenState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1150
    return-void
.end method

.method private sendSuplState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1181
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1182
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1183
    const-string v1, "SERVICE"

    const-string v2, "sendTetheringState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return-void

    .line 1186
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSuplState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1191
    return-void
.end method

.method private sendTetheringState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1153
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1154
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1155
    const-string v1, "SERVICE"

    const-string v2, "sendTetheringState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return-void

    .line 1158
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTetheringState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1163
    return-void
.end method

.method private sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    .locals 4
    .param p1, "dpmWifiInfo"    # Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .line 1061
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1064
    :try_start_0
    const-string v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWifiStatus - subType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " networkState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " softApState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipV4Addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ifNameV4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipAddrV6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ifNameV6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1077
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1078
    const-string v1, "SERVICE"

    const-string v2, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void

    .line 1082
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1086
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1087
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1088
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1089
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1091
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "rr":Lcom/qti/dpm/DpmRequest;
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWifiStatus: null pointer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_1

    .line 1098
    :cond_1
    const-string v0, "SERVICE"

    const-string v1, "sendWlanStatus: null mWifiManager or dpmWifiInfo"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :goto_1
    return-void
.end method

.method private sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    .locals 4
    .param p1, "dpmWwanInfo"    # Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .line 1103
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1105
    const/16 v0, 0xb

    :try_start_0
    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1106
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1107
    const-string v1, "SERVICE"

    const-string v2, "sendWwanStatus: rr=NULL - no updated"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_0
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWwanStatus type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ipV4Addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifNameV4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipV6Addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifNameV6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mccMnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1125
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1126
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1127
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1128
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "rr":Lcom/qti/dpm/DpmRequest;
    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWwanStatus: null pointer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_1

    .line 1135
    :cond_1
    const-string v0, "SERVICE"

    const-string v1, "sendWwanStatus: null TelephonyManager or dpmWwanInfo"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :goto_1
    return-void
.end method

.method private setWlanInfo(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 284
    if-nez p1, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 289
    .local v0, "dpmNi":Landroid/net/NetworkInfo;
    const-string v1, "linkProperties"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 290
    .local v1, "dpmLp":Landroid/net/LinkProperties;
    const-string v2, "bssid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "bssid":Ljava/lang/String;
    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    .line 292
    .local v3, "dpmWi":Landroid/net/wifi/WifiInfo;
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    const/16 v5, 0x15

    iput v5, v4, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    .line 294
    if-eqz v0, :cond_1

    .line 295
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/dpm/DpmService;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v5

    iput v5, v4, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    .line 298
    :cond_1
    if-eqz v1, :cond_4

    .line 299
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v4

    .line 300
    .local v4, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 301
    .local v6, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 302
    .local v7, "addr":Ljava/net/InetAddress;
    instance-of v8, v7, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 303
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 304
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 305
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_1

    .line 308
    :cond_2
    instance-of v8, v7, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    .line 309
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 310
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 311
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    .line 314
    .end local v6    # "linkAddress":Landroid/net/LinkAddress;
    .end local v7    # "addr":Ljava/net/InetAddress;
    :cond_3
    :goto_1
    goto :goto_0

    .line 317
    .end local v4    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_4
    if-eqz v3, :cond_5

    .line 318
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iput v5, v4, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    .line 319
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    .line 323
    :cond_5
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_6

    .line 324
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    iget-object v5, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    iput v5, v4, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    .line 326
    :cond_6
    return-void
.end method

.method private setWwanInfo(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 333
    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "state":Ljava/lang/String;
    iget-object v3, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-direct {v0, v2}, Lcom/qti/dpm/DpmService;->NetworkStateStringToInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    .line 339
    const-string v3, "apnType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "apnType":Ljava/lang/String;
    iget-object v4, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    iget-object v5, v0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    invoke-static {v5, v3}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->access$100(Lcom/qti/dpm/DpmService$ApnTypeToInt;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    .line 341
    const-string v4, "linkProperties"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    .line 342
    .local v4, "lp":Landroid/net/LinkProperties;
    if-eqz v4, :cond_7

    .line 343
    iget-object v5, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    const-string v6, ""

    iput-object v6, v5, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 344
    iget-object v5, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    const-string v6, ""

    iput-object v6, v5, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    .line 345
    iget-object v5, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    const-string v6, ""

    iput-object v6, v5, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 346
    iget-object v5, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    const-string v6, ""

    iput-object v6, v5, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    .line 347
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    .line 348
    .local v5, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 349
    .local v7, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 350
    .local v8, "addr":Ljava/net/InetAddress;
    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1

    .line 351
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_6

    .line 352
    iget-object v9, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 353
    iget-object v9, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto/16 :goto_4

    .line 355
    :cond_1
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_6

    .line 356
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_2

    .line 357
    iget-object v9, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 358
    iget-object v9, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    .line 360
    :cond_2
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkProperties;

    .line 361
    .local v10, "link":Landroid/net/LinkProperties;
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "clat4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 362
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v11

    .line 363
    .local v11, "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 364
    .local v13, "stackedLinkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    .line 365
    .local v14, "address":Ljava/net/InetAddress;
    instance-of v15, v14, Ljava/net/Inet4Address;

    if-eqz v15, :cond_3

    .line 366
    invoke-virtual {v14}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v14}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v15

    if-nez v15, :cond_3

    .line 367
    iget-object v15, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 368
    iget-object v1, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    .line 371
    .end local v13    # "stackedLinkAddress":Landroid/net/LinkAddress;
    .end local v14    # "address":Ljava/net/InetAddress;
    :cond_3
    nop

    .line 363
    move-object/from16 v1, p1

    goto :goto_2

    .line 372
    .end local v11    # "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_4
    goto :goto_3

    .line 375
    :cond_5
    const-string v1, "SERVICE"

    const-string v11, "no clat4 interface present for ipv6 address"

    invoke-static {v1, v11}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v10    # "link":Landroid/net/LinkProperties;
    :goto_3
    nop

    .line 360
    move-object/from16 v1, p1

    goto :goto_1

    .line 379
    .end local v7    # "linkAddress":Landroid/net/LinkAddress;
    .end local v8    # "addr":Ljava/net/InetAddress;
    :cond_6
    :goto_4
    nop

    .line 348
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 382
    .end local v5    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_7
    iget-object v1, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8

    .line 383
    iget-object v1, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    iget-object v5, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    iput v5, v1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    .line 384
    iget-object v1, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    iget-object v5, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    .line 385
    iget-object v1, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    iget-object v5, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v5

    iput v5, v1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    .line 387
    :cond_8
    return-void
.end method


# virtual methods
.method public checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z
    .locals 5
    .param p1, "feature"    # Lcom/qti/dpm/DpmService$FeatureType;

    .line 1209
    const-string v0, "persist.vendor.dpm.feature"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1210
    .local v0, "value":I
    const/4 v1, 0x0

    .line 1211
    .local v1, "enabled":Z
    sget-object v2, Lcom/qti/dpm/DpmService$2;->$SwitchMap$com$qti$dpm$DpmService$FeatureType:[I

    invoke-virtual {p1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1221
    const/4 v1, 0x0

    goto :goto_0

    .line 1217
    :pswitch_0
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v3, :cond_0

    .line 1218
    const/4 v1, 0x1

    goto :goto_0

    .line 1213
    :pswitch_1
    and-int/lit8 v2, v0, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 1214
    const/4 v1, 0x1

    .line 1224
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1225
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const/4 v2, 0x0

    return v2

    .line 1228
    :cond_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTCMFeatureEnabled()I
    .locals 2

    .line 1267
    const-string v0, "SERVICE"

    const-string v1, "getTCMFeatureEnabled()"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    monitor-enter p0

    .line 1269
    :try_start_0
    sget-object v0, Lcom/qti/dpm/DpmService$FeatureType;->TCM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    .line 1272
    :cond_0
    iget v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1273
    iget v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    monitor-exit p0

    return v0

    .line 1275
    :cond_1
    sget-object v0, Lcom/qti/dpm/DpmService$TCMFeatureType;->OFF:Lcom/qti/dpm/DpmService$TCMFeatureType;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmService$TCMFeatureType;->value()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    return-object v0
.end method

.method getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    return-object v0
.end method

.method public handleFeatureStatusNotification(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1297
    .local v0, "featureId":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1298
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleTcmFeatureStatuNotification(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1300
    :cond_0
    const-string v1, "SERVICE"

    const-string v2, "handleFeatureStatusNotification(): unknown feature id."

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :goto_0
    return-void
.end method

.method public handleFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1315
    .local v0, "featureId":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1316
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleTcmFeatureStatusSetResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1318
    :cond_0
    const-string v1, "SERVICE"

    const-string v2, "handleFeatureStatusNotification(): unknown feature id."

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :goto_0
    return-void
.end method

.method public handleTcmFeatureStatuNotification(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1306
    .local v0, "featureStatus":I
    monitor-enter p0

    .line 1307
    :try_start_0
    iput v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    .line 1308
    iput v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    .line 1309
    monitor-exit p0

    .line 1310
    return-void

    .line 1309
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTcmFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1325
    .local v0, "featureStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1327
    .local v1, "error":I
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTcmFeatureStatusSetResponse(): feature status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    monitor-enter p0

    .line 1329
    :try_start_0
    iput v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    .line 1330
    iput v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    .line 1331
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    const/4 v2, 0x2

    const/4 v3, 0x1

    iget v4, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/qti/dpm/DpmService;->sendPrefChangedBroadcast(III)V

    .line 1333
    return-void

    .line 1331
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public requestFeatureSettingsChange(II)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "newValue"    # I

    .line 1194
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1195
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1196
    const-string v1, "SERVICE"

    const-string v2, "requestFeatureSettingsChange: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/4 v1, 0x0

    return v1

    .line 1199
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFeatureSettingsChange: feature id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1205
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized send(Lcom/qti/dpm/DpmRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    monitor-enter p0

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/qti/dpm/DpmService$DpmSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    monitor-exit p0

    return-void

    .line 955
    .end local v0    # "msg":Landroid/os/Message;
    .end local p1    # "rr":Lcom/qti/dpm/DpmRequest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qti/dpm/DpmService;
    throw p1
.end method

.method public declared-synchronized sendPrefChangedBroadcast(III)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "featureParameter"    # I
    .param p3, "value"    # I

    monitor-enter p0

    .line 1337
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dpmFeatureId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1339
    const-string v1, "dpmFeatureParameter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1340
    const-string v1, "dpmParameterValue"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :try_start_1
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BROADCAST_STICKY"

    const-string v3, "DPM sendPrefChangedBroadcast()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    goto :goto_0

    .line 1345
    :catch_0
    move-exception v1

    .line 1346
    .local v1, "se":Ljava/lang/SecurityException;
    :try_start_2
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPrefChangedBroadcast() SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1348
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_0
    monitor-exit p0

    return-void

    .line 1336
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p1    # "featureId":I
    .end local p2    # "featureParameter":I
    .end local p3    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qti/dpm/DpmService;
    throw p1
.end method

.method public setTCMFeature(I)I
    .locals 3
    .param p1, "value"    # I

    .line 1249
    const-string v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTCMFeature() tcmSetType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    sget-object v0, Lcom/qti/dpm/DpmService$FeatureType;->TCM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    .line 1255
    :cond_0
    iget v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    const/16 v1, 0x3e8

    if-ne v0, p1, :cond_1

    .line 1256
    monitor-exit p0

    return v1

    .line 1258
    :cond_1
    iput p1, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    .line 1260
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/qti/dpm/DpmService;->requestFeatureSettingsChange(II)Z

    .line 1261
    monitor-exit p0

    return v1

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFdConfigParams(IIII)I
    .locals 2
    .param p1, "delayTime"    # I
    .param p2, "screenOnTime"    # I
    .param p3, "screenOffTime"    # I
    .param p4, "tetheringTime"    # I

    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_0
    sget-object v0, Lcom/qti/dpm/DpmService$FeatureType;->FD:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    .line 1287
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/dpm/DpmService;->updateFdConfigParamsInt(IIII)Z

    move-result v0

    .line 1288
    .local v0, "retVal":Z
    if-nez v0, :cond_1

    .line 1289
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1291
    :cond_1
    const/16 v1, 0x3e8

    monitor-exit p0

    return v1

    .line 1292
    .end local v0    # "retVal":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFdConfigParamsInt(IIII)Z
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "screenOnTime"    # I
    .param p3, "screenOffTime"    # I
    .param p4, "tetheringTime"    # I

    .line 1233
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1234
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1235
    const-string v1, "SERVICE"

    const-string v2, "updateFdConfigParams : rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/4 v1, 0x0

    return v1

    .line 1238
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1244
    const/4 v1, 0x1

    return v1
.end method
