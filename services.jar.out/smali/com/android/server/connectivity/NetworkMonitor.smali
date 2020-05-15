.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$Receiver;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_CAPTIVE_PORTAL_RETURN_UNWANTED:I = 0x82010

.field private static final CMD_EVALUATE_PRIVATE_DNS:I = 0x8200f

.field private static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x8200d

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field private static final EVALUATE_SERVER1:Ljava/lang/String; = "connecthb.rom.nubia.net.cn"

.field private static final EVALUATE_SERVER2:Ljava/lang/String; = "connecthd.rom.nubia.net.cn"

.field private static final EVALUATE_SERVER3:Ljava/lang/String; = "connecthn.rom.nubia.net.cn"

.field private static final EVALUATE_SERVER4:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field private static final EVALUATE_SERVER_NUM:I = 0x4

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x8200e

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final KEYGUARD_IS_SHOWING:Ljava/lang/String; = "keyguard_is_showing"

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_PORTAL:I = 0x2

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final NO_UID:I = 0x0

.field private static final NUM_VALIDATION_LOG_LINES:I = 0x14

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final VALIDATE_REEVALUATE_DELAY_MS:I = 0x1d4c0

.field private static final VDBG:Z = false

.field private static final WIFI_STORE_REEVALUTE_COUNT:Ljava/lang/String; = "WIFI_STORE_REEVALUTE_COUNT"

.field private static sReevaluteCount:I


# instance fields
.field private final mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

.field private final mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private mCaptivePortalHttpUrl:Ljava/net/URL;

.field private final mCaptivePortalHttpsUrl:Ljava/net/URL;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mCaptivePortalUserAgent:Ljava/lang/String;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field private mFilter:Landroid/content/IntentFilter;

.field protected mIsCaptivePortalCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastCaptivePortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field private mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mNeedCheck:Z

.field private final mNetId:I

.field private final mNetwork:Landroid/net/Network;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mNextFallbackUrlIndex:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPrivateDnsProviderHostname:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReevaluateToken:I

.field private mScreenOffDetectCount:I

.field private mScreenOn:Z

.field private final mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private mValidations:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    sput v0, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .line 351
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    sget-object v6, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V

    .line 353
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;
    .param p6, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 263
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 272
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOffDetectCount:I

    .line 273
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOn:Z

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastCaptivePortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 285
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    .line 322
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    .line 325
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 327
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 329
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 331
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 332
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 333
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 334
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 335
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 336
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    .line 338
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 340
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 342
    new-instance v1, Landroid/net/util/Stopwatch;

    invoke-direct {v1}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    .line 345
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 347
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setDbg(Z)V

    .line 366
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 367
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 368
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 369
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    .line 370
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 371
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    .line 372
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 373
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 374
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 375
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 377
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 379
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getIsCaptivePortalCheckEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 386
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getUseHttpsValidation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 389
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 390
    .local v0, "power":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOn:Z

    .line 391
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_STORE_REEVALUTE_COUNT"

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 392
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 391
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    .line 393
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mFilter:Landroid/content/IntentFilter;

    .line 394
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mObserver:Landroid/database/ContentObserver;

    .line 413
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 415
    invoke-static {p6, p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 416
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 417
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 419
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 420
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic access$2808(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 100
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3704(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendCaptivePortalBroadcast(Landroid/net/captiveportal/CaptivePortalProbeResult;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/ProxyInfo;
    .param p2, "x2"    # Ljava/net/URL;
    .param p3, "x3"    # I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOffDetectCount:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNeedCheck:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNeedCheck:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/NetworkMonitor;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1059
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    invoke-static {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1069
    const-string v0, "captive_portal_http_url"

    const-string v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "server":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/connectivity/NBWifiUtils;->hasCtsPackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    return-object v0

    .line 1074
    :cond_0
    sget v1, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1085
    :pswitch_0
    const-string v0, "connectivitycheck.gstatic.com"

    .line 1086
    goto :goto_0

    .line 1082
    :pswitch_1
    const-string v0, "connecthn.rom.nubia.net.cn"

    .line 1083
    goto :goto_0

    .line 1079
    :pswitch_2
    const-string v0, "connecthd.rom.nubia.net.cn"

    .line 1080
    goto :goto_0

    .line 1076
    :pswitch_3
    const-string v0, "connecthb.rom.nubia.net.cn"

    .line 1077
    nop

    .line 1090
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCaptivePortalServerHttpsUrl()Ljava/lang/String;
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_https_url"

    const-string v3, "https://www.google.com/generate_204"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalUserAgent()Ljava/lang/String;
    .locals 4

    .line 1139
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_user_agent"

    const-string v3, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidationRequired()Z
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method public static isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p0, "dfltNetCap"    # Landroid/net/NetworkCapabilities;
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 290
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private logNetworkEvent(I)V
    .locals 4
    .param p1, "evtype"    # I

    .line 1587
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1588
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p1}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1589
    return-void
.end method

.method private logValidationProbe(JII)V
    .locals 5
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "probeResult"    # I

    .line 1616
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1617
    .local v0, "transports":[I
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    .line 1618
    .local v1, "isFirstValidation":Z
    new-instance v2, Landroid/net/metrics/ValidationProbeEvent;

    invoke-direct {v2}, Landroid/net/metrics/ValidationProbeEvent;-><init>()V

    .line 1619
    .local v2, "ev":Landroid/net/metrics/ValidationProbeEvent;
    invoke-static {p3, v1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 1620
    iput p4, v2, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 1621
    iput-wide p1, v2, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 1622
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1623
    return-void
.end method

.method private makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 4

    .line 1123
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v3, "captive_portal_fallback_probe_specs"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, "settingsValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    return-object v0

    .line 1130
    :cond_0
    invoke-static {v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseCaptivePortalProbeSpecs(Ljava/lang/String;)[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1131
    .end local v1    # "settingsValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1133
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback probe specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    return-object v0
.end method

.method private makeCaptivePortalFallbackUrls()[Ljava/net/URL;
    .locals 10

    .line 1096
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ","

    .line 1097
    .local v1, "separator":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v4, "captive_portal_fallback_url"

    const-string v5, "http://www.google.com/gen_204"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    .local v2, "firstUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v6, "captive_portal_other_fallback_urls"

    const-string v7, "http://play.googleapis.com/generate_204"

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "joinedUrls":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1104
    .local v8, "s":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 1105
    .local v9, "u":Ljava/net/URL;
    if-nez v9, :cond_0

    .line 1106
    goto :goto_1

    .line 1108
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "u":Ljava/net/URL;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1111
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v6, "could not create any url from %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/net/URL;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1114
    .end local v1    # "separator":Ljava/lang/String;
    .end local v2    # "firstUrl":Ljava/lang/String;
    .end local v3    # "joinedUrls":Ljava/lang/String;
    .end local v4    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catch_0
    move-exception v1

    .line 1116
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback URLs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    new-array v0, v0, [Ljava/net/URL;

    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 1484
    if-eqz p1, :cond_0

    .line 1486
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1491
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeLogEvaluationResult(I)V
    .locals 6
    .param p1, "evtype"    # I

    .line 1608
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1610
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1611
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->reset()V

    .line 1613
    .end local v0    # "transports":[I
    :cond_0
    return-void
.end method

.method private networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .locals 1
    .param p1, "s"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "r"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 1592
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    if-eqz v0, :cond_1

    .line 1593
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_0

    .line 1594
    const/16 v0, 0x8

    return v0

    .line 1596
    :cond_0
    const/16 v0, 0xa

    return v0

    .line 1599
    :cond_1
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_2

    .line 1600
    const/16 v0, 0x9

    return v0

    .line 1602
    :cond_2
    const/16 v0, 0xb

    return v0
.end method

.method private nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const/4 v0, 0x0

    return-object v0

    .line 1157
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1158
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .locals 3

    .line 1144
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1145
    const/4 v0, 0x0

    return-object v0

    .line 1147
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1148
    .local v0, "idx":I
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 1149
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    const v2, 0x82002

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method private sendCaptivePortalBroadcast(Landroid/net/captiveportal/CaptivePortalProbeResult;)V
    .locals 3
    .param p1, "result"    # Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1661
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.captiveportal.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1665
    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1666
    const/4 v1, 0x0

    .local v1, "state":I
    :goto_0
    goto :goto_1

    .line 1667
    .end local v1    # "state":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1668
    const/4 v1, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    const/4 v1, 0x2

    .line 1672
    .restart local v1    # "state":I
    :goto_1
    const-string v2, "captiveState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1673
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1674
    return-void
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "probeType"    # I

    .line 1245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "host":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsProbe(Ljava/lang/String;)V

    .line 1247
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v1

    return-object v1
.end method

.method private sendDnsProbe(Ljava/lang/String;)V
    .locals 11
    .param p1, "host"    # Ljava/lang/String;

    .line 1252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    return-void

    .line 1256
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1257
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/net/util/Stopwatch;

    invoke-direct {v2}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v2

    .line 1261
    .local v2, "watch":Landroid/net/util/Stopwatch;
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 1262
    .local v4, "addresses":[Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1263
    .local v5, "buffer":Ljava/lang/StringBuffer;
    array-length v6, v4

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    .line 1264
    .local v8, "address":Ljava/net/InetAddress;
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1263
    .end local v8    # "address":Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1266
    :cond_1
    const/4 v6, 0x1

    .line 1267
    .local v6, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    move-object v4, v7

    .line 1271
    .local v4, "connectInfo":Ljava/lang/String;
    goto :goto_1

    .line 1268
    .end local v4    # "connectInfo":Ljava/lang/String;
    .end local v6    # "result":I
    :catch_0
    move-exception v4

    .line 1269
    .local v4, "e":Ljava/net/UnknownHostException;
    const/4 v6, 0x0

    .line 1270
    .restart local v6    # "result":I
    const-string v4, "FAIL"

    .line 1272
    .local v4, "connectInfo":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v7

    .line 1273
    .local v7, "latency":J
    const-string v5, "%dms %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1274
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v0

    aput-object v4, v9, v3

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1273
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1275
    invoke-direct {p0, v7, v8, v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1276
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 7
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getWifiScansAlwaysAvailableDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    return-void

    .line 1507
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v0, :cond_1

    .line 1508
    return-void

    .line 1511
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v0, "latencyBroadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1567
    return-void

    .line 1515
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1516
    .local v1, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    .line 1524
    const-string v2, "extra_ssid"

    .line 1525
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1524
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-string v2, "extra_bssid"

    .line 1527
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 1526
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1530
    :cond_2
    return-void

    .line 1534
    .end local v1    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string v1, "extra_network_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1535
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 1534
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1537
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v1, :cond_3

    return-void

    .line 1538
    :cond_3
    const/4 v2, 0x0

    .line 1539
    .local v2, "numRegisteredCellInfo":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 1540
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1541
    add-int/lit8 v2, v2, 0x1

    .line 1542
    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    .line 1545
    return-void

    .line 1547
    :cond_4
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_5

    .line 1548
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v5

    .line 1549
    .local v5, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1550
    .end local v5    # "cellId":Landroid/telephony/CellIdentityCdma;
    goto :goto_1

    :cond_5
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_6

    .line 1551
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 1552
    .local v5, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1553
    .end local v5    # "cellId":Landroid/telephony/CellIdentityGsm;
    goto :goto_1

    :cond_6
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_7

    .line 1554
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 1555
    .local v5, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1556
    .end local v5    # "cellId":Landroid/telephony/CellIdentityLte;
    goto :goto_1

    :cond_7
    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_8

    .line 1557
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 1558
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1559
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    goto :goto_1

    .line 1561
    :cond_8
    return-void

    .line 1564
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    :goto_1
    goto :goto_0

    .line 1565
    :cond_a
    nop

    .line 1569
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v2    # "numRegisteredCellInfo":I
    :goto_2
    const-string v1, "extra_connectivity_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1570
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1569
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1571
    const-string v1, "extra_response_received"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1573
    const-string v1, "extra_request_timestamp_ms"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1576
    if-eqz p1, :cond_b

    .line 1577
    const-string v1, "extra_is_captive_portal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1579
    const-string v1, "extra_response_timestamp_ms"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1582
    :cond_b
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1584
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 10
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpsUrl"    # Ljava/net/URL;
    .param p3, "httpUrl"    # Ljava/net/URL;

    .line 1403
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1436
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1437
    .local v1, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, v9

    .line 1440
    .local v2, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1442
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1446
    nop

    .line 1448
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1449
    .local v3, "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1452
    .local v4, "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1453
    return-object v4

    .line 1456
    :cond_0
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1461
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v5

    .line 1462
    .local v5, "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v6

    .line 1463
    .local v6, "fallbackUrl":Ljava/net/URL;
    :goto_0
    if-eqz v6, :cond_3

    .line 1464
    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    .line 1465
    .local v7, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1466
    return-object v7

    .line 1471
    .end local v7    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1472
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1473
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    return-object v7

    .line 1475
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1476
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    .line 1477
    :catch_0
    move-exception v7

    .line 1478
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v8, "Error: http or https probe wait interrupted!"

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1479
    sget-object v8, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v8

    .line 1457
    .end local v5    # "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .end local v6    # "fallbackUrl":Ljava/net/URL;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_1
    return-object v3

    .line 1443
    .end local v3    # "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :catch_1
    move-exception v3

    .line 1444
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error: probes wait interrupted!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1445
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4
.end method

.method private validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "probeType"    # I
    .param p2, "url"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    .line 439
    invoke-static {p1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "probeName":Ljava/lang/String;
    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .locals 1

    .line 453
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public forceReevaluation(I)V
    .locals 2
    .param p1, "responsibleUid"    # I

    .line 423
    const v0, 0x82008

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 424
    return-void
.end method

.method public forgetCurrentWifiNetwork()V
    .locals 3

    .line 1650
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1652
    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 1653
    .local v0, "netId":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 1654
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1657
    .end local v0    # "netId":I
    :cond_1
    return-void
.end method

.method public getIsCaptivePortalCheckEnabled()Z
    .locals 4

    .line 1033
    const-string v0, "captive_portal_mode"

    .line 1040
    .local v0, "symbol":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getUseHttpsValidation()Z
    .locals 4

    .line 1045
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_use_https"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScansAlwaysAvailableDisabled()Z
    .locals 4

    .line 1049
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method protected isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1167
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/NBWifiUtils;->hasCtsPackage(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    move v8, v0

    .line 1169
    .local v8, "isWifiNetwork":Z
    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-eqz v0, :cond_9

    if-nez v8, :cond_2

    goto/16 :goto_4

    .line 1175
    :cond_2
    const/4 v0, 0x0

    .line 1176
    .local v0, "pacUrl":Ljava/net/URL;
    iget-object v9, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 1177
    .local v9, "httpsUrl":Ljava/net/URL;
    iget-object v10, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 1196
    .local v10, "httpUrl":Ljava/net/URL;
    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v11

    .line 1197
    .local v11, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v11, :cond_3

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1198
    invoke-virtual {v11}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1199
    if-nez v0, :cond_3

    .line 1200
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v1

    .line 1204
    :cond_3
    move-object v12, v0

    .end local v0    # "pacUrl":Ljava/net/URL;
    .local v12, "pacUrl":Ljava/net/URL;
    if-nez v12, :cond_5

    if-eqz v10, :cond_4

    if-nez v9, :cond_5

    .line 1205
    :cond_4
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1208
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1212
    .local v13, "startTime":J
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/NBWifiUtils;->hasCtsPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1213
    iput-boolean v1, v7, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 1216
    :cond_6
    if-eqz v12, :cond_7

    .line 1217
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v7, v0, v12, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .local v0, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_2
    goto :goto_3

    .line 1218
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_7
    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v0, :cond_8

    .line 1219
    invoke-direct {v7, v11, v9, v10}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_2

    .line 1221
    :cond_8
    invoke-direct {v7, v11, v10, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_3
    move-object v15, v0

    .line 1224
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .local v15, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1226
    .local v16, "endTime":J
    const/4 v1, 0x1

    .line 1227
    invoke-virtual {v15}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    .line 1226
    move-object v0, v7

    move-wide v3, v13

    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1231
    iput-object v15, v7, Lcom/android/server/connectivity/NetworkMonitor;->mLastCaptivePortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1234
    return-object v15

    .line 1171
    .end local v9    # "httpsUrl":Ljava/net/URL;
    .end local v10    # "httpUrl":Ljava/net/URL;
    .end local v11    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v12    # "pacUrl":Ljava/net/URL;
    .end local v13    # "startTime":J
    .end local v15    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v16    # "endTime":J
    :cond_9
    :goto_4
    const-string v0, "Validation disabled."

    invoke-direct {v7, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1172
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method public notifyPrivateDnsSettingsChanged(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .locals 1
    .param p1, "newCfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 428
    const v0, 0x8200d

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    .line 430
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 431
    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 20
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I
    .param p3, "probeSpec"    # Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1286
    move-object/from16 v4, p3

    iget-boolean v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOn:Z

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 1287
    iget v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOffDetectCount:I

    if-le v0, v5, :cond_1

    .line 1288
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mLastCaptivePortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_0

    .line 1289
    :cond_0
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mLastCaptivePortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1288
    :goto_0
    return-object v0

    .line 1291
    :cond_1
    iget v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOffDetectCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mScreenOffDetectCount:I

    .line 1296
    :cond_2
    const/4 v6, 0x0

    .line 1297
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v7, 0x257

    .line 1298
    .local v7, "httpResponseCode":I
    const/4 v8, 0x0

    .line 1299
    .local v8, "redirectUrl":Ljava/lang/String;
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v9

    .line 1300
    .local v9, "probeTimer":Landroid/net/util/Stopwatch;
    const/16 v0, -0xbe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v10, v0

    .line 1302
    .local v10, "oldTag":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 1303
    const/4 v0, 0x0

    const/4 v11, 0x3

    if-ne v3, v11, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v0

    :goto_1
    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1304
    const/16 v12, 0x2710

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1305
    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1306
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1307
    const-string v0, "Connection"

    const-string v12, "close"

    invoke-virtual {v6, v0, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_4

    .line 1309
    :try_start_1
    const-string v0, "User-Agent"

    iget-object v12, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    invoke-virtual {v6, v0, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1362
    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    move-object v5, v9

    goto/16 :goto_7

    .line 1356
    :catch_0
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_4

    .line 1312
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "requestHeader":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1317
    .local v12, "requestTimestamp":J
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    move v7, v14

    .line 1318
    const-string/jumbo v14, "location"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v8, v14

    .line 1321
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1323
    .local v14, "responseTimestamp":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v8

    move-object/from16 v16, v9

    sub-long v8, v14, v12

    .end local v8    # "redirectUrl":Ljava/lang/String;
    .end local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v16, "probeTimer":Landroid/net/util/Stopwatch;
    .local v17, "redirectUrl":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms ret="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " request="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " headers="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1323
    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1333
    const/16 v5, 0xc8

    if-ne v7, v5, :cond_7

    .line 1334
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 1335
    const-string v5, "PAC fetch 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1337
    const/16 v7, 0xcc

    goto :goto_3

    .line 1338
    :cond_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v8

    const-wide/16 v18, 0x0

    cmp-long v5, v8, v18

    if-nez v5, :cond_6

    .line 1343
    const-string v5, "200 response with Content-length=0 interpreted as 204 response."

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1345
    const/16 v7, 0xcc

    goto :goto_3

    .line 1346
    :cond_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v8

    const-wide/16 v18, -0x1

    cmp-long v5, v8, v18

    if-nez v5, :cond_7

    .line 1349
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_7

    .line 1350
    const-string v5, "Empty 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1352
    const/16 v7, 0xcc

    .line 1362
    .end local v0    # "requestHeader":Ljava/lang/String;
    .end local v12    # "requestTimestamp":J
    .end local v14    # "responseTimestamp":J
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 1363
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1365
    :cond_8
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1366
    nop

    .line 1367
    move-object/from16 v8, v17

    goto :goto_5

    .line 1362
    :catchall_1
    move-exception v0

    move-object/from16 v5, v16

    goto/16 :goto_7

    .line 1356
    :catch_1
    move-exception v0

    move-object/from16 v8, v17

    goto :goto_4

    .line 1362
    .end local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v17    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "redirectUrl":Ljava/lang/String;
    .restart local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v8

    move-object v5, v9

    .line 1362
    .end local v8    # "redirectUrl":Ljava/lang/String;
    .end local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "redirectUrl":Ljava/lang/String;
    goto/16 :goto_7

    .line 1356
    .end local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v17    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "redirectUrl":Ljava/lang/String;
    .restart local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_2
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v16, v9

    .line 1356
    .end local v8    # "redirectUrl":Ljava/lang/String;
    .end local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "redirectUrl":Ljava/lang/String;
    goto :goto_4

    .line 1362
    .end local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v17    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "redirectUrl":Ljava/lang/String;
    .restart local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v8

    move-object v5, v9

    .line 1362
    .end local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    goto/16 :goto_7

    .line 1356
    .end local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_3
    move-exception v0

    move-object/from16 v16, v9

    .line 1357
    .end local v9    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    :goto_4
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Probe failed with exception "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1358
    nop

    .line 1362
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_9

    .line 1363
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1365
    :cond_9
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1366
    nop

    .line 1367
    :goto_5
    move-object/from16 v5, v16

    invoke-virtual {v5}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v11

    .line 1367
    .end local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v5, "probeTimer":Landroid/net/util/Stopwatch;
    invoke-direct {v1, v11, v12, v3, v7}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendHttpProbe: httpResponseCode="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetworkMonitor;->logd(Ljava/lang/String;)V

    .line 1373
    if-nez v4, :cond_a

    .line 1378
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v8, v9}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1378
    .local v0, "probeResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    goto :goto_6

    .line 1385
    .end local v0    # "probeResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_a
    invoke-virtual {v4, v7, v8}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1389
    .restart local v0    # "probeResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_6
    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isFailed()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1390
    sget v9, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    const/4 v11, 0x1

    add-int/2addr v9, v11

    sput v9, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    rem-int/lit8 v9, v9, 0x4

    sput v9, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    .line 1391
    iget-object v9, v1, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 1393
    :cond_b
    iget-object v9, v1, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "WIFI_STORE_REEVALUTE_COUNT"

    sget v12, Lcom/android/server/connectivity/NetworkMonitor;->sReevaluteCount:I

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1395
    return-object v0

    .line 1362
    .end local v0    # "probeResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v5    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_4
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v17, v8

    .line 1362
    .end local v8    # "redirectUrl":Ljava/lang/String;
    .end local v16    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v5    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "redirectUrl":Ljava/lang/String;
    :goto_7
    if-eqz v6, :cond_c

    .line 1363
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1365
    :cond_c
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
