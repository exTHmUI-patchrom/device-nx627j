.class public Lcom/android/server/wifi/WifiConnectivityManager;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    }
.end annotation


# static fields
.field public static final BSSID_BLACKLIST_EXPIRE_TIME_MS:I = 0x493e0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CHANNEL_LIST_AGE_MS:I = 0x36ee80

.field private static final CONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x27100

.field private static final DISCONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x4e20

.field private static final LOW_RSSI_NETWORK_RETRY_MAX_DELAY_MS:I = 0x13880

.field private static final LOW_RSSI_NETWORK_RETRY_START_DELAY_MS:I = 0x4e20

.field public static final MAX_CONNECTION_ATTEMPTS_RATE:I = 0x6

.field public static final MAX_CONNECTION_ATTEMPTS_TIME_INTERVAL_MS:I = 0x3a980

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS:I = 0x27100
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_PNO_SCAN_FAIL_THRESHOLD:I = 0x8

.field public static final MAX_SCAN_RESTART_ALLOWED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PASSPOINT_NETWORK_EVALUATOR_PRIORITY:I = 0x2

.field public static final PERIODIC_SCAN_INTERVAL_MS:I = 0x4e20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Periodic Scan Timer"

.field public static final REASON_CODE_AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field public static final RESTART_CONNECTIVITY_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Scan"

.field private static final RESTART_SCAN_DELAY_MS:I = 0x7d0

.field public static final RESTART_SINGLE_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Single Scan"

.field private static final SAVED_NETWORK_EVALUATOR_PRIORITY:I = 0x1

.field private static final SCAN_IMMEDIATELY:Z = true

.field private static final SCAN_ON_SCHEDULE:Z = false

.field private static final SCORED_NETWORK_EVALUATOR_PRIORITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityManager"

.field private static final WATCHDOG_INTERVAL_MS:I = 0x124f80

.field public static final WATCHDOG_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Watchdog Timer"

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I = 0x2

.field public static final WIFI_STATE_TRANSITIONING:I = 0x3

.field public static final WIFI_STATE_UNKNOWN:I


# instance fields
.field private DBG:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

.field private mBand5GHzBonus:I

.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

.field private final mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionAttemptTimeStamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private mCurrentConnectionBonus:I

.field private mDbg:Z

.field private mEnableAutoJoinWhenAssociated:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mFullScanMaxRxRate:I

.field private mFullScanMaxTxRate:I

.field private mInitialScoreMax:I

.field private mLastConnectionAttemptBssid:Ljava/lang/String;

.field private mLastPeriodicSingleScanTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMin24GHzRssi:I

.field private mMin5GHzRssi:I

.field private mMiracastMode:I

.field private final mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private final mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

.field private final mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPeriodicScanTimerSet:Z

.field private mPeriodicSingleScanInterval:I

.field public mPnoListener:Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

.field private mPnoScanFailCount:I

.field private final mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

.field private mPnoScanStarted:Z

.field private final mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSameNetworkBonus:I

.field private mScanRestartCount:I

.field private final mScanner:Landroid/net/wifi/WifiScanner;

.field private mScheduleWatchdogTimerSet:Z

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private mScreenOn:Z

.field private mSecureBonus:I

.field private mSingleScanRestartCount:I

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mTotalConnectivityAttemptsRateLimited:I

.field private mUntrustedConnectionAllowed:Z

.field private mUseSingleRadioChainScanResults:Z

.field private mWaitForFullBandScanResults:Z

.field private final mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWifiConnectivityManagerEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/OpenNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkConfig;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p3, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p4, "scanner"    # Landroid/net/wifi/WifiScanner;
    .param p5, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p6, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p7, "networkSelector"    # Lcom/android/server/wifi/WifiNetworkSelector;
    .param p8, "connectivityHelper"    # Lcom/android/server/wifi/WifiConnectivityHelper;
    .param p9, "wifiLastResortWatchdog"    # Lcom/android/server/wifi/WifiLastResortWatchdog;
    .param p10, "openNetworkNotifier"    # Lcom/android/server/wifi/OpenNetworkNotifier;
    .param p11, "carrierNetworkNotifier"    # Lcom/android/server/wifi/CarrierNetworkNotifier;
    .param p12, "carrierNetworkConfig"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .param p13, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p14, "looper"    # Landroid/os/Looper;
    .param p15, "clock"    # Lcom/android/server/wifi/Clock;
    .param p16, "localLog"    # Landroid/util/LocalLog;
    .param p17, "enable"    # Z
    .param p18, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p19, "savedNetworkEvaluator"    # Lcom/android/server/wifi/SavedNetworkEvaluator;
    .param p20, "scoredNetworkEvaluator"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;
    .param p21, "passpointNetworkEvaluator"    # Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    move-object/from16 v0, p0

    move/from16 v1, p17

    .line 592
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    .line 153
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    .line 154
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 155
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 156
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 157
    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    .line 158
    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 159
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 160
    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 161
    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    .line 162
    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 163
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 164
    const/16 v5, 0x4e20

    iput v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 165
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 166
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 167
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 170
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 171
    iput-boolean v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mUseSingleRadioChainScanResults:Z

    .line 195
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    .line 212
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$1;

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiConnectivityManager$1;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 236
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$2;

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiConnectivityManager$2;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 245
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$3;

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiConnectivityManager$3;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 393
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-direct {v5, v0, v4}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    .line 537
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-direct {v5, v0, v4}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    .line 1519
    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanFailCount:I

    .line 1527
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoListener:Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

    .line 1559
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScheduleWatchdogTimerSet:Z

    .line 593
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 594
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    .line 595
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 596
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 597
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 598
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    .line 599
    move-object/from16 v10, p16

    iput-object v10, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    .line 600
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 601
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    .line 602
    move-object/from16 v13, p11

    iput-object v13, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    .line 603
    move-object/from16 v14, p12

    iput-object v14, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 604
    move-object/from16 v15, p13

    iput-object v15, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 605
    const-string v4, "alarm"

    move-object/from16 v3, p1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 606
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 607
    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 608
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 609
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    .line 612
    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    const/16 v4, 0x1388

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    .line 613
    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    const/16 v4, 0x960

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00bb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00b1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00b2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11200e2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    .line 626
    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    const/16 v4, 0x960

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/ScoringParams;->getGoodRssi(I)I

    move-result v2

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 627
    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ScoringParams;->getGoodRssi(I)I

    move-result v4

    .line 626
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00be

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxTxRate:I

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00bd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxRxRate:I

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PNO settings: min5GHzRssi "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " min24GHzRssi "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentConnectionBonus "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sameNetworkBonus "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " secureNetworkBonus "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " initialScoreMax "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.wifi.passpoint"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 646
    .local v2, "hs2Enabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Passpoint is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v5, "enabled"

    goto :goto_0

    :cond_0
    const-string v5, "disabled"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 649
    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    move-object/from16 v5, p19

    const/4 v3, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    .line 651
    if-eqz v2, :cond_1

    .line 652
    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v4, 0x2

    move/from16 v16, v2

    move-object/from16 v2, p21

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    goto :goto_1

    .line 655
    :cond_1
    move/from16 v16, v2

    move-object/from16 v2, p21

    .end local v2    # "hs2Enabled":Z
    .local v16, "hs2Enabled":Z
    :goto_1
    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v4, 0x3

    move-object/from16 v2, p20

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    .line 659
    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 662
    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->setOnSavedNetworkUpdateListener(Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;)V

    .line 664
    iput-boolean v1, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 666
    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoListener:Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->registerPnoListener(Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;)V

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectivityScanManager initialized and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    if-eqz v1, :cond_2

    const-string v3, "enabled"

    goto :goto_2

    :cond_2
    const-string v3, "disabled"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConnectivityManager;ZLandroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUseSingleRadioChainScanResults:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedSingleScan(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return p1
.end method

.method static synthetic access$1608(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanFailCount:I

    return v0
.end method

.method static synthetic access$1804(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanFailCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiConnectivityManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedConnectivityScan(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->watchdogHandler()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->periodicScanTimerHandler()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScanResults(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private buildBssidBlacklist()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1349
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1350
    .local v0, "blacklistedBssids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1351
    .local v2, "bssid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1354
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1356
    :cond_1
    return-object v0
.end method

.method private cancelPeriodicScanTimer()V
    .locals 2

    .line 1060
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 1064
    :cond_0
    return-void
.end method

.method private cancelScheduleWatchdogTimer(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelScheduleWatchdogTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mScheduleWatchdogTimerSet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScheduleWatchdogTimerSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1563
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScheduleWatchdogTimerSet:Z

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScheduleWatchdogTimerSet:Z

    .line 1567
    :cond_0
    return-void
.end method

.method private clearBssidBlacklist()V
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1428
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    .line 1429
    return-void
.end method

.method private clearConnectionAttemptTimeStamps()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 719
    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 10
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    .line 728
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 729
    .local v0, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    if-nez v0, :cond_0

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToNetwork: bad candidate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " scanResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 732
    return-void

    .line 735
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 736
    .local v1, "targetBssid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "targetAssociationId":Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 743
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 744
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 745
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToNetwork: Either already connected or is connecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 748
    return-void

    .line 751
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v4, "any"

    .line 752
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 753
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecToNetwork: target BSSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the config specified BSSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Drop it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 756
    return-void

    .line 759
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    .line 760
    .local v3, "elapsedTimeMillis":J
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v5, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldSkipConnectionAttempt(Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 761
    const-string v5, "connectToNetwork: Too many connection attempts. Skipping this attempt!"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 762
    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 763
    return-void

    .line 765
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->noteConnectionAttempt(Ljava/lang/Long;)V

    .line 767
    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 769
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 770
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 771
    .local v5, "currentConnectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_5

    const-string v6, "Disconnected"

    goto :goto_0

    .line 772
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, "currentAssociationId":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_7

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, v8, :cond_7

    .line 780
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 782
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Roaming candidate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". The actual roaming target is up to the firmware."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 785
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Roaming to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 787
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v0}, Lcom/android/server/wifi/WifiStateMachine;->startRoamToNetwork(ILandroid/net/wifi/ScanResult;)V

    goto :goto_2

    .line 793
    :cond_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v8, "any"

    .line 794
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 795
    :cond_8
    const-string v1, "any"

    .line 796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 799
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectToNetwork: Connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 802
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v9, 0x3f2

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->startConnectToNetwork(IILjava/lang/String;)V

    .line 804
    :goto_2
    return-void
.end method

.method private getScanBand()I
    .locals 1

    .line 808
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v0

    return v0
.end method

.method private getScanBand(Z)I
    .locals 1
    .param p1, "isFullBandScan"    # Z

    .line 812
    if-eqz p1, :cond_0

    .line 813
    const/4 v0, 0x7

    return v0

    .line 816
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleScanResults(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p2, "listenerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 262
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->refreshBssidBlacklist()V

    .line 264
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResults: No network selection because supplicantTransientState is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 267
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 268
    return v1

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResults: start network selection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 274
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->buildBssidBlacklist()Ljava/util/HashSet;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 275
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isDisconnected()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 274
    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi/WifiNetworkSelector;->selectNetwork(Ljava/util/List;Ljava/util/HashSet;Landroid/net/wifi/WifiInfo;ZZZ)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 277
    .local v0, "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 278
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNetworkSelector;->getConnectableScanDetails()Ljava/util/List;

    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateAvailableNetworks(Ljava/util/List;)V

    .line 279
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiMetrics;->countScanResults(Ljava/util/List;)V

    .line 280
    if-eqz v0, :cond_1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":  WNS candidate-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 283
    const/4 v1, 0x1

    return v1

    .line 285
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 286
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 287
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNetworkSelector;->getFilteredScanDetailsForOpenUnsavedNetworks()Ljava/util/List;

    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleScanResults(Ljava/util/List;)V

    .line 288
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-virtual {v2}, Lcom/android/server/wifi/CarrierNetworkConfig;->isCarrierEncryptionInfoAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 290
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->getFilteredScanDetailsForCarrierUnsavedNetworks(Lcom/android/server/wifi/CarrierNetworkConfig;)Ljava/util/List;

    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleScanResults(Ljava/util/List;)V

    .line 294
    :cond_2
    return v1
.end method

.method private handleScreenStateChangedForDisconnectedState(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChangedForDisconnectedState: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1543
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1544
    return-void

    .line 1546
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-ne v0, p1, :cond_1

    .line 1547
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScreenStateChangedForDisconnectedState mabybe error for last screenOn equ new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_1
    if-eqz p1, :cond_2

    .line 1550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1551
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    goto :goto_0

    .line 1553
    :cond_2
    const-string v0, "WifiConnectivityManager"

    const-string v1, "handleScreenStateChangedForDisconnectedState cancel mWatchdogListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v0, "screen off"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelScheduleWatchdogTimer(Ljava/lang/String;)V

    .line 1556
    :goto_0
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 206
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "WifiConnectivityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method

.method private noteConnectionAttempt(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .line 710
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 711
    return-void
.end method

.method private periodicScanTimerHandler()V
    .locals 1

    .line 921
    const-string v0, "periodicScanTimerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 924
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 927
    :cond_0
    return-void
.end method

.method private refreshBssidBlacklist()V
    .locals 8

    .line 1401
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    return-void

    .line 1405
    :cond_0
    const/4 v0, 0x0

    .line 1406
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1407
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1409
    .local v2, "currentTimeStamp":Ljava/lang/Long;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 1411
    .local v3, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    iget-boolean v4, v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 1413
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1414
    const/4 v0, 0x1

    .line 1416
    .end local v3    # "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    :cond_1
    goto :goto_0

    .line 1418
    :cond_2
    if-eqz v0, :cond_3

    .line 1419
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    .line 1421
    :cond_3
    return-void
.end method

.method private resetLastPeriodicSingleScanTimeStamp()V
    .locals 2

    .line 916
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 917
    return-void
.end method

.method private scheduleDelayedConnectivityScan(I)V
    .locals 8
    .param p1, "msFromNow"    # I

    .line 1080
    const-string v0, "scheduleDelayedConnectivityScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1083
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v4, v2

    const-string v0, "WifiConnectivityManager Restart Scan"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1082
    const/4 v2, 0x2

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1087
    return-void
.end method

.method private scheduleDelayedSingleScan(Z)V
    .locals 8
    .param p1, "isFullBandScan"    # Z

    .line 1068
    const-string v0, "scheduleDelayedSingleScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1070
    new-instance v6, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 1072
    .local v6, "restartSingleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1073
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    const-string v0, "WifiConnectivityManager Restart Single Scan"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1072
    const/4 v2, 0x2

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1076
    return-void
.end method

.method private schedulePeriodicScanTimer(I)V
    .locals 8
    .param p1, "intervalMs"    # I

    .line 1051
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1052
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v3, v1

    const-string v5, "WifiConnectivityManager Schedule Periodic Scan Timer"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1051
    const/4 v1, 0x2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 1056
    return-void
.end method

.method private scheduleWatchdogTimer()V
    .locals 8

    .line 1038
    const-string v0, "scheduleWatchdogTimer"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1041
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    add-long/2addr v4, v2

    const-string v0, "WifiConnectivityManager Schedule Watchdog Timer"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1040
    const/4 v2, 0x2

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScheduleWatchdogTimerSet:Z

    .line 1047
    return-void
.end method

.method private setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 9
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 823
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 825
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 826
    return v1

    .line 829
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 831
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    .line 830
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->fetchChannelSetForNetworkForPartialScan(IJI)Ljava/util/Set;

    move-result-object v2

    .line 833
    .local v2, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    const/4 v1, 0x0

    .line 835
    .local v1, "index":I
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 836
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 837
    .local v4, "freq":Ljava/lang/Integer;
    iget-object v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v6, v1, 0x1

    .local v6, "index":I
    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v5, v1

    .line 838
    .end local v1    # "index":I
    .end local v4    # "freq":Ljava/lang/Integer;
    nop

    .line 836
    move v1, v6

    goto :goto_0

    .line 839
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 841
    .end local v1    # "index":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No scan channels for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Perform full band scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 842
    return v1
.end method

.method private shouldSkipConnectionAttempt(Ljava/lang/Long;)Z
    .locals 6
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .line 690
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 692
    .local v0, "attemptIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 694
    .local v1, "connectionAttemptTimeMillis":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3a980

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 696
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 701
    .end local v1    # "connectionAttemptTimeMillis":Ljava/lang/Long;
    goto :goto_0

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private start()V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->getFirmwareRoamingInfo()Z

    .line 1436
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    .line 1437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1438
    return-void
.end method

.method private startConnectivityScan(Z)V
    .locals 3
    .param p1, "scanImmediately"    # Z

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startConnectivityScan: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wifiState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1093
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scanImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wifiConnectivityManagerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1104
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1108
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-eq v0, v2, :cond_1

    .line 1109
    return-void

    .line 1112
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicScan(Z)V

    goto :goto_0

    .line 1115
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-nez v0, :cond_3

    .line 1116
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startDisconnectedPnoScan()V

    .line 1120
    :cond_3
    :goto_0
    return-void

    .line 1100
    :cond_4
    :goto_1
    return-void
.end method

.method private startDisconnectedPnoScan()V
    .locals 6

    .line 994
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 995
    .local v0, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->retrievePnoNetworkList()Ljava/util/List;

    move-result-object v1

    .line 996
    .local v1, "pnoNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 998
    .local v2, "listSize":I
    if-nez v2, :cond_0

    .line 1000
    const-string v3, "No saved network for starting disconnected PNO."

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1001
    return-void

    .line 1004
    :cond_0
    new-array v3, v2, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 1005
    iget-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 1006
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 1007
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 1008
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    .line 1009
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    .line 1010
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    .line 1011
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    .line 1012
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    iput v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    .line 1015
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 1016
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1017
    const/4 v4, 0x4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1018
    const/4 v4, 0x0

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 1019
    const/16 v4, 0x4e20

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1021
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    .line 1023
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4, v3, v0, v5}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    .line 1024
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 1025
    return-void
.end method

.method private startPeriodicScan(Z)V
    .locals 2
    .param p1, "scanImmediately"    # Z

    .line 973
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 976
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    if-nez v0, :cond_0

    .line 977
    return-void

    .line 982
    :cond_0
    if-eqz p1, :cond_1

    .line 983
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 985
    :cond_1
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 986
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 987
    return-void
.end method

.method private startPeriodicSingleScan()V
    .locals 10

    .line 866
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 868
    .local v0, "currentTimeStamp":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 869
    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    sub-long v2, v0, v2

    .line 870
    .local v2, "msSinceLastScan":J
    const-wide/16 v4, 0x4e20

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last periodic single scan started "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms ago, defer this new scan request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 873
    long-to-int v4, v2

    rsub-int v4, v4, 0x4e20

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 874
    return-void

    .line 878
    .end local v2    # "msSinceLastScan":J
    :cond_0
    const/4 v2, 0x1

    .line 879
    .local v2, "isScanNeeded":Z
    const/4 v3, 0x1

    .line 880
    .local v3, "isFullBandScan":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxTxRate:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v4, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFullScanMaxRxRate:I

    int-to-double v8, v4

    cmpl-double v4, v6, v8

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    .line 884
    .local v4, "isTrafficOverThreshold":Z
    :goto_1
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v6, v5, :cond_4

    if-eqz v4, :cond_4

    .line 888
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 889
    const-string v5, "No partial scan because firmware roaming is supported."

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x0

    goto :goto_2

    .line 892
    :cond_3
    const-string v5, "No full band scan due to ongoing traffic"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 893
    const/4 v3, 0x0

    .line 897
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 898
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 899
    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    .line 900
    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 903
    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 904
    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    const v6, 0x27100

    if-le v5, v6, :cond_6

    .line 905
    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    goto :goto_3

    .line 909
    :cond_5
    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 911
    :cond_6
    :goto_3
    return-void
.end method

.method private startSingleScan(ZLandroid/os/WorkSource;)V
    .locals 4
    .param p1, "isFullBandScan"    # Z
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 931
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-virtual {v0, p2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    if-ne v0, v1, :cond_2

    .line 942
    :cond_1
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore connectivity scan, MiracastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 948
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 949
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p1, :cond_3

    .line 950
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 951
    const/4 p1, 0x1

    .line 954
    :cond_3
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 955
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 956
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 958
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 960
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 961
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->retrieveHiddenNetworkList()Ljava/util/List;

    move-result-object v1

    .line 962
    .local v1, "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    nop

    .line 963
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 965
    new-instance v2, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 967
    .local v2, "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {v3, v0, v2, p2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 968
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectivityOneshotScanCount()V

    .line 969
    return-void

    .line 932
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v1    # "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    .end local v2    # "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    :cond_4
    :goto_0
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1164
    packed-switch p0, :pswitch_data_0

    .line 1172
    const-string v0, "unknown"

    return-object v0

    .line 1170
    :pswitch_0
    const-string v0, "transitioning"

    return-object v0

    .line 1168
    :pswitch_1
    const-string v0, "disconnected"

    return-object v0

    .line 1166
    :pswitch_2
    const-string v0, "connected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stop()V
    .locals 2

    .line 1444
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1445
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    .line 1446
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1447
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/OpenNetworkNotifier;->clearPendingNotification(Z)V

    .line 1448
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/CarrierNetworkNotifier;->clearPendingNotification(Z)V

    .line 1449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1451
    return-void
.end method

.method private stopConnectivityScan()V
    .locals 1

    .line 1126
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelPeriodicScanTimer()V

    .line 1127
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopPnoScan()V

    .line 1128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 1129
    return-void
.end method

.method private stopPnoScan()V
    .locals 2

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 1033
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 1034
    return-void
.end method

.method private updateBssidBlacklist(Ljava/lang/String;ZI)Z
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "reasonCode"    # I

    .line 1277
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1278
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 1283
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 1284
    .local v2, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    if-nez v2, :cond_2

    .line 1286
    new-instance v3, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiConnectivityManager$1;)V

    move-object v2, v3

    .line 1287
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    .line 1291
    iget v3, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    .line 1292
    iget-boolean v3, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-nez v3, :cond_4

    .line 1293
    iget v3, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    const/16 v3, 0x11

    if-ne p3, v3, :cond_4

    .line 1295
    :cond_3
    iput-boolean v1, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    .line 1296
    return v1

    .line 1299
    :cond_4
    return v0
.end method

.method private updateFirmwareRoamingConfiguration()V
    .locals 6

    .line 1365
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->getMaxNumBlacklistBssid()I

    move-result v0

    .line 1370
    .local v0, "maxBlacklistSize":I
    if-gtz v0, :cond_1

    .line 1371
    const-string v1, "WifiConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid max BSSID blacklist size:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1375
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->buildBssidBlacklist()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1376
    .local v1, "blacklistedBssids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1378
    .local v2, "blacklistSize":I
    if-le v2, v0, :cond_2

    .line 1379
    const-string v3, "WifiConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " blacklisted BSSIDs, max size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 1384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trim down BSSID blacklist size from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1384
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1388
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wifi/WifiConnectivityHelper;->setFirmwareRoamingConfiguration(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1390
    const-string v3, "Failed to set firmware roaming configuration."

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1392
    :cond_3
    return-void
.end method

.method private updateRunningState()V
    .locals 1

    .line 1460
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 1461
    const-string v0, "Starting up WifiConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->start()V

    goto :goto_0

    .line 1464
    :cond_0
    const-string v0, "Stopping WifiConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1466
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    if-eqz v0, :cond_1

    .line 1467
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    .line 1470
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stop()V

    .line 1472
    :goto_0
    return-void
.end method

.method private watchdogHandler()V
    .locals 2

    .line 855
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "start a single scan from watchdogHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 860
    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    .line 862
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPnoscanFailCount()V
    .locals 1

    .line 1522
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanFailCount:I

    .line 1523
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1509
    const-string v0, "Dump of WifiConnectivityManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    const-string v0, "WifiConnectivityManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1512
    const-string v0, "WifiConnectivityManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/OpenNetworkNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/CarrierNetworkNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/CarrierNetworkConfig;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1516
    return-void
.end method

.method public enable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set WiFiConnectivityManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1491
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 1492
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateRunningState()V

    .line 1493
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 677
    if-lez p1, :cond_0

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    goto :goto_0

    .line 680
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->DBG:Z

    .line 682
    :goto_0
    return-void
.end method

.method public forceConnectivityScan(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceConnectivityScan in request of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1263
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZLandroid/os/WorkSource;)V

    .line 1264
    return-void
.end method

.method getLastPeriodicSingleScanTimeStamp()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1502
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    return-wide v0
.end method

.method getLowRssiNetworkRetryDelay()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1497
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->getLowRssiNetworkRetryDelay()I

    move-result v0

    return v0
.end method

.method public handleConnectionAttemptEnded(I)V
    .locals 1
    .param p1, "failureCode"    # I

    .line 1219
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleConnectionFailure()V

    .line 1221
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleConnectionFailure()V

    .line 1223
    :cond_0
    return-void
.end method

.method public handleConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleConnectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConnectivityManager;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1182
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1184
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleWifiConnected()V

    .line 1186
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleWifiConnected()V

    .line 1191
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1194
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 1195
    const-string v0, "handleConnectionStateChanged: need pno scan by startConnectivityScan when screen is off but not scheduleWatchdogTimer"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1196
    const-string v0, "disconnect when screen off"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelScheduleWatchdogTimer(Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_0

    .line 1200
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 1201
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_0

    .line 1207
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelScheduleWatchdogTimer(Ljava/lang/String;)V

    .line 1209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1211
    :goto_0
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChanged: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    sput-boolean p1, Lcom/android/server/wifi/WifiNetworkSelector;->mScreenOn:Z

    .line 1141
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChangedForDisconnectedState(Z)V

    .line 1143
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 1145
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOpenNetworkNotifier:Lcom/android/server/wifi/OpenNetworkNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/OpenNetworkNotifier;->handleScreenStateChanged(Z)V

    .line 1146
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCarrierNetworkNotifier:Lcom/android/server/wifi/CarrierNetworkNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/CarrierNetworkNotifier;->handleScreenStateChanged(Z)V

    .line 1148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1149
    return-void
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1341
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 1342
    .local v0, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    :goto_0
    return v1
.end method

.method public prepareForForcedConnection(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareForForcedConnection: netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearConnectionAttemptTimeStamps()V

    .line 1253
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    .line 1254
    return-void
.end method

.method public saveMiracastMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1156
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMiracastMode: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMiracastMode:I

    .line 1158
    return-void
.end method

.method public setUntrustedConnectionAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUntrustedConnectionAllowed: allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1231
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 1232
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 1233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1235
    :cond_0
    return-void
.end method

.method public setUserConnectChoice(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserConnectChoice: netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNetworkSelector;->setUserConnectChoice(I)Z

    .line 1244
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set WiFi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1480
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 1481
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateRunningState()V

    .line 1483
    return-void
.end method

.method public startScreenOffPnoScan()V
    .locals 1

    .line 1525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1526
    return-void
.end method

.method public trackBssid(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "reasonCode"    # I

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackBssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "enable "

    goto :goto_0

    :cond_0
    const-string v1, "disable "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1315
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1316
    return v0

    .line 1319
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->updateBssidBlacklist(Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1320
    return v0

    .line 1324
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    .line 1326
    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 1330
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1333
    :cond_3
    return v0
.end method

.method public trackBssid(Ljava/lang/String;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "reasonCode"    # I
    .param p4, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1572
    if-nez p1, :cond_0

    .line 1573
    const/4 v0, 0x0

    return v0

    .line 1576
    :cond_0
    if-eqz p4, :cond_1

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1580
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method
