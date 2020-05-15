.class public Lcom/android/server/wifi/scanner/WificondScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "WificondScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_APS_PER_SCAN:I = 0x20

.field public static final MAX_HIDDEN_NETWORK_IDS_PER_SCAN:I = 0x10

.field private static final MAX_SCAN_BUCKETS:I = 0x10

.field private static final SCAN_BUFFER_CAPACITY:I = 0xa

.field private static final SCAN_TIMEOUT_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "WificondScannerImpl"

.field public static final TIMEOUT_ALARM_TAG:Ljava/lang/String; = "WificondScannerImpl Scan Timeout"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mHwPnoScanSupported:Z

.field private final mIfaceName:Ljava/lang/String;

.field private mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

.field private mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

.field private mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

.field private mNativePnoScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiSateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p5, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "clock"    # Lcom/android/server/wifi/Clock;

    .line 111
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v1, v1, v2}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 90
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 95
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiSateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 96
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 115
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 116
    iput-object p5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p6, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 119
    iput-object p7, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoScanSupported:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24011

    invoke-virtual {p4, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24012

    invoke-virtual {p4, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24005

    invoke-virtual {p4, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WificondScannerImpl;

    .line 59
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->handleScanTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WificondScannerImpl;

    .line 59
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    return-void
.end method

.method private cancelScanTimeout()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 302
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 304
    :cond_0
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleScanTimeout()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    const-string v1, "WificondScannerImpl"

    const-string v2, "Timed out waiting for scan result from wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isAllChannelsScanned(Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Z
    .locals 2
    .param p0, "channelCollection"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsBand(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsBand(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0
.end method

.method private isHwPnoScanRequired(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .line 549
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoScanSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$0(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "r"    # Lcom/android/server/wifi/ScanDetail;

    .line 604
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dump$1(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "r"    # Lcom/android/server/wifi/ScanDetail;

    .line 611
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method private pollLatestScanData()V
    .locals 19

    .line 415
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 416
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-nez v0, :cond_0

    .line 418
    monitor-exit v2

    return-void

    .line 421
    :cond_0
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v3, "singleFreshScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v4, 0x0

    .line 428
    .local v4, "numFilteredScanResults":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 432
    .local v6, "foundConnectApInScanResult":Z
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiSateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 433
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    iget-object v8, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    .line 434
    .local v8, "lastBackupConnectScanResult":Landroid/net/wifi/ScanResult;
    const/16 v9, -0x7f

    iput v9, v8, Landroid/net/wifi/ScanResult;->level:I

    .line 437
    iget-object v9, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->evictOldTimestampForSameBssid(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-wide/16 v13, 0x3e8

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 443
    .local v10, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v10}, Lcom/android/server/wifi/WifiGbk;->processScanResult(Landroid/net/wifi/ScanResult;)Z

    .line 444
    iget-wide v11, v10, Landroid/net/wifi/ScanResult;->timestamp:J

    div-long/2addr v11, v13

    .line 449
    .local v11, "timestamp_ms":J
    iget-object v15, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-wide v13, v15, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    cmp-long v13, v11, v13

    if-gtz v13, :cond_4

    iget-object v13, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-wide v13, v13, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    sub-long/2addr v13, v11

    const-wide/32 v15, 0xea60

    cmp-long v13, v13, v15

    if-gtz v13, :cond_1

    goto :goto_2

    .line 481
    :cond_1
    const-string v13, "FilterForList: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_2

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v13, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v13, "null"

    :goto_1
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, " /"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    add-int/lit8 v4, v4, 0x1

    .line 485
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "timestamp_ms":J
    move-object/from16 v17, v7

    goto/16 :goto_6

    .line 451
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    .restart local v11    # "timestamp_ms":J
    :cond_4
    :goto_2
    iget-object v13, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v13, v13, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 454
    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 455
    iput-object v10, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v15, 0x2af8

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 457
    const-string v13, "WificondScannerImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update Active-AP timestamp SSID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " from :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v6

    move-object/from16 v17, v7

    iget-wide v6, v10, Landroid/net/wifi/ScanResult;->timestamp:J

    .end local v6    # "foundConnectApInScanResult":Z
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .local v17, "info":Landroid/net/wifi/WifiInfo;
    .local v18, "foundConnectApInScanResult":Z
    const-wide/16 v15, 0x3e8

    div-long/2addr v6, v15

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " to: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v15, 0x2af8

    sub-long/2addr v6, v15

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v13, 0x2af8

    sub-long/2addr v6, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v6, v13

    iput-wide v6, v10, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_3

    .line 460
    .end local v17    # "info":Landroid/net/wifi/WifiInfo;
    .end local v18    # "foundConnectApInScanResult":Z
    .restart local v6    # "foundConnectApInScanResult":Z
    .restart local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    move/from16 v18, v6

    move-object/from16 v17, v7

    .end local v6    # "foundConnectApInScanResult":Z
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v18    # "foundConnectApInScanResult":Z
    :goto_3
    const/4 v6, 0x1

    .line 461
    .end local v18    # "foundConnectApInScanResult":Z
    .restart local v6    # "foundConnectApInScanResult":Z
    const-string v7, "WificondScannerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found active-AP info in scan result:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 464
    .end local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    move/from16 v18, v6

    move-object/from16 v17, v7

    .end local v6    # "foundConnectApInScanResult":Z
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v18    # "foundConnectApInScanResult":Z
    move/from16 v6, v18

    .end local v18    # "foundConnectApInScanResult":Z
    .restart local v6    # "foundConnectApInScanResult":Z
    :goto_4
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    if-eqz v8, :cond_7

    iget-object v7, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 467
    iget v7, v10, Landroid/net/wifi/ScanResult;->level:I

    iput v7, v8, Landroid/net/wifi/ScanResult;->level:I

    .line 471
    :cond_7
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-wide v13, v7, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    cmp-long v7, v11, v13

    if-lez v7, :cond_8

    .line 472
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 474
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 475
    const-string v7, "FilterForSelect: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget-object v7, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_5

    :cond_a
    const-string v7, "null"

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " /"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 485
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "timestamp_ms":J
    .end local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_b
    move/from16 v18, v6

    move-object/from16 v17, v7

    .line 437
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v17    # "info":Landroid/net/wifi/WifiInfo;
    :goto_6
    move-object/from16 v7, v17

    goto/16 :goto_0

    .line 486
    .end local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_c
    move/from16 v18, v6

    move-object/from16 v17, v7

    .end local v6    # "foundConnectApInScanResult":Z
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v18    # "foundConnectApInScanResult":Z
    if-eqz v4, :cond_d

    .line 491
    const-string v6, "WificondScannerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Filtering out "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " scan results: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_d
    if-eqz v17, :cond_e

    move-object/from16 v6, v17

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .end local v17    # "info":Landroid/net/wifi/WifiInfo;
    .local v6, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_f

    if-nez v18, :cond_f

    .line 496
    const-string v7, "WificondScannerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add virtual Active-AP info:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v10}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x2af8

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iput-wide v9, v7, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 498
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    iput v9, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 499
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackupConnectScanResult:Landroid/net/wifi/ScanResult;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 502
    .end local v6    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v17    # "info":Landroid/net/wifi/WifiInfo;
    :cond_e
    move-object/from16 v6, v17

    .end local v17    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v6    # "info":Landroid/net/wifi/WifiInfo;
    :cond_f
    :goto_7
    invoke-static {}, Lcom/android/server/wifi/WifiGbk;->ageBssCache()V

    .line 504
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v7, v7, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v7, :cond_11

    .line 505
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v7, v7, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_10

    .line 510
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 513
    .local v10, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v11, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v11, v11, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v11, v10, v9}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    .line 515
    .end local v10    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_8

    .line 517
    :cond_10
    sget-object v7, Lcom/android/server/wifi/scanner/WificondScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 518
    new-instance v7, Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v10, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v10, v10, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 519
    invoke-static {v10}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isAllChannelsScanned(Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Z

    move-result v14

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/net/wifi/ScanResult;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, [Landroid/net/wifi/ScanResult;

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    iput-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    .line 521
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v7, v7, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 522
    invoke-interface {v7, v9}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 525
    :cond_11
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 526
    .end local v0    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "singleFreshScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "numFilteredScanResults":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "info":Landroid/net/wifi/WifiInfo;
    .end local v8    # "lastBackupConnectScanResult":Landroid/net/wifi/ScanResult;
    .end local v18    # "foundConnectApInScanResult":Z
    monitor-exit v2

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pollLatestScanDataForPno()V
    .locals 12

    .line 332
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    if-nez v1, :cond_0

    .line 335
    monitor-exit v0

    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getPnoScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v1, "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 341
    .local v2, "numFilteredScanResults":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 344
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 345
    .local v5, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v5}, Lcom/android/server/wifi/WifiGbk;->processScanResult(Landroid/net/wifi/ScanResult;)Z

    .line 346
    iget-wide v6, v5, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 351
    .local v6, "timestamp_ms":J
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-wide v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->startTime:J

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-wide v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->startTime:J

    sub-long/2addr v8, v6

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    goto :goto_2

    .line 356
    :cond_1
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v8, "null"

    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " /"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    add-int/lit8 v2, v2, 0x1

    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "timestamp_ms":J
    goto :goto_3

    .line 353
    .restart local v5    # "result":Landroid/net/wifi/ScanResult;
    .restart local v6    # "timestamp_ms":J
    :cond_4
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "timestamp_ms":J
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    .end local v4    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 367
    const-string v4, "WificondScannerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filtering out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pno scan results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v4, :cond_7

    .line 372
    nop

    .line 373
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/ScanResult;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/wifi/ScanResult;

    .line 374
    .local v4, "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v5, v4}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 376
    .end local v1    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "numFilteredScanResults":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_7
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportPnoScanFailure()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    .line 326
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 328
    :cond_1
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportScanFailure()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v2, 0x3

    .line 312
    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 314
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 316
    :cond_1
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 2
    .param p1, "pnoSettings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 536
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method private stopHwPnoScan()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->stopPnoScan(Ljava/lang/String;)Z

    .line 541
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopHwPnoScan()V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 138
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 139
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    const v3, 0x24011

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 141
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    const v3, 0x24012

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    const v3, 0x24005

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 601
    .local v1, "nowMs":J
    const-string v3, "Latest native scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 605
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 606
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {p2, v3, v1, v2}, Lcom/android/server/wifi/util/ScanResultUtil;->dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V

    .line 608
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    const-string v3, "Latest native pno scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 612
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 613
    .local v3, "pnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {p2, v3, v1, v2}, Lcom/android/server/wifi/util/ScanResultUtil;->dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V

    .line 615
    .end local v1    # "nowMs":J
    .end local v3    # "pnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public evictOldTimestampForSameBssid(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 392
    .local p1, "mScanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v0, "nativeScanResultsCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v1, "evictSameBssid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 395
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 397
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 401
    :cond_0
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-wide v4, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide v6, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 402
    :cond_1
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 403
    const-string v4, "WificondScannerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old_SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " replaced by new_SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_2
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 398
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    nop

    .line 394
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 408
    .local v3, "mScanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v3    # "mScanResult":Landroid/net/wifi/ScanResult;
    goto :goto_3

    .line 410
    :cond_6
    return-object v0
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p1, "flush"    # Z

    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 150
    const v0, 0x7fffffff

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    .line 151
    const/16 v0, 0x10

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    .line 152
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    .line 153
    const/16 v0, 0x8

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    .line 154
    const/16 v0, 0xa

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x24005

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pollLatestScanDataForPno()V

    .line 287
    goto :goto_0

    .line 281
    :pswitch_1
    const-string v0, "WificondScannerImpl"

    const-string v1, "Scan failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->cancelScanTimeout()V

    .line 283
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    .line 284
    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->cancelScanTimeout()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pollLatestScanData()V

    .line 291
    nop

    .line 295
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x24011
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .line 594
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v0

    return v0
.end method

.method public pauseBatchedScan()V
    .locals 2

    .line 261
    const-string v0, "WificondScannerImpl"

    const-string v1, "pauseBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public resetHwPnoList()Z
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    if-nez v1, :cond_0

    .line 581
    const-string v1, "WificondScannerImpl"

    const-string v2, "No PNO scan running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 584
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 586
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopHwPnoScan()V

    .line 587
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restartBatchedScan()V
    .locals 2

    .line 266
    const-string v0, "WificondScannerImpl"

    const-string v1, "restartBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 5
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "WificondScannerImpl"

    const-string v3, "Already running a PNO scan"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v0

    return v2

    .line 560
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    monitor-exit v0

    return v2

    .line 564
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->startHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    new-instance v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 566
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;-><init>(J[Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    goto :goto_0

    .line 570
    :cond_2
    const-string v1, "WificondScannerImpl"

    const-string v2, "Failed to start PNO scan"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportPnoScanFailure()V

    .line 573
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 2
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 250
    const-string v0, "WificondScannerImpl"

    const-string v1, "startBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 21
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 166
    move-object/from16 v9, p2

    const/4 v0, 0x0

    if-eqz v9, :cond_8

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 171
    :cond_0
    iget-object v10, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 172
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v3, :cond_1

    .line 173
    const-string v3, "WificondScannerImpl"

    const-string v4, "A single scan is already running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v10

    return v0

    .line 177
    :cond_1
    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v3

    move-object v11, v3

    .line 178
    .local v11, "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    const/4 v3, 0x0

    .line 180
    .local v3, "reportFullResults":Z
    move v12, v3

    move v3, v0

    .local v3, "i":I
    .local v12, "reportFullResults":Z
    :goto_0
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v3, v4, :cond_3

    .line 181
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v4, v4, v3

    .line 182
    .local v4, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v5, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 184
    const/4 v12, 0x1

    .line 186
    :cond_2
    invoke-virtual {v11, v4}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    .line 180
    .end local v4    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v13, v3

    .line 190
    .local v13, "hiddenNetworkSSIDSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    array-length v3, v3

    const/16 v4, 0x10

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 193
    .local v3, "numHiddenNetworks":I
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 194
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "i":I
    .end local v3    # "numHiddenNetworks":I
    :cond_4
    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 198
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    move-object v3, v0

    move v6, v12

    move-object v7, v11

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;-><init>(JZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V

    iput-object v0, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "success":Z
    invoke-virtual {v11}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    invoke-virtual {v11}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getScanFreqs()Ljava/util/Set;

    move-result-object v3

    .line 205
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->scanType:I

    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/android/server/wifi/WifiNative;->scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z

    move-result v4

    move v0, v4

    .line 207
    if-nez v0, :cond_6

    .line 208
    const-string v4, "WificondScannerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start scan, freqs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 213
    .end local v3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    const-string v3, "WificondScannerImpl"

    const-string v4, "Failed to start scan because there is no available channel to scan"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 220
    new-instance v3, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    iput-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 226
    iget-object v14, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 227
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    add-long v16, v3, v5

    const-string v18, "WificondScannerImpl Scan Timeout"

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v4, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 226
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_3

    .line 231
    :cond_7
    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :goto_3
    monitor-exit v10

    const/4 v3, 0x1

    return v3

    .line 239
    .end local v0    # "success":Z
    .end local v11    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v12    # "reportFullResults":Z
    .end local v13    # "hiddenNetworkSSIDSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_8
    :goto_4
    const-string v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments for startSingleScan: settings="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",eventHandler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method public stopBatchedScan()V
    .locals 2

    .line 256
    const-string v0, "WificondScannerImpl"

    const-string v1, "stopBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method
