.class public Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_PNO_NETWORK_FOUND:I = 0x2710b

.field private static final CMD_PNO_SCAN_FAILED:I = 0x2710c

.field private static final CMD_SCAN_FAILED:I = 0x2710a

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"

.field private static final UNKNOWN_PID:I = -0x1


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

.field private mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

.field private final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private final mLooper:Landroid/os/Looper;

.field private mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

.field private mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

.field private final mScannerImplFactory:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

.field private final mSingleScanListeners:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/wifi/WifiInjector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "scannerImplFactory"    # Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;
    .param p4, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 279
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 82
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 261
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanListeners:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 280
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    .line 282
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImplFactory:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    .line 283
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 284
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 286
    invoke-virtual {p5}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 287
    invoke-virtual {p5}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 288
    const-string v0, "WifiScanningService"

    invoke-virtual {p5, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 289
    invoke-virtual {p5}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 290
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanListeners:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->computeWorkSource(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScannerImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/WifiScannerImpl;

    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/ChannelHelper;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImplFactory:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private computeWorkSource(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "requestedWorkSource"    # Landroid/os/WorkSource;

    .line 335
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    .line 338
    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    return-object p2

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v0

    if-lez v0, :cond_1

    .line 344
    new-instance v0, Landroid/os/WorkSource;

    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to compute workSource for client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 351
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    return-object v0
.end method

.method static describeForLog([Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2
    .param p0, "results"    # [Landroid/net/wifi/ScanResult;

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;
    .locals 3
    .param p0, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2164
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2166
    if-lez v1, :cond_0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2169
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$PnoSettings;)Ljava/lang/String;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 2212
    const-string v0, "PnoSettings { "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " min5GhzRssi:"

    .line 2213
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " min24GhzRssi:"

    .line 2214
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " initialScoreMax:"

    .line 2215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentConnectionBonus:"

    .line 2216
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sameNetworkBonus:"

    .line 2217
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " secureBonus:"

    .line 2218
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " band5GhzBonus:"

    .line 2219
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isConnected:"

    .line 2220
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " networks:[ "

    .line 2221
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    if-eqz v0, :cond_0

    .line 2223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2224
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2227
    .end local v0    # "i":I
    :cond_0
    const-string v0, " ] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " } "

    .line 2228
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 2192
    const-string v0, "ScanSettings { "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type:"

    .line 2193
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->getScanTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " band:"

    .line 2194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->bandToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " period:"

    .line 2195
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reportEvents:"

    .line 2196
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " numBssidsPerScan:"

    .line 2197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maxScansToCache:"

    .line 2198
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " channels:[ "

    .line 2199
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v0, :cond_0

    .line 2201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2202
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 2203
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2206
    .end local v0    # "i":I
    :cond_0
    const-string v0, " ] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " } "

    .line 2207
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceLocationHardwarePermission(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "LocationHardware"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 131
    return-void
.end method

.method static getScanTypeString(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .line 2177
    packed-switch p0, :pswitch_data_0

    .line 2187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2183
    :pswitch_0
    const-string v0, "HIGH ACCURACY"

    return-object v0

    .line 2181
    :pswitch_1
    const-string v0, "LOW POWER"

    return-object v0

    .line 2179
    :pswitch_2
    const-string v0, "LOW LATENCY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 96
    const-string v0, "WifiScanningService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 91
    const-string v0, "WifiScanningService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static toString(ILandroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2050
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ScanSettings[uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2051
    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2052
    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2053
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    if-nez v1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-lez v1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2056
    const-string v1, ", batch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2057
    const-string v1, ", numAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2059
    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2067
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiScanner from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2069
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    return-void

    .line 2076
    :cond_0
    const-string v0, "WifiScanningService - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2078
    const-string v0, "WifiScanningService - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2080
    const-string v0, "clients:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 2082
    .local v1, "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    .end local v1    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    goto :goto_0

    .line 2084
    :cond_1
    const-string v0, "listeners:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 2086
    .restart local v1    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 2087
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    move-result-object v2

    .line 2088
    .local v2, "settingsList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 2089
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->access$6000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->toString(ILandroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    .end local v4    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    goto :goto_2

    .line 2091
    .end local v1    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "settingsList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_2
    goto :goto_1

    .line 2092
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    if-eqz v0, :cond_4

    .line 2093
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v0

    .line 2094
    .local v0, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    if-eqz v0, :cond_4

    .line 2095
    const-string v1, "schedule:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  base period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  max ap per scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  batched scans: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    const-string v1, "  buckets:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_3
    iget v2, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v1, v2, :cond_4

    .line 2101
    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v1

    .line 2102
    .local v2, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    bucket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms)["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    invoke-static {v2}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2102
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2108
    .end local v0    # "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    .end local v1    # "b":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    if-eqz v0, :cond_5

    .line 2109
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2111
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2113
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    if-eqz v0, :cond_6

    .line 2114
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2115
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2116
    const-string v0, "Latest scan results:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->getCachedScanResultsAsList()Ljava/util/List;

    move-result-object v0

    .line 2118
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 2119
    .local v1, "nowMs":J
    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wifi/util/ScanResultUtil;->dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V

    .line 2120
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2122
    .end local v0    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v1    # "nowMs":J
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

    if-eqz v0, :cond_7

    .line 2123
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2125
    :cond_7
    return-void
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "band"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 116
    .local v0, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 118
    .local v4, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v5, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v4    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "Channels"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 122
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "getAvailableChannels uid=%"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 123
    return-object v2
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "getMessenger() uid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 106
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0

    .line 108
    :cond_0
    const-string v0, "WifiScanningServiceImpl trying to get messenger w/o initialization"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "extra"    # Ljava/lang/String;

    .line 2150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2151
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 2152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    if-nez p2, :cond_0

    const-string v1, "ClientInfo[unknown]"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Id="

    .line 2154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2156
    if-eqz p4, :cond_1

    .line 2157
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 2160
    return-void
.end method

.method logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V
    .locals 2
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p6, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2130
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 2131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    if-nez p2, :cond_0

    const-string v1, "ClientInfo[unknown]"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Id="

    .line 2133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2135
    if-eqz p4, :cond_1

    .line 2136
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2138
    :cond_1
    if-eqz p5, :cond_2

    .line 2139
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-static {v0, p5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    .line 2142
    :cond_2
    if-eqz p6, :cond_3

    .line 2143
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    invoke-static {v0, p6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$PnoSettings;)Ljava/lang/String;

    .line 2146
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 2147
    return-void
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .line 2029
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 2030
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2031
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27012

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2032
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2033
    new-instance v1, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v1, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2035
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2036
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "replyFailed recvdMessage=% reason=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    int-to-long v2, v2

    .line 2037
    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, p2

    .line 2038
    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 2039
    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2042
    goto :goto_0

    .line 2040
    :catch_0
    move-exception v1

    .line 2046
    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void
.end method

.method replySucceeded(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2010
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 2011
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2012
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2013
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2014
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2015
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2018
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2019
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "replySucceeded recvdMessage=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    goto :goto_0

    .line 2020
    :catch_0
    move-exception v1

    .line 2026
    .end local v0    # "reply":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method public setWifiHandlerLogForTest(Lcom/android/server/wifi/WifiLog;)V
    .locals 1
    .param p1, "log"    # Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->setWifiLog(Lcom/android/server/wifi/WifiLog;)V

    .line 332
    return-void
.end method

.method public startService()V
    .locals 4

    .line 294
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 295
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 296
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 298
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "wifi_scan_available"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->start()V

    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->start()V

    .line 319
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->start()V

    .line 322
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    const-string v1, "WifiScanningService"

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    .line 323
    return-void
.end method
