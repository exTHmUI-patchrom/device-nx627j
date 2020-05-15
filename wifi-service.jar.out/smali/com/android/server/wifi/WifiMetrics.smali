.class public Lcom/android/server/wifi/WifiMetrics;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;,
        Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;,
        Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
    }
.end annotation


# static fields
.field public static final CLEAN_DUMP_ARG:Ljava/lang/String; = "clean"

.field private static final CONNECT_TO_NETWORK_NOTIFICATION_ACTION_KEY_MULTIPLIER:I = 0x3e8

.field private static final DBG:Z = false

.field static final LOW_WIFI_SCORE:I = 0x32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_CONNECTABLE_BSSID_NETWORK_BUCKET:I = 0x32

.field public static final MAX_CONNECTABLE_SSID_NETWORK_BUCKET:I = 0x14

.field private static final MAX_CONNECTION_EVENTS:I = 0x100

.field private static final MAX_NUM_SOFT_AP_EVENTS:I = 0x100

.field public static final MAX_PASSPOINT_APS_PER_UNIQUE_ESS_BUCKET:I = 0x32

.field public static final MAX_RSSI_DELTA:I = 0x7f

.field private static final MAX_RSSI_POLL:I = 0x0

.field public static final MAX_STA_EVENTS:I = 0x300

.field public static final MAX_TOTAL_80211MC_APS_BUCKET:I = 0x14

.field public static final MAX_TOTAL_PASSPOINT_APS_BUCKET:I = 0x32

.field public static final MAX_TOTAL_PASSPOINT_UNIQUE_ESS_BUCKET:I = 0x14

.field public static final MAX_TOTAL_SCAN_RESULTS_BUCKET:I = 0xfa

.field public static final MAX_TOTAL_SCAN_RESULT_SSIDS_BUCKET:I = 0x64

.field private static final MAX_WIFI_SCORE:I = 0x3c

.field public static final MIN_RSSI_DELTA:I = -0x7f

.field private static final MIN_RSSI_POLL:I = -0x7f

.field private static final MIN_WIFI_SCORE:I = 0x0

.field public static final PROTO_DUMP_ARG:Ljava/lang/String; = "wifiMetricsProto"

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiMetrics"

.field public static final TIMEOUT_RSSI_DELTA_MILLIS:J = 0xbb8L


# instance fields
.field private final mAvailableOpenBssidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableOpenOrSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableOpenOrSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableOpenSsidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableSavedPasspointProviderBssidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableSavedPasspointProviderProfilesInScanHistogram:Landroid/util/SparseIntArray;

.field private final mAvailableSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

.field private final mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

.field private final mConnectionEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

.field private mHandler:Landroid/os/Handler;

.field private final mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

.field private mIsMacRandomizationOn:Z

.field private mIsWifiNetworksAvailableNotificationOn:Z

.field private mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

.field private mLastPollFreq:I

.field private mLastPollLinkSpeed:I

.field private mLastPollRssi:I

.field private mLastScore:I

.field private final mLock:Ljava/lang/Object;

.field private mNumOpenNetworkConnectMessageFailedToSend:I

.field private mNumOpenNetworkRecommendationUpdates:I

.field private final mObserved80211mcApInScanHistogram:Landroid/util/SparseIntArray;

.field private final mObservedHotspotR1ApInScanHistogram:Landroid/util/SparseIntArray;

.field private final mObservedHotspotR1ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

.field private final mObservedHotspotR1EssInScanHistogram:Landroid/util/SparseIntArray;

.field private final mObservedHotspotR2ApInScanHistogram:Landroid/util/SparseIntArray;

.field private final mObservedHotspotR2ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

.field private final mObservedHotspotR2EssInScanHistogram:Landroid/util/SparseIntArray;

.field private mOpenNetworkRecommenderBlacklistSize:I

.field private mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private final mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

.field private mRecordStartTimeSec:J

.field private final mRssiDeltaCounts:Landroid/util/SparseIntArray;

.field private final mRssiPollCountsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

.field private mScanResultRssi:I

.field private mScanResultRssiTimestampMillis:J

.field private final mScanReturnEntries:Landroid/util/SparseIntArray;

.field private mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private mScreenOn:Z

.field private final mSoftApEventListLocalOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoftApEventListTethered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

.field private mStaEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;",
            ">;"
        }
    .end annotation
.end field

.field private mSupplicantStateChangeBitmask:I

.field private final mTotalBssidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mTotalSsidsInScanHistogram:Landroid/util/SparseIntArray;

.field private final mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

.field private mWifiAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

.field private final mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

.field private mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private mWifiPowerMetrics:Lcom/android/server/wifi/WifiPowerMetrics;

.field private final mWifiScoreCounts:Landroid/util/SparseIntArray;

.field private mWifiState:I

.field private final mWifiSystemStateEntries:Landroid/util/SparseIntArray;

.field private final mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

.field private mWifiWins:Z

.field private final mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/rtt/RttMetrics;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "awareMetrics"    # Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .param p4, "rttMetrics"    # Lcom/android/server/wifi/rtt/RttMetrics;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 118
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 119
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 132
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    .line 144
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    .line 149
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    .line 153
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssi:I

    .line 158
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    .line 160
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    .line 167
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    .line 169
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    .line 171
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mTotalSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 172
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mTotalBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 173
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 174
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 175
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 176
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 177
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 178
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 179
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderProfilesInScanHistogram:Landroid/util/SparseIntArray;

    .line 181
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 184
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    .line 187
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    .line 189
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    .line 190
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mOpenNetworkRecommenderBlacklistSize:I

    .line 191
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetrics;->mIsWifiNetworksAvailableNotificationOn:Z

    .line 192
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkConnectMessageFailedToSend:I

    .line 193
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkRecommendationUpdates:I

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    .line 199
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApInScanHistogram:Landroid/util/SparseIntArray;

    .line 200
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApInScanHistogram:Landroid/util/SparseIntArray;

    .line 201
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1EssInScanHistogram:Landroid/util/SparseIntArray;

    .line 202
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2EssInScanHistogram:Landroid/util/SparseIntArray;

    .line 203
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    .line 204
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    .line 206
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObserved80211mcApInScanHistogram:Landroid/util/SparseIntArray;

    .line 209
    new-instance v1, Lcom/android/server/wifi/WifiPowerMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiPowerMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiPowerMetrics:Lcom/android/server/wifi/WifiPowerMetrics;

    .line 212
    new-instance v1, Lcom/android/server/wifi/WifiWakeMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiWakeMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    .line 214
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetrics;->mIsMacRandomizationOn:Z

    .line 1302
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    .line 2879
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    .line 3082
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    .line 3083
    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    .line 3084
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    .line 3085
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    .line 3086
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastScore:I

    .line 451
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    .line 454
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    .line 455
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    .line 456
    iput-object p3, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    .line 457
    iput-object p4, p0, Lcom/android/server/wifi/WifiMetrics;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    .line 459
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/WifiMetrics$1;-><init>(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mHandler:Landroid/os/Handler;

    .line 466
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics;
    .param p1, "x1"    # Landroid/os/Message;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addSoftApConnectedClientsEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;I)V
    .locals 4
    .param p1, "event"    # Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .param p2, "mode"    # I

    .line 1395
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1397
    packed-switch p2, :pswitch_data_0

    .line 1405
    :try_start_0
    monitor-exit v0

    goto :goto_1

    .line 1402
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    .line 1403
    .local v1, "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    goto :goto_0

    .line 1399
    .end local v1    # "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    .line 1400
    .restart local v1    # "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    nop

    .line 1405
    :goto_0
    nop

    .line 1408
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_0

    .line 1409
    monitor-exit v0

    return-void

    .line 1412
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    .line 1413
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1414
    .end local v1    # "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    monitor-exit v0

    .line 1415
    return-void

    .line 1405
    :goto_1
    return-void

    .line 1414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V
    .locals 4
    .param p1, "staEvent"    # Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2825
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    .line 2826
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    .line 2827
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    .line 2828
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    .line 2829
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    .line 2830
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastScore:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    .line 2831
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    .line 2832
    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    .line 2833
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    .line 2834
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    .line 2835
    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastScore:I

    .line 2836
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;-><init>(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;J)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2838
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x300

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 2839
    :cond_0
    return-void
.end method

.method private static authFailureReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "authFailureReason"    # I

    .line 3031
    packed-switch p0, :pswitch_data_0

    .line 3041
    const-string v0, ""

    return-object v0

    .line 3039
    :pswitch_0
    const-string v0, "ERROR_AUTH_FAILURE_EAP_FAILURE"

    return-object v0

    .line 3037
    :pswitch_1
    const-string v0, "ERROR_AUTH_FAILURE_WRONG_PSWD"

    return-object v0

    .line 3035
    :pswitch_2
    const-string v0, "ERROR_AUTH_FAILURE_TIMEOUT"

    return-object v0

    .line 3033
    :pswitch_3
    const-string v0, "ERROR_AUTH_FAILURE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static bitSetToInt(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "bits"    # Ljava/util/BitSet;

    .line 3092
    const/4 v0, 0x0

    .line 3093
    .local v0, "value":I
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v2

    nop

    :cond_0
    move v1, v2

    .line 3094
    .local v1, "nBits":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "value":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3095
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 3094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3097
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method private clear()V
    .locals 5

    .line 2636
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2637
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2638
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v1, :cond_0

    .line 2639
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2641
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2642
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2643
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    .line 2644
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2645
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2646
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2647
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2648
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-virtual {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 2649
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    .line 2650
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2651
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 2652
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->clear()V

    .line 2653
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/rtt/RttMetrics;->clear()V

    .line 2654
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mTotalSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2655
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mTotalBssidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2656
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2657
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenBssidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2658
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2659
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2660
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2661
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2662
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderProfilesInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2663
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderBssidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2664
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 2665
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-virtual {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 2666
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2667
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2668
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkRecommendationUpdates:I

    .line 2669
    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkConnectMessageFailedToSend:I

    .line 2670
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2671
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2672
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1EssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2673
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2EssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2674
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2675
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2676
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2677
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2678
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 2679
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics;->clear()V

    .line 2680
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mObserved80211mcApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2681
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2682
    monitor-exit v0

    .line 2683
    return-void

    .line 2682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static configInfoToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 3065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3066
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ConfigInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowed_key_management="

    .line 3067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allowed_protocols="

    .line 3068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allowed_auth_algorithms="

    .line 3069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allowed_pairwise_ciphers="

    .line 3070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allowed_group_ciphers="

    .line 3071
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hidden_ssid="

    .line 3072
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is_passpoint="

    .line 3073
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is_ephemeral="

    .line 3074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " has_ever_connected="

    .line 3075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " scan_rssi="

    .line 3076
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scan_freq="

    .line 3077
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3078
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private consolidateProto(Z)V
    .locals 16
    .param p1, "incremental"    # Z

    move-object/from16 v1, p0

    .line 2344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 2345
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 2346
    .local v3, "rssis":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 2347
    .local v4, "rssiDeltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 2348
    .local v5, "alertReasons":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 2349
    .local v6, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;>;"
    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2350
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 2353
    .local v8, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    if-eqz p1, :cond_0

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eq v10, v8, :cond_1

    iget-object v10, v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-boolean v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    if-nez v10, :cond_1

    .line 2357
    :cond_0
    iget-object v10, v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2358
    if-eqz p1, :cond_1

    .line 2359
    iget-object v10, v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput-boolean v9, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    .line 2362
    .end local v8    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    :cond_1
    goto :goto_0

    .line 2363
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2364
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 2368
    :cond_3
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    .line 2369
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2370
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_4

    .line 2371
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    new-instance v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v11}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v11, v10, v8

    .line 2372
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    .line 2373
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    .line 2370
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2379
    .end local v8    # "i":I
    :cond_4
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    .line 2381
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2382
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_6

    .line 2383
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    new-instance v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v11}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v11, v10, v8

    .line 2385
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    .line 2386
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    .line 2387
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    .line 2388
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    .line 2389
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    .line 2390
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_5

    move v11, v9

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iput-boolean v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    .line 2382
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2392
    .end local v8    # "i":I
    :cond_6
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v10}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-wide v12, v1, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    sub-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 2399
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2400
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/SparseIntArray;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2401
    .local v11, "frequency":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2402
    .local v12, "histogram":Landroid/util/SparseIntArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 2403
    new-instance v14, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v14}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    .line 2404
    .local v14, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iput v0, v14, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 2405
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iput v0, v14, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    .line 2406
    iput v11, v14, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    .line 2407
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    .end local v14    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2409
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/SparseIntArray;>;"
    .end local v11    # "frequency":I
    .end local v12    # "histogram":Landroid/util/SparseIntArray;
    .end local v13    # "i":I
    :cond_7
    goto :goto_4

    .line 2410
    :cond_8
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_9

    .line 2417
    new-instance v8, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v8}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    .line 2418
    .local v8, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 2419
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    .line 2420
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    .end local v8    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2422
    .end local v0    # "i":I
    :cond_9
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2430
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 2431
    new-instance v8, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v8}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    .line 2432
    .local v8, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 2433
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .line 2434
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    .end local v8    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2436
    .end local v0    # "i":I
    :cond_a
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 2442
    const/4 v0, 0x0

    .local v0, "score":I
    :goto_8
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_b

    .line 2443
    new-instance v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v8}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    .line 2444
    .local v8, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->score:I

    .line 2445
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->count:I

    .line 2446
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2442
    .end local v8    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2448
    .end local v0    # "score":I
    :cond_b
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 2454
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2455
    .local v0, "codeCounts":I
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    new-array v10, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 2456
    const/4 v8, 0x0

    .local v8, "sapCode":I
    :goto_9
    if-ge v8, v0, :cond_c

    .line 2457
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    new-instance v11, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v11}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v11, v10, v8

    .line 2459
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    .line 2460
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    .line 2461
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v10, v10, v8

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    .line 2462
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    .line 2456
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 2468
    .end local v8    # "sapCode":I
    :cond_c
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2469
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 2470
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;

    iget-object v11, v11, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;->staEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aput-object v11, v10, v8

    .line 2469
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 2472
    .end local v8    # "i":I
    :cond_d
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mTotalSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2473
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2474
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mTotalBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2475
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2476
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2477
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2478
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2479
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2480
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2481
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2482
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2483
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2484
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2485
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2487
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2488
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2490
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderProfilesInScanHistogram:Landroid/util/SparseIntArray;

    .line 2491
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2493
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2494
    invoke-direct {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2496
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v10}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->consolidateProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 2497
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    invoke-virtual {v10}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidateProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 2499
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 2500
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iput-object v10, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 2506
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    .line 2508
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2509
    .local v8, "notificationCountArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 2510
    new-instance v11, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v11}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    .line 2512
    .local v11, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    iput v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    .line 2513
    iput v9, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    .line 2515
    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    iput v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    .line 2516
    aput-object v11, v8, v10

    .line 2509
    .end local v11    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 2518
    .end local v10    # "i":I
    :cond_e
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-object v8, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2524
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    .line 2526
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2527
    .local v10, "notificationActionCountArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c
    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 2528
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    .line 2530
    .local v12, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    iget-object v13, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2531
    .local v13, "key":I
    div-int/lit16 v14, v13, 0x3e8

    iput v14, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    .line 2532
    rem-int/lit16 v14, v13, 0x3e8

    iput v14, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    .line 2533
    iput v9, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    .line 2535
    iget-object v14, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    iput v14, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    .line 2536
    aput-object v12, v10, v11

    .line 2527
    .end local v12    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .end local v13    # "key":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 2543
    .end local v11    # "i":I
    :cond_f
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 2544
    .local v9, "counts":I
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    new-array v12, v9, [Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    .line 2546
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    move v11, v15

    .end local v15    # "i":I
    .restart local v11    # "i":I
    if-ge v11, v9, :cond_10

    .line 2547
    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    new-instance v13, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    invoke-direct {v13}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;-><init>()V

    aput-object v13, v12, v11

    .line 2549
    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    aget-object v12, v12, v11

    iget-object v13, v1, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    .line 2550
    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    iput v13, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    .line 2551
    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    aget-object v12, v12, v11

    iget-object v13, v1, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    .line 2552
    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    iput v13, v12, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    .line 2546
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "i":I
    .restart local v15    # "i":I
    goto :goto_d

    .line 2555
    .end local v15    # "i":I
    :cond_10
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-object v10, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2557
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v12, v1, Lcom/android/server/wifi/WifiMetrics;->mOpenNetworkRecommenderBlacklistSize:I

    iput v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 2559
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-boolean v12, v1, Lcom/android/server/wifi/WifiMetrics;->mIsWifiNetworksAvailableNotificationOn:Z

    iput-boolean v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 2561
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v12, v1, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkRecommendationUpdates:I

    iput v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 2563
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v12, v1, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkConnectMessageFailedToSend:I

    iput v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 2566
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApInScanHistogram:Landroid/util/SparseIntArray;

    .line 2567
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2568
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApInScanHistogram:Landroid/util/SparseIntArray;

    .line 2569
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2570
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1EssInScanHistogram:Landroid/util/SparseIntArray;

    .line 2571
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2572
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2EssInScanHistogram:Landroid/util/SparseIntArray;

    .line 2573
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2574
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    .line 2575
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2577
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    .line 2578
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2581
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mObserved80211mcApInScanHistogram:Landroid/util/SparseIntArray;

    .line 2582
    invoke-direct {v1, v12}, Lcom/android/server/wifi/WifiMetrics;->makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2584
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_11

    .line 2585
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    iget-object v13, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2586
    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2589
    :cond_11
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_12

    .line 2590
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    iget-object v13, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2591
    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2595
    :cond_12
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 2596
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiPowerMetrics:Lcom/android/server/wifi/WifiPowerMetrics;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiPowerMetrics;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 2597
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiWakeMetrics;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 2598
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-boolean v12, v1, Lcom/android/server/wifi/WifiMetrics;->mIsMacRandomizationOn:Z

    iput-boolean v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 2599
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const-string v12, "ro.boot.revision"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    .line 2600
    .end local v0    # "codeCounts":I
    .end local v8    # "notificationCountArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .end local v9    # "counts":I
    .end local v10    # "notificationActionCountArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    monitor-exit v7

    .line 2601
    return-void

    .line 2600
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private consolidateScoringParams()V
    .locals 5

    .line 2605
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    if-eqz v1, :cond_1

    .line 2607
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual {v1}, Lcom/android/server/wifi/ScoringParams;->getExperimentIdentifier()I

    move-result v1

    .line 2608
    .local v1, "experimentIdentifier":I
    if-nez v1, :cond_0

    .line 2609
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    goto :goto_0

    .line 2611
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .line 2614
    .end local v1    # "experimentIdentifier":I
    :cond_1
    :goto_0
    monitor-exit v0

    .line 2615
    return-void

    .line 2614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createConfigInfo(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2842
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2843
    :cond_0
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    .line 2844
    .local v0, "info":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    .line 2845
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    .line 2846
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    .line 2847
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    .line 2848
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    .line 2849
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    .line 2850
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    .line 2851
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    .line 2852
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    .line 2853
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 2854
    .local v1, "candidate":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_1

    .line 2855
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    .line 2856
    iget v2, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    .line 2858
    :cond_1
    return-object v0
.end method

.method private static frameworkDisconnectReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "frameworkDisconnectReason"    # I

    .line 3046
    packed-switch p0, :pswitch_data_0

    .line 3060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISCONNECT_UNKNOWN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3058
    :pswitch_0
    const-string v0, "DISCONNECT_RESET_SIM_NETWORKS"

    return-object v0

    .line 3056
    :pswitch_1
    const-string v0, "DISCONNECT_P2P_DISCONNECT_WIFI_REQUEST"

    return-object v0

    .line 3054
    :pswitch_2
    const-string v0, "DISCONNECT_ROAM_WATCHDOG_TIMER"

    return-object v0

    .line 3052
    :pswitch_3
    const-string v0, "DISCONNECT_UNWANTED"

    return-object v0

    .line 3050
    :pswitch_4
    const-string v0, "DISCONNECT_GENERIC"

    return-object v0

    .line 3048
    :pswitch_5
    const-string v0, "DISCONNECT_API"

    return-object v0

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

.method private increment(Landroid/util/SparseIntArray;I)V
    .locals 2
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3124
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 3125
    .local v0, "count":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3126
    return-void
.end method

.method private increment80211mcAps(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3121
    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3122
    return-void
.end method

.method private incrementBssid(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3103
    const/16 v0, 0x32

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3104
    return-void
.end method

.method private incrementPasspointPerUniqueEss(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3118
    const/16 v0, 0x32

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3119
    return-void
.end method

.method private incrementSsid(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3100
    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3101
    return-void
.end method

.method private incrementTotalPasspointAps(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3112
    const/16 v0, 0x32

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3113
    return-void
.end method

.method private incrementTotalScanResults(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3106
    const/16 v0, 0xfa

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3107
    return-void
.end method

.method private incrementTotalScanSsids(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3109
    const/16 v0, 0x64

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3110
    return-void
.end method

.method private incrementTotalUniquePasspointEss(Landroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "sia"    # Landroid/util/SparseIntArray;
    .param p2, "element"    # I

    .line 3115
    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMetrics;->increment(Landroid/util/SparseIntArray;I)V

    .line 3116
    return-void
.end method

.method private makeNumConnectableNetworksBucketArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .locals 4
    .param p1, "sia"    # Landroid/util/SparseIntArray;

    .line 2619
    nop

    .line 2620
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2621
    .local v0, "array":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2622
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    .line 2624
    .local v2, "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    .line 2625
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    .line 2626
    aput-object v2, v0, v1

    .line 2621
    .end local v2    # "keyVal":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2628
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private maybeIncrementRssiDeltaCount(I)V
    .locals 5
    .param p1, "rssi"    # I

    .line 1188
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    sub-long/2addr v0, v2

    .line 1190
    .local v0, "timeDelta":J
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1191
    const/16 v2, -0x7f

    if-lt p1, v2, :cond_0

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1193
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    .end local v2    # "count":I
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    .line 1198
    .end local v0    # "timeDelta":J
    :cond_1
    return-void
.end method

.method private newLinkLayerStatsIsValid(Lcom/android/server/wifi/WifiLinkLayerStats;Lcom/android/server/wifi/WifiLinkLayerStats;)Z
    .locals 2
    .param p1, "oldStats"    # Lcom/android/server/wifi/WifiLinkLayerStats;
    .param p2, "newStats"    # Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 518
    iget v0, p2, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    iget v1, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    if-lt v0, v1, :cond_1

    iget v0, p2, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    iget v1, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    if-lt v0, v1, :cond_1

    iget v0, p2, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    iget v1, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    if-lt v0, v1, :cond_1

    iget v0, p2, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    iget v1, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 522
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2708
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    .line 2709
    .local v0, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    const/4 v1, 0x1

    .line 2710
    .local v1, "logEvent":Z
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 2755
    return-void

    .line 2712
    :sswitch_0
    iput v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2713
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_0

    move v5, v6

    nop

    :cond_0
    iput-boolean v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    .line 2714
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    .line 2715
    goto :goto_1

    .line 2717
    :sswitch_1
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2718
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 2732
    goto :goto_1

    .line 2729
    :pswitch_0
    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 2730
    goto :goto_1

    .line 2726
    :pswitch_1
    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 2727
    goto :goto_1

    .line 2723
    :pswitch_2
    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 2724
    goto :goto_1

    .line 2720
    :pswitch_3
    iput v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 2721
    goto :goto_1

    .line 2744
    :sswitch_2
    const/4 v1, 0x0

    .line 2745
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/StateChangeResult;

    .line 2746
    .local v2, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMetrics;->supplicantStateToBit(Landroid/net/wifi/SupplicantState;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    .line 2747
    goto :goto_1

    .line 2739
    .end local v2    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_3
    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2740
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    .line 2741
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    iput-boolean v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    .line 2742
    goto :goto_1

    .line 2736
    :sswitch_4
    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2737
    goto :goto_1

    .line 2749
    :sswitch_5
    const/4 v2, 0x6

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2750
    goto :goto_1

    .line 2752
    :sswitch_6
    const/16 v2, 0xa

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2753
    nop

    .line 2757
    :goto_1
    if-eqz v1, :cond_2

    .line 2758
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V

    .line 2760
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2008d -> :sswitch_6
        0x20093 -> :sswitch_5
        0x24003 -> :sswitch_4
        0x24004 -> :sswitch_3
        0x24006 -> :sswitch_2
        0x24007 -> :sswitch_1
        0x2402b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private returnCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "scanReturnCode"    # I

    .line 953
    packed-switch p1, :pswitch_data_0

    .line 965
    const-string v0, "<UNKNOWN>"

    return-object v0

    .line 963
    :pswitch_0
    const-string v0, "FAILURE_WIFI_DISABLED"

    return-object v0

    .line 961
    :pswitch_1
    const-string v0, "SCAN_FAILURE_INVALID_CONFIGURATION"

    return-object v0

    .line 959
    :pswitch_2
    const-string v0, "SCAN_FAILURE_INTERRUPTED"

    return-object v0

    .line 957
    :pswitch_3
    const-string v0, "SCAN_SUCCESS"

    return-object v0

    .line 955
    :pswitch_4
    const-string v0, "SCAN_UNKNOWN"

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

.method public static staEventToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2944
    if-nez p0, :cond_0

    const-string v0, "<NULL>"

    return-object v0

    .line 2945
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2946
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    .line 3012
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3009
    :pswitch_1
    const-string v1, "WIFI_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    goto/16 :goto_1

    .line 3006
    :pswitch_2
    const-string v1, "WIFI_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    goto/16 :goto_1

    .line 3003
    :pswitch_3
    const-string v1, "MAC_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    goto/16 :goto_1

    .line 3000
    :pswitch_4
    const-string v1, "SCORE_BREACH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    goto/16 :goto_1

    .line 2995
    :pswitch_5
    const-string v1, "FRAMEWORK_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    .line 2996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    .line 2997
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->frameworkDisconnectReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    goto/16 :goto_1

    .line 2992
    :pswitch_6
    const-string v1, "NETWORK_AGENT_VALID_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    goto/16 :goto_1

    .line 2989
    :pswitch_7
    const-string v1, "CONNECT_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    goto/16 :goto_1

    .line 2986
    :pswitch_8
    const-string v1, "CMD_START_ROAM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    goto/16 :goto_1

    .line 2983
    :pswitch_9
    const-string v1, "CMD_START_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    goto/16 :goto_1

    .line 2980
    :pswitch_a
    const-string v1, "CMD_TARGET_BSSID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    goto/16 :goto_1

    .line 2977
    :pswitch_b
    const-string v1, "CMD_IP_REACHABILITY_LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2978
    goto/16 :goto_1

    .line 2974
    :pswitch_c
    const-string v1, "CMD_IP_CONFIGURATION_LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    goto/16 :goto_1

    .line 2971
    :pswitch_d
    const-string v1, "CMD_IP_CONFIGURATION_SUCCESSFUL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    goto/16 :goto_1

    .line 2968
    :pswitch_e
    const-string v1, "CMD_ASSOCIATED_BSSID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    goto/16 :goto_1

    .line 2961
    :pswitch_f
    const-string v1, "NETWORK_DISCONNECTION_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " local_gen="

    .line 2962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    mul-int/2addr v1, v2

    .line 2964
    :goto_0
    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$ReasonCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    goto :goto_1

    .line 2958
    :pswitch_10
    const-string v1, "NETWORK_CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    goto :goto_1

    .line 2954
    :pswitch_11
    const-string v1, "AUTHENTICATION_FAILURE_EVENT reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 2955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->authFailureReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    goto :goto_1

    .line 2948
    :pswitch_12
    const-string v1, "ASSOCIATION_REJECTION_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timedOut="

    .line 2949
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " status="

    .line 2950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    .line 2951
    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    nop

    .line 3015
    :goto_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/16 v3, -0x7f

    if-eq v1, v3, :cond_2

    const-string v1, " lastRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3016
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    if-eq v1, v2, :cond_3

    const-string v1, " lastFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3017
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    if-eq v1, v2, :cond_4

    const-string v1, " lastLinkSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3018
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    if-eq v1, v2, :cond_5

    const-string v1, " lastScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3019
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    if-eqz v1, :cond_6

    .line 3020
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->supplicantStateChangesBitmaskToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-eqz v1, :cond_7

    .line 3024
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->configInfoToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static supplicantStateChangesBitmaskToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mask"    # I

    .line 2920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2921
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "supplicantStateChangeEvents: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2922
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    const-string v1, " DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    const-string v1, " INTERFACE_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_2

    const-string v1, " INACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_3

    const-string v1, " SCANNING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_4

    const-string v1, " AUTHENTICATING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_5

    const-string v1, " ASSOCIATING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2928
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_6

    const-string v1, " ASSOCIATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_7

    const-string v1, " FOUR_WAY_HANDSHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-lez v1, :cond_8

    const-string v1, " GROUP_HANDSHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-lez v1, :cond_9

    const-string v1, " COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-lez v1, :cond_a

    const-string v1, " DORMANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-lez v1, :cond_b

    const-string v1, " UNINITIALIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-lez v1, :cond_c

    const-string v1, " INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static supplicantStateToBit(Landroid/net/wifi/SupplicantState;)I
    .locals 3
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .line 2886
    sget-object v0, Lcom/android/server/wifi/WifiMetrics$2;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2914
    const-string v0, "WifiMetrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unknown supplicant state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const/4 v0, 0x0

    return v0

    .line 2912
    :pswitch_0
    const/16 v0, 0x1000

    return v0

    .line 2910
    :pswitch_1
    const/16 v0, 0x800

    return v0

    .line 2908
    :pswitch_2
    const/16 v0, 0x400

    return v0

    .line 2906
    :pswitch_3
    const/16 v0, 0x200

    return v0

    .line 2904
    :pswitch_4
    const/16 v0, 0x100

    return v0

    .line 2902
    :pswitch_5
    const/16 v0, 0x80

    return v0

    .line 2900
    :pswitch_6
    const/16 v0, 0x40

    return v0

    .line 2898
    :pswitch_7
    const/16 v0, 0x20

    return v0

    .line 2896
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 2894
    :pswitch_9
    const/16 v0, 0x8

    return v0

    .line 2892
    :pswitch_a
    const/4 v0, 0x4

    return v0

    .line 2890
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 2888
    :pswitch_c
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V
    .locals 3
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 773
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v0

    .line 774
    .local v0, "dtimInterval":I
    if-lez v0, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v1

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 779
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getWifiMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 799
    const/4 v1, 0x6

    goto :goto_0

    .line 796
    :pswitch_0
    const/4 v1, 0x5

    .line 797
    .local v1, "connectionWifiMode":I
    goto :goto_0

    .line 793
    .end local v1    # "connectionWifiMode":I
    :pswitch_1
    const/4 v1, 0x4

    .line 794
    .restart local v1    # "connectionWifiMode":I
    goto :goto_0

    .line 790
    .end local v1    # "connectionWifiMode":I
    :pswitch_2
    const/4 v1, 0x3

    .line 791
    .restart local v1    # "connectionWifiMode":I
    goto :goto_0

    .line 787
    .end local v1    # "connectionWifiMode":I
    :pswitch_3
    const/4 v1, 0x2

    .line 788
    .restart local v1    # "connectionWifiMode":I
    goto :goto_0

    .line 784
    .end local v1    # "connectionWifiMode":I
    :pswitch_4
    const/4 v1, 0x1

    .line 785
    .restart local v1    # "connectionWifiMode":I
    goto :goto_0

    .line 781
    .end local v1    # "connectionWifiMode":I
    :pswitch_5
    const/4 v1, 0x0

    .line 782
    .restart local v1    # "connectionWifiMode":I
    nop

    .line 799
    :goto_0
    nop

    .line 802
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v2

    iput v1, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 804
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 810
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    .line 811
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 813
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$602(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 815
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 822
    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 825
    :cond_2
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 829
    :cond_3
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 830
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 834
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 836
    return-void
.end method

.method private wifiSystemStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 993
    packed-switch p1, :pswitch_data_0

    .line 1003
    const-string v0, "default"

    return-object v0

    .line 1001
    :pswitch_0
    const-string v0, "WIFI_ASSOCIATED"

    return-object v0

    .line 999
    :pswitch_1
    const-string v0, "WIFI_DISCONNECTED"

    return-object v0

    .line 997
    :pswitch_2
    const-string v0, "WIFI_DISABLED"

    return-object v0

    .line 995
    :pswitch_3
    const-string v0, "WIFI_UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .line 1080
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 1082
    monitor-exit v0

    .line 1083
    return-void

    .line 1082
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .line 1048
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 1050
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .line 1056
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 1058
    monitor-exit v0

    .line 1059
    return-void

    .line 1058
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 1066
    monitor-exit v0

    .line 1067
    return-void

    .line 1066
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCountToNumLastResortWatchdogBadOtherNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .line 1072
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 1074
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSoftApChannelSwitchedEvent(III)V
    .locals 5
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I
    .param p3, "mode"    # I

    .line 1421
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    packed-switch p3, :pswitch_data_0

    .line 1431
    :try_start_0
    monitor-exit v0

    goto :goto_3

    .line 1428
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    .line 1429
    .local v1, "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    goto :goto_0

    .line 1425
    .end local v1    # "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    .line 1426
    .restart local v1    # "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    nop

    .line 1431
    :goto_0
    nop

    .line 1434
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1435
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 1437
    .local v3, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    if-nez v4, :cond_0

    .line 1438
    iput p1, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    .line 1439
    iput p2, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    .line 1440
    goto :goto_2

    .line 1434
    .end local v3    # "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1443
    .end local v1    # "softApEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;>;"
    .end local v2    # "index":I
    :cond_1
    :goto_2
    monitor-exit v0

    .line 1444
    return-void

    .line 1431
    :goto_3
    return-void

    .line 1443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addSoftApNumAssociatedStationsChangedEvent(II)V
    .locals 2
    .param p1, "numStations"    # I
    .param p2, "mode"    # I

    .line 1385
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    .line 1386
    .local v0, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    .line 1387
    iput p1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    .line 1388
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApConnectedClientsEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;I)V

    .line 1389
    return-void
.end method

.method public addSoftApUpChangedEvent(ZI)V
    .locals 3
    .param p1, "isUp"    # Z
    .param p2, "mode"    # I

    .line 1374
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    .line 1375
    .local v0, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1376
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    .line 1377
    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    .line 1378
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApConnectedClientsEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;I)V

    .line 1379
    return-void
.end method

.method public countScanResults(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .line 1249
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    if-nez p1, :cond_0

    .line 1250
    return-void

    .line 1252
    :cond_0
    const/4 v0, 0x0

    .line 1253
    .local v0, "totalResults":I
    const/4 v1, 0x0

    .line 1254
    .local v1, "openNetworks":I
    const/4 v2, 0x0

    .line 1255
    .local v2, "personalNetworks":I
    const/4 v3, 0x0

    .line 1256
    .local v3, "enterpriseNetworks":I
    const/4 v4, 0x0

    .line 1257
    .local v4, "hiddenNetworks":I
    const/4 v5, 0x0

    .line 1258
    .local v5, "hotspot2r1Networks":I
    const/4 v6, 0x0

    .line 1259
    .local v6, "hotspot2r2Networks":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    .line 1260
    .local v8, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v9

    .line 1261
    .local v9, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    .line 1262
    .local v10, "scanResult":Landroid/net/wifi/ScanResult;
    add-int/lit8 v0, v0, 0x1

    .line 1263
    if-eqz v9, :cond_3

    .line 1264
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isHiddenBeaconFrame()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1265
    add-int/lit8 v4, v4, 0x1

    .line 1267
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1268
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v12, :cond_2

    .line 1269
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1270
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v12, :cond_3

    .line 1271
    add-int/lit8 v6, v6, 0x1

    .line 1275
    :cond_3
    :goto_1
    if-eqz v10, :cond_7

    iget-object v11, v10, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 1276
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1277
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1278
    :cond_4
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1280
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1281
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1283
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    .line 1286
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .end local v8    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v9    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v10    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_3

    .line 1284
    .restart local v8    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v9    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .restart local v10    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 1289
    .end local v8    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v9    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v10    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_7
    :goto_3
    goto :goto_0

    .line 1290
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1291
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    add-int/2addr v9, v0

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 1292
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 1293
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    add-int/2addr v9, v2

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 1294
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    add-int/2addr v9, v3

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 1295
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    add-int/2addr v9, v4

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 1296
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 1297
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    add-int/2addr v9, v6

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 1298
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 1299
    monitor-exit v7

    .line 1300
    return-void

    .line 1299
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1851
    move-object/from16 v4, p3

    iget-object v5, v1, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1852
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiMetrics;->consolidateScoringParams()V

    .line 1853
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    array-length v0, v4

    if-lez v0, :cond_3

    const-string v0, "wifiMetricsProto"

    aget-object v8, v4, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1855
    invoke-direct {v1, v7}, Lcom/android/server/wifi/WifiMetrics;->consolidateProto(Z)V

    .line 1856
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 1857
    .local v8, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eq v9, v8, :cond_0

    .line 1860
    iget-object v9, v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput-boolean v7, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    .line 1862
    .end local v8    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    :cond_0
    goto :goto_0

    .line 1863
    :cond_1
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-static {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 1864
    .local v0, "wifiMetricsProto":[B
    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 1865
    .local v6, "metricsProtoDump":Ljava/lang/String;
    array-length v8, v4

    if-le v8, v7, :cond_2

    const-string v8, "clean"

    aget-object v7, v4, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1867
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1870
    :cond_2
    const-string v7, "WifiMetrics:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    const-string v7, "EndWifiMetrics"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiMetrics;->clear()V

    .line 1875
    .end local v0    # "wifiMetricsProto":[B
    .end local v6    # "metricsProtoDump":Ljava/lang/String;
    goto/16 :goto_f

    .line 1876
    :cond_3
    const-string v0, "WifiMetrics:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    const-string v0, "mConnectionEvents:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1878
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 1879
    .restart local v8    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    invoke-virtual {v8}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1880
    .local v9, "eventLine":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-ne v8, v10, :cond_4

    .line 1881
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "CURRENTLY OPEN EVENT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 1883
    :cond_4
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    .end local v8    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v9    # "eventLine":Ljava/lang/String;
    goto :goto_2

    .line 1885
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSavedNetworks="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numOpenNetworks="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPersonalNetworks="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numEnterpriseNetworks="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numHiddenNetworks="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointNetworks="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.isLocationEnabled="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-boolean v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.isScanningAlwaysEnabled="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-boolean v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numNetworksAddedByUser="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numNetworksAddedByApps="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numNonEmptyScanResults="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numEmptyScanResults="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numConnecitvityOneshotScans="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numOneshotScans="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numBackgroundScans="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numExternalAppOneshotScanRequests="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numExternalForegroundAppOneshotScanRequestsThrottled="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numExternalBackgroundAppOneshotScanRequestsThrottled="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    const-string v0, "mScanReturnEntries:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  SCAN_UNKNOWN: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  SCAN_SUCCESS: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  SCAN_FAILURE_INTERRUPTED: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  SCAN_FAILURE_INVALID_CONFIGURATION: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  FAILURE_WIFI_DISABLED: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    const-string v0, "mSystemStateEntries: <state><screenOn> : <scansInitiated>"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_UNKNOWN       ON: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    invoke-virtual {v1, v6, v7}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1931
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_DISABLED      ON: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    invoke-virtual {v1, v7, v7}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_DISCONNECTED  ON: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-virtual {v1, v8, v7}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1935
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_ASSOCIATED    ON: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-virtual {v1, v9, v7}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1937
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_UNKNOWN      OFF: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    invoke-virtual {v1, v6, v6}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1939
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_DISABLED     OFF: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    invoke-virtual {v1, v7, v6}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1941
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_DISCONNECTED OFF: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    invoke-virtual {v1, v8, v6}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1943
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  WIFI_ASSOCIATED   OFF: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    invoke-virtual {v1, v9, v6}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1945
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numConnectivityWatchdogPnoGood="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numConnectivityWatchdogPnoBad="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numConnectivityWatchdogBackgroundGood="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numConnectivityWatchdogBackgroundBad="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogTriggers="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogBadAssociationNetworksTotal="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogBadAuthenticationNetworksTotal="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogBadDhcpNetworksTotal="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogBadOtherNetworksTotal="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogAvailableNetworksTotal="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAssociation="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAuthentication="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogTriggersWithBadDhcp="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogTriggersWithBadOther="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.numLastResortWatchdogSuccesses="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiLogProto.recordDurationSec="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    .line 1978
    invoke-virtual {v10}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-wide v12, v1, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    sub-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1977
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1981
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1982
    .local v0, "rssiMap":Lorg/json/JSONObject;
    iget-object v11, v1, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1983
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/SparseIntArray;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1984
    .local v13, "frequency":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 1985
    .local v14, "histogram":Landroid/util/SparseIntArray;
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 1986
    .local v15, "histogramElements":Lorg/json/JSONArray;
    const/16 v16, -0x7f

    .local v16, "i":I
    :goto_4
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v10, v17

    if-gtz v10, :cond_7

    .line 1987
    .end local v17    # "i":I
    .local v10, "i":I
    invoke-virtual {v14, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    move/from16 v19, v16

    .line 1988
    .local v19, "count":I
    move/from16 v9, v19

    if-nez v9, :cond_6

    .line 1989
    .end local v19    # "count":I
    .local v9, "count":I
    goto :goto_5

    .line 1991
    :cond_6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1992
    .local v8, "histogramElement":Lorg/json/JSONObject;
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1993
    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1986
    .end local v8    # "histogramElement":Lorg/json/JSONObject;
    .end local v9    # "count":I
    :goto_5
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "i":I
    .restart local v16    # "i":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto :goto_4

    .line 1995
    .end local v16    # "i":I
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1996
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/SparseIntArray;>;"
    .end local v13    # "frequency":I
    .end local v14    # "histogram":Landroid/util/SparseIntArray;
    .end local v15    # "histogramElements":Lorg/json/JSONArray;
    nop

    .line 1982
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto :goto_3

    .line 1997
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.rssiPollCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2000
    .end local v0    # "rssiMap":Lorg/json/JSONObject;
    goto :goto_6

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSONException occurred: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    const-string v0, "mWifiLogProto.rssiPollDeltaCount: Printing counts for [-127, 127]"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2005
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v18, -0x7f

    .local v18, "i":I
    :goto_7
    move/from16 v7, v18

    .end local v18    # "i":I
    .local v7, "i":I
    const/16 v8, 0x7f

    if-gt v7, v8, :cond_9

    .line 2006
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .restart local v18    # "i":I
    goto :goto_7

    .line 2008
    .end local v18    # "i":I
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    const-string v7, "mWifiLogProto.alertReasonCounts="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2011
    move v7, v6

    .line 2012
    .restart local v7    # "i":I
    :goto_8
    const/16 v8, 0x40

    if-gt v7, v8, :cond_b

    .line 2013
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 2014
    .local v8, "count":I
    if-lez v8, :cond_a

    .line 2015
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "),"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    .end local v8    # "count":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2018
    .end local v7    # "i":I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_c

    .line 2019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2020
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 2022
    :cond_c
    const-string v7, "()"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numTotalScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numOpenNetworkScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPersonalNetworkScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numEnterpriseNetworkScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numHiddenNetworkScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numHotspot2R1NetworkScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numHotspot2R2NetworkScanResults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numScans="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    const-string v7, "mWifiLogProto.WifiScoreCount: [0, 60]"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    move v7, v6

    .restart local v7    # "i":I
    :goto_a
    const/16 v8, 0x3c

    if-gt v7, v8, :cond_d

    .line 2042
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2041
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 2044
    .end local v7    # "i":I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2045
    const-string v7, "mWifiLogProto.SoftApManagerReturnCodeCounts:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  SUCCESS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  FAILED_GENERAL_ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  FAILED_NO_CHANNEL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2053
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numHalCrashes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numWificondCrashes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSupplicantCrashes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numHostapdCrashes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSetupClientInterfaceFailureDueToHal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSetupClientInterfaceFailureDueToWificond="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSetupClientInterfaceFailureDueToSupplicant="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSetupSoftApInterfaceFailureDueToHal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSetupSoftApInterfaceFailureDueToWificond="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numSetupSoftApInterfaceFailureDueToHostapd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    const-string v7, "StaEventList:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;

    .line 2075
    .local v8, "event":Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2076
    .end local v8    # "event":Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;
    goto :goto_b

    .line 2078
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointProviders="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointProviderInstallation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointProviderInstallSuccess="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointProviderUninstallation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointProviderUninstallSuccess="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiLogProto.numPasspointProvidersSuccessfullyConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v8, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    const-string v7, "mWifiLogProto.installedPasspointProfileType: "

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    nop

    .local v6, "i":I
    :goto_c
    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 2093
    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 2094
    .local v7, "eapType":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EAP_METHOD ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    .line 2095
    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2094
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    .end local v7    # "eapType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 2098
    .end local v6    # "i":I
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numRadioModeChangeToMcc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numRadioModeChangeToScc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numRadioModeChangeToSbs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numRadioModeChangeToDbs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numSoftApUserBandPreferenceUnsatisfied="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTotalSsidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mTotalSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2109
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2108
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTotalBssidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mTotalBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2111
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2110
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableOpenSsidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2113
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2112
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableOpenBssidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2115
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2114
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableSavedSsidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2117
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2116
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableSavedBssidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2119
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2118
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableOpenOrSavedSsidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2121
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2120
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableOpenOrSavedBssidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2123
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2122
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableSavedPasspointProviderProfilesInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderProfilesInScanHistogram:Landroid/util/SparseIntArray;

    .line 2125
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2124
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAvailableSavedPasspointProviderBssidsInScanHistogram:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderBssidsInScanHistogram:Landroid/util/SparseIntArray;

    .line 2127
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2126
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.partialAllSingleScanListenerResults="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.fullBandAllSingleScanListenerResults="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    const-string v6, "mWifiAwareMetrics:"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    iget-object v6, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2134
    const-string v6, "mRttMetrics:"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    iget-object v6, v1, Lcom/android/server/wifi/WifiMetrics;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/server/wifi/rtt/RttMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPnoScanMetrics.numPnoScanAttempts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPnoScanMetrics.numPnoScanFailed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPnoScanMetrics.numPnoScanStartedOverOffload="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPnoScanMetrics.numPnoScanFailedOverOffload="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPnoScanMetrics.numPnoFoundNetworkEvents="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLinkLayerUsageStats.loggingDurationMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLinkLayerUsageStats.radioOnTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLinkLayerUsageStats.radioTxTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLinkLayerUsageStats.radioRxTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLinkLayerUsageStats.radioScanTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.connectToNetworkNotificationCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    .line 2160
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2159
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.connectToNetworkNotificationActionCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    .line 2162
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2161
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.openNetworkRecommenderBlacklistSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wifi/WifiMetrics;->mOpenNetworkRecommenderBlacklistSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.isWifiNetworksAvailableNotificationOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/wifi/WifiMetrics;->mIsWifiNetworksAvailableNotificationOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numOpenNetworkRecommendationUpdates="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkRecommendationUpdates:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.numOpenNetworkConnectMessageFailedToSend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkConnectMessageFailedToSend:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observedHotspotR1ApInScanHistogram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observedHotspotR2ApInScanHistogram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observedHotspotR1EssInScanHistogram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1EssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observedHotspotR2EssInScanHistogram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2EssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observedHotspotR1ApsPerEssInScanHistogram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observedHotspotR2ApsPerEssInScanHistogram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.observed80211mcSupportingApsInScanHistogram"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mObserved80211mcApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    const-string v6, "mSoftApTetheredEvents:"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    iget-object v6, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListTethered:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2190
    .local v7, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2191
    .local v8, "eventLine":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event_type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",time_stamp_millis="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",num_connected_clients="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",channel_frequency="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",channel_bandwidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    .end local v7    # "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .end local v8    # "eventLine":Ljava/lang/StringBuilder;
    goto/16 :goto_d

    .line 2198
    :cond_10
    const-string v6, "mSoftApLocalOnlyEvents:"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    iget-object v6, v1, Lcom/android/server/wifi/WifiMetrics;->mSoftApEventListLocalOnly:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2200
    .restart local v7    # "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2201
    .restart local v8    # "eventLine":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event_type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",time_stamp_millis="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",num_connected_clients="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",channel_frequency="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",channel_bandwidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    .end local v7    # "event":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .end local v8    # "eventLine":Ljava/lang/StringBuilder;
    goto/16 :goto_e

    .line 2209
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsAttempts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsSuccess="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsStartFailure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsOverlapFailure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsTimeoutFailure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsOtherConnectionFailure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsSupplicantFailure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWpsMetrics.numWpsCancellation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    iget-object v6, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiPowerMetrics:Lcom/android/server/wifi/WifiPowerMetrics;

    invoke-virtual {v6, v3}, Lcom/android/server/wifi/WifiPowerMetrics;->dump(Ljava/io/PrintWriter;)V

    .line 2227
    iget-object v6, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    invoke-virtual {v6, v3}, Lcom/android/server/wifi/WifiWakeMetrics;->dump(Ljava/io/PrintWriter;)V

    .line 2229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.isMacRandomizationOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/wifi/WifiMetrics;->mIsMacRandomizationOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiLogProto.scoreExperimentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-object v7, v7, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hardware Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ro.boot.revision"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_f
    monitor-exit v5

    .line 2234
    return-void

    .line 2233
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public endConnectionEvent(II)V
    .locals 8
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    .line 748
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v1, :cond_2

    .line 750
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-ne p2, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 752
    .local v3, "result":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v4, v4, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    iput v1, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    .line 753
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$1102(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    .line 754
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 755
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$1100(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 756
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$800(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    .line 757
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    .line 758
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    .line 761
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 762
    if-nez v3, :cond_2

    .line 763
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    .line 766
    .end local v3    # "result":Z
    :cond_2
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackgroundScanCount()I
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    monitor-exit v0

    return v1

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectivityOneshotScanCount()I
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    monitor-exit v0

    return v1

    .line 923
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 2862
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOneshotScanCount()I
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    monitor-exit v0

    return v1

    .line 914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRttMetrics()Lcom/android/server/wifi/rtt/RttMetrics;
    .locals 1

    .line 2874
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRttMetrics:Lcom/android/server/wifi/rtt/RttMetrics;

    return-object v0
.end method

.method public getScanReturnEntry(I)I
    .locals 2
    .param p1, "scanReturnCode"    # I

    .line 987
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemStateCount(IZ)I
    .locals 3
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    .line 1030
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    .line 1032
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 1033
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWakeupMetrics()Lcom/android/server/wifi/WifiWakeMetrics;
    .locals 1

    .line 2870
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    return-object v0
.end method

.method public getWifiAwareMetrics()Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .locals 1

    .line 2866
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    return-object v0
.end method

.method public handlePollResult(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 1154
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    .line 1155
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    .line 1156
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    .line 1157
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    iget v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementRssiPollRssiCount(II)V

    .line 1158
    return-void
.end method

.method public incrementAlertReasonCount(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 1235
    const/16 v0, 0x40

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1237
    :cond_0
    const/4 p1, 0x0

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1241
    .local v1, "alertCount":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    .end local v1    # "alertCount":I
    monitor-exit v0

    .line 1243
    return-void

    .line 1242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementAvailableNetworksHistograms(Ljava/util/List;Z)V
    .locals 49
    .param p2, "isFullBand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;Z)V"
        }
    .end annotation

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    move-object/from16 v1, p0

    .line 1644
    iget-object v2, v1, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1645
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 1649
    :cond_0
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 1650
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 1651
    monitor-exit v2

    return-void

    .line 1653
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 1654
    .local v5, "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    const/4 v0, 0x0

    .line 1655
    .local v0, "bssids":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1656
    .local v6, "openSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    const/4 v7, 0x0

    .line 1657
    .local v7, "openBssids":I
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1658
    .local v8, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    const/4 v9, 0x0

    .line 1660
    .local v9, "savedBssids":I
    const/4 v10, 0x0

    .line 1661
    .local v10, "openOrSavedBssids":I
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1663
    .local v11, "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    const/4 v12, 0x0

    .line 1664
    .local v12, "savedPasspointProviderBssids":I
    const/4 v13, 0x0

    .line 1665
    .local v13, "passpointR1Aps":I
    const/4 v14, 0x0

    .line 1666
    .local v14, "passpointR2Aps":I
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1667
    .local v15, "passpointR1UniqueEss":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1668
    .local v3, "passpointR2UniqueEss":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 1669
    .local v16, "supporting80211mcAps":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v17, v12

    move v12, v10

    move v10, v9

    move v9, v7

    move v7, v0

    move v0, v13

    move/from16 v13, v16

    .end local v16    # "supporting80211mcAps":I
    .local v0, "passpointR1Aps":I
    .local v7, "bssids":I
    .local v9, "openBssids":I
    .local v10, "savedBssids":I
    .local v12, "openOrSavedBssids":I
    .local v13, "supporting80211mcAps":I
    .local v17, "savedPasspointProviderBssids":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v18, v16

    .line 1670
    .local v18, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v16

    .end local v18    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v20, v16

    .line 1671
    .local v20, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v16

    move-object/from16 v21, v16

    .line 1674
    .local v21, "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v22, v11

    move-object/from16 v11, v20

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v16

    .end local v20    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .local v11, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .local v22, "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    if-eqz v16, :cond_2

    .line 1675
    add-int/lit8 v13, v13, 0x1

    .line 1678
    :cond_2
    move/from16 v23, v13

    move-object/from16 v13, v21

    invoke-static {v13}, Lcom/android/server/wifi/ScanResultMatchInfo;->fromScanResult(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanResultMatchInfo;

    move-result-object v16

    .end local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    .local v13, "scanResult":Landroid/net/wifi/ScanResult;
    .local v23, "supporting80211mcAps":I
    move-object/from16 v24, v16

    .line 1679
    .local v24, "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    const/16 v16, 0x0

    .line 1680
    .local v16, "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v18, 0x0

    .line 1681
    .local v18, "passpointProvider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v20

    const/16 v21, 0x0

    if-eqz v20, :cond_b

    .line 1682
    move/from16 v25, v12

    iget-object v12, v1, Lcom/android/server/wifi/WifiMetrics;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 1683
    .end local v12    # "openOrSavedBssids":I
    .local v25, "openOrSavedBssids":I
    invoke-virtual {v12, v13}, Lcom/android/server/wifi/hotspot2/PasspointManager;->matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;

    move-result-object v12

    .line 1684
    .end local v16    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .local v12, "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v12, :cond_3

    move/from16 v26, v10

    iget-object v10, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v10    # "savedBssids":I
    .local v26, "savedBssids":I
    check-cast v10, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    goto :goto_1

    .end local v26    # "savedBssids":I
    .restart local v10    # "savedBssids":I
    :cond_3
    move/from16 v26, v10

    .end local v10    # "savedBssids":I
    .restart local v26    # "savedBssids":I
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v18, v10

    .line 1686
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v10

    move-object/from16 v27, v12

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .end local v12    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .local v27, "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-ne v10, v12, :cond_5

    .line 1687
    add-int/lit8 v0, v0, 0x1

    .line 1692
    .end local v0    # "passpointR1Aps":I
    .local v10, "passpointR1Aps":I
    :cond_4
    :goto_2
    move v10, v0

    goto :goto_3

    .line 1688
    .end local v10    # "passpointR1Aps":I
    .restart local v0    # "passpointR1Aps":I
    :cond_5
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v10

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v10, v12, :cond_4

    .line 1689
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1692
    .end local v0    # "passpointR1Aps":I
    .restart local v10    # "passpointR1Aps":I
    :goto_3
    const-wide/16 v28, 0x0

    .line 1693
    .local v28, "bssid":J
    move/from16 v12, v21

    .line 1695
    .local v12, "validBssid":Z
    :try_start_1
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v30
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v28, v30

    .line 1696
    const/4 v12, 0x1

    .line 1700
    nop

    .line 1701
    move/from16 v33, v10

    goto :goto_4

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v32, v0

    :try_start_2
    const-string v0, "WifiMetrics"

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v32, "e":Ljava/lang/IllegalArgumentException;
    move/from16 v33, v10

    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "passpointR1Aps":I
    .local v33, "passpointR1Aps":I
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v12

    const-string v12, "Invalid BSSID provided in the scan result: "

    .end local v12    # "validBssid":Z
    .local v34, "validBssid":Z
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    .end local v32    # "e":Ljava/lang/IllegalArgumentException;
    move/from16 v12, v34

    .end local v34    # "validBssid":Z
    .restart local v12    # "validBssid":Z
    :goto_4
    if-eqz v12, :cond_9

    .line 1702
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v40, v8

    move/from16 v41, v9

    iget-wide v8, v13, Landroid/net/wifi/ScanResult;->hessid:J

    .line 1703
    .end local v8    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v9    # "openBssids":I
    .local v40, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v41, "openBssids":I
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v39

    .line 1702
    move-object/from16 v34, v0

    move-wide/from16 v35, v28

    move-wide/from16 v37, v8

    invoke-static/range {v34 .. v39}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v0

    .line 1704
    .local v0, "uniqueEss":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v8, v9, :cond_7

    .line 1705
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1706
    .local v8, "countObj":Ljava/lang/Integer;
    if-nez v8, :cond_6

    move/from16 v9, v21

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1707
    .local v9, "count":I
    :goto_5
    add-int/lit8 v10, v9, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    .end local v8    # "countObj":Ljava/lang/Integer;
    .end local v9    # "count":I
    goto :goto_7

    :cond_7
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v8, v9, :cond_a

    .line 1709
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1710
    .restart local v8    # "countObj":Ljava/lang/Integer;
    if-nez v8, :cond_8

    move/from16 v9, v21

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1711
    .restart local v9    # "count":I
    :goto_6
    add-int/lit8 v10, v9, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "uniqueEss":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .end local v8    # "countObj":Ljava/lang/Integer;
    .end local v9    # "count":I
    .end local v12    # "validBssid":Z
    .end local v28    # "bssid":J
    goto :goto_7

    .line 1717
    .end local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v41    # "openBssids":I
    .local v8, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v9, "openBssids":I
    :cond_9
    move-object/from16 v40, v8

    move/from16 v41, v9

    .end local v8    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v9    # "openBssids":I
    .restart local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .restart local v41    # "openBssids":I
    :cond_a
    :goto_7
    move-object/from16 v0, v18

    goto :goto_8

    .end local v25    # "openOrSavedBssids":I
    .end local v26    # "savedBssids":I
    .end local v27    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v33    # "passpointR1Aps":I
    .end local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v41    # "openBssids":I
    .local v0, "passpointR1Aps":I
    .restart local v8    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .restart local v9    # "openBssids":I
    .local v10, "savedBssids":I
    .local v12, "openOrSavedBssids":I
    .restart local v16    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_b
    move-object/from16 v40, v8

    move/from16 v41, v9

    move/from16 v26, v10

    move/from16 v25, v12

    move/from16 v33, v0

    move-object/from16 v27, v16

    move-object/from16 v0, v18

    .end local v8    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v9    # "openBssids":I
    .end local v10    # "savedBssids":I
    .end local v12    # "openOrSavedBssids":I
    .end local v16    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v18    # "passpointProvider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .local v0, "passpointProvider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .restart local v25    # "openOrSavedBssids":I
    .restart local v26    # "savedBssids":I
    .restart local v27    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .restart local v33    # "passpointR1Aps":I
    .restart local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .restart local v41    # "openBssids":I
    :goto_8
    iget-object v8, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-virtual {v8, v13}, Lcom/android/server/wifi/WifiNetworkSelector;->isSignalTooWeak(Landroid/net/wifi/ScanResult;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1718
    nop

    .line 1669
    move-object/from16 v4, v19

    move-object/from16 v11, v22

    move/from16 v13, v23

    move/from16 v12, v25

    move/from16 v10, v26

    move/from16 v0, v33

    move-object/from16 v8, v40

    move/from16 v9, v41

    goto/16 :goto_0

    .line 1723
    :cond_c
    move-object/from16 v8, v24

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1724
    .end local v24    # "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    .local v8, "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    add-int/lit8 v7, v7, 0x1

    .line 1725
    iget v9, v8, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    if-nez v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    move/from16 v9, v21

    .line 1726
    .local v9, "isOpen":Z
    :goto_9
    iget-object v10, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1727
    invoke-virtual {v10, v4}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 1728
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v12

    if-nez v12, :cond_e

    .line 1729
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x1

    goto :goto_a

    :cond_e
    move/from16 v12, v21

    .line 1730
    .local v12, "isSaved":Z
    :goto_a
    if-eqz v0, :cond_f

    const/16 v21, 0x1

    nop

    :cond_f
    move/from16 v16, v21

    .line 1731
    .local v16, "isSavedPasspoint":Z
    if-eqz v9, :cond_10

    .line 1732
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1733
    add-int/lit8 v18, v41, 0x1

    .line 1735
    .end local v41    # "openBssids":I
    .local v18, "openBssids":I
    move/from16 v41, v18

    .end local v18    # "openBssids":I
    .restart local v41    # "openBssids":I
    :cond_10
    if-eqz v12, :cond_11

    .line 1736
    move-object/from16 v42, v4

    move-object/from16 v4, v40

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1737
    .end local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v4, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v42, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    add-int/lit8 v18, v26, 0x1

    .line 1739
    .end local v26    # "savedBssids":I
    .local v18, "savedBssids":I
    move/from16 v26, v18

    goto :goto_b

    .end local v18    # "savedBssids":I
    .end local v42    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v26    # "savedBssids":I
    .restart local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    :cond_11
    move-object/from16 v42, v4

    move-object/from16 v4, v40

    .end local v40    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v4, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .restart local v42    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :goto_b
    if-nez v9, :cond_12

    if-eqz v12, :cond_13

    .line 1740
    :cond_12
    add-int/lit8 v18, v25, 0x1

    .line 1743
    .end local v25    # "openOrSavedBssids":I
    .local v18, "openOrSavedBssids":I
    move/from16 v25, v18

    .end local v18    # "openOrSavedBssids":I
    .restart local v25    # "openOrSavedBssids":I
    :cond_13
    if-eqz v16, :cond_14

    .line 1744
    move-object/from16 v43, v8

    move-object/from16 v8, v22

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1745
    .end local v22    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .local v8, "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .local v43, "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    add-int/lit8 v17, v17, 0x1

    .end local v0    # "passpointProvider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .end local v9    # "isOpen":Z
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v12    # "isSaved":Z
    .end local v13    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v16    # "isSavedPasspoint":Z
    .end local v27    # "providerMatch":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v42    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v43    # "matchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    goto :goto_c

    .line 1747
    .end local v8    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .restart local v22    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    :cond_14
    move-object/from16 v8, v22

    .line 1669
    .end local v22    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .restart local v8    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    :goto_c
    move-object v11, v8

    move/from16 v13, v23

    move/from16 v12, v25

    move/from16 v10, v26

    move/from16 v0, v33

    move/from16 v9, v41

    move-object v8, v4

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 1748
    .end local v4    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v23    # "supporting80211mcAps":I
    .end local v25    # "openOrSavedBssids":I
    .end local v26    # "savedBssids":I
    .end local v33    # "passpointR1Aps":I
    .end local v41    # "openBssids":I
    .local v0, "passpointR1Aps":I
    .local v8, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v9, "openBssids":I
    .local v10, "savedBssids":I
    .local v11, "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .local v12, "openOrSavedBssids":I
    .local v13, "supporting80211mcAps":I
    :cond_15
    move-object v4, v8

    move/from16 v41, v9

    move/from16 v26, v10

    move-object v8, v11

    move/from16 v25, v12

    .end local v9    # "openBssids":I
    .end local v10    # "savedBssids":I
    .end local v11    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .end local v12    # "openOrSavedBssids":I
    .restart local v4    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v8, "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .restart local v25    # "openOrSavedBssids":I
    .restart local v26    # "savedBssids":I
    .restart local v41    # "openBssids":I
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v10, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 1749
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mTotalSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    invoke-direct {v1, v9, v10}, Lcom/android/server/wifi/WifiMetrics;->incrementTotalScanSsids(Landroid/util/SparseIntArray;I)V

    .line 1750
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mTotalBssidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-direct {v1, v9, v7}, Lcom/android/server/wifi/WifiMetrics;->incrementTotalScanResults(Landroid/util/SparseIntArray;I)V

    .line 1751
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    invoke-direct {v1, v9, v10}, Lcom/android/server/wifi/WifiMetrics;->incrementSsid(Landroid/util/SparseIntArray;I)V

    .line 1752
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenBssidsInScanHistogram:Landroid/util/SparseIntArray;

    move/from16 v10, v41

    invoke-direct {v1, v9, v10}, Lcom/android/server/wifi/WifiMetrics;->incrementBssid(Landroid/util/SparseIntArray;I)V

    .line 1753
    .end local v41    # "openBssids":I
    .local v10, "openBssids":I
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v11

    invoke-direct {v1, v9, v11}, Lcom/android/server/wifi/WifiMetrics;->incrementSsid(Landroid/util/SparseIntArray;I)V

    .line 1754
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    move/from16 v11, v26

    invoke-direct {v1, v9, v11}, Lcom/android/server/wifi/WifiMetrics;->incrementBssid(Landroid/util/SparseIntArray;I)V

    .line 1755
    .end local v26    # "savedBssids":I
    .local v11, "savedBssids":I
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1756
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedSsidsInScanHistogram:Landroid/util/SparseIntArray;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v12

    invoke-direct {v1, v9, v12}, Lcom/android/server/wifi/WifiMetrics;->incrementSsid(Landroid/util/SparseIntArray;I)V

    .line 1757
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableOpenOrSavedBssidsInScanHistogram:Landroid/util/SparseIntArray;

    move/from16 v12, v25

    invoke-direct {v1, v9, v12}, Lcom/android/server/wifi/WifiMetrics;->incrementBssid(Landroid/util/SparseIntArray;I)V

    .line 1758
    .end local v25    # "openOrSavedBssids":I
    .restart local v12    # "openOrSavedBssids":I
    iget-object v9, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderProfilesInScanHistogram:Landroid/util/SparseIntArray;

    .line 1759
    move-object/from16 v44, v4

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v4

    .line 1758
    .end local v4    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v44, "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-direct {v1, v9, v4}, Lcom/android/server/wifi/WifiMetrics;->incrementSsid(Landroid/util/SparseIntArray;I)V

    .line 1760
    iget-object v4, v1, Lcom/android/server/wifi/WifiMetrics;->mAvailableSavedPasspointProviderBssidsInScanHistogram:Landroid/util/SparseIntArray;

    move/from16 v9, v17

    invoke-direct {v1, v4, v9}, Lcom/android/server/wifi/WifiMetrics;->incrementBssid(Landroid/util/SparseIntArray;I)V

    .line 1762
    .end local v17    # "savedPasspointProviderBssids":I
    .local v9, "savedPasspointProviderBssids":I
    iget-object v4, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-direct {v1, v4, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementTotalPasspointAps(Landroid/util/SparseIntArray;I)V

    .line 1763
    iget-object v4, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-direct {v1, v4, v14}, Lcom/android/server/wifi/WifiMetrics;->incrementTotalPasspointAps(Landroid/util/SparseIntArray;I)V

    .line 1764
    iget-object v4, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1EssInScanHistogram:Landroid/util/SparseIntArray;

    .line 1765
    move/from16 v45, v0

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v0

    .line 1764
    .end local v0    # "passpointR1Aps":I
    .local v45, "passpointR1Aps":I
    invoke-direct {v1, v4, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementTotalUniquePasspointEss(Landroid/util/SparseIntArray;I)V

    .line 1766
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2EssInScanHistogram:Landroid/util/SparseIntArray;

    .line 1767
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    .line 1766
    invoke-direct {v1, v0, v4}, Lcom/android/server/wifi/WifiMetrics;->incrementTotalUniquePasspointEss(Landroid/util/SparseIntArray;I)V

    .line 1768
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1769
    .local v4, "count":Ljava/lang/Integer;
    move-object/from16 v46, v0

    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR1ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    move-object/from16 v47, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .end local v5    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .local v47, "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-direct {v1, v0, v5}, Lcom/android/server/wifi/WifiMetrics;->incrementPasspointPerUniqueEss(Landroid/util/SparseIntArray;I)V

    .line 1770
    .end local v4    # "count":Ljava/lang/Integer;
    nop

    .line 1768
    move-object/from16 v0, v46

    move-object/from16 v5, v47

    goto :goto_d

    .line 1771
    .end local v47    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .restart local v5    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    :cond_16
    move-object/from16 v47, v5

    .end local v5    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .restart local v47    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1772
    .restart local v4    # "count":Ljava/lang/Integer;
    iget-object v5, v1, Lcom/android/server/wifi/WifiMetrics;->mObservedHotspotR2ApsPerEssInScanHistogram:Landroid/util/SparseIntArray;

    move-object/from16 v48, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v5, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementPasspointPerUniqueEss(Landroid/util/SparseIntArray;I)V

    .line 1773
    .end local v4    # "count":Ljava/lang/Integer;
    nop

    .line 1771
    move-object/from16 v0, v48

    goto :goto_e

    .line 1774
    :cond_17
    iget-object v0, v1, Lcom/android/server/wifi/WifiMetrics;->mObserved80211mcApInScanHistogram:Landroid/util/SparseIntArray;

    invoke-direct {v1, v0, v13}, Lcom/android/server/wifi/WifiMetrics;->increment80211mcAps(Landroid/util/SparseIntArray;I)V

    .line 1775
    .end local v3    # "passpointR2UniqueEss":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/lang/Integer;>;"
    .end local v6    # "openSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v7    # "bssids":I
    .end local v8    # "savedPasspointProviderProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .end local v9    # "savedPasspointProviderBssids":I
    .end local v10    # "openBssids":I
    .end local v11    # "savedBssids":I
    .end local v12    # "openOrSavedBssids":I
    .end local v13    # "supporting80211mcAps":I
    .end local v14    # "passpointR2Aps":I
    .end local v15    # "passpointR1UniqueEss":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/lang/Integer;>;"
    .end local v44    # "savedSsids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v45    # "passpointR1Aps":I
    .end local v47    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    monitor-exit v2

    .line 1776
    return-void

    .line 1647
    :cond_18
    :goto_f
    monitor-exit v2

    return-void

    .line 1775
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public incrementBackgroundScanCount()V
    .locals 3

    .line 875
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 877
    monitor-exit v0

    .line 878
    return-void

    .line 877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementConnectToNetworkNotification(Ljava/lang/String;I)V
    .locals 4
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "notificationType"    # I

    .line 1784
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1785
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1786
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationCount:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    .end local v1    # "count":I
    monitor-exit v0

    .line 1788
    return-void

    .line 1787
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementConnectToNetworkNotificationAction(Ljava/lang/String;II)V
    .locals 5
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "notificationType"    # I
    .param p3, "actionType"    # I

    .line 1793
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    mul-int/lit16 v1, p2, 0x3e8

    add-int/2addr v1, p3

    .line 1796
    .local v1, "key":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1797
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectToNetworkNotificationActionCount:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    .end local v1    # "key":I
    .end local v2    # "count":I
    monitor-exit v0

    .line 1799
    return-void

    .line 1798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementConnectivityOneshotScanCount()V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 905
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementEmptyScanResultCount()V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 867
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementExternalAppOneshotScanRequestsCount()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 932
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementExternalBackgroundAppOneshotScanRequestsThrottledCount()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 949
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementExternalForegroundAppOneshotScanRequestsThrottledCount()V
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNonEmptyScanResultCount()V
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 857
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumClientInterfaceDown()V
    .locals 3

    .line 1540
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 1542
    monitor-exit v0

    .line 1543
    return-void

    .line 1542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumConnectivityWatchdogBackgroundBad()V
    .locals 3

    .line 1145
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 1147
    monitor-exit v0

    .line 1148
    return-void

    .line 1147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumConnectivityWatchdogBackgroundGood()V
    .locals 3

    .line 1137
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 1139
    monitor-exit v0

    .line 1140
    return-void

    .line 1139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumConnectivityWatchdogPnoBad()V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 1131
    monitor-exit v0

    .line 1132
    return-void

    .line 1131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumConnectivityWatchdogPnoGood()V
    .locals 3

    .line 1121
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 1123
    monitor-exit v0

    .line 1124
    return-void

    .line 1123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumHalCrashes()V
    .locals 3

    .line 1450
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 1452
    monitor-exit v0

    .line 1453
    return-void

    .line 1452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumHostapdCrashes()V
    .locals 3

    .line 1477
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 1479
    monitor-exit v0

    .line 1480
    return-void

    .line 1479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumLastResortWatchdogSuccesses()V
    .locals 3

    .line 1204
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 1206
    monitor-exit v0

    .line 1207
    return-void

    .line 1206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumLastResortWatchdogTriggers()V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 1042
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAssociation()V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 1090
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAuthentication()V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 1098
    monitor-exit v0

    .line 1099
    return-void

    .line 1098
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadDhcp()V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 1106
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadOther()V
    .locals 3

    .line 1112
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 1114
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumNetworkConnectMessageFailedToSend(Ljava/lang/String;)V
    .locals 2
    .param p1, "notifierTag"    # Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1828
    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkConnectMessageFailedToSend:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkConnectMessageFailedToSend:I

    .line 1829
    monitor-exit v0

    .line 1830
    return-void

    .line 1829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumNetworkRecommendationUpdates(Ljava/lang/String;)V
    .locals 2
    .param p1, "notifierTag"    # Ljava/lang/String;

    .line 1820
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkRecommendationUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mNumOpenNetworkRecommendationUpdates:I

    .line 1822
    monitor-exit v0

    .line 1823
    return-void

    .line 1822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumPasspointProviderInstallSuccess()V
    .locals 3

    .line 1567
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1568
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 1569
    monitor-exit v0

    .line 1570
    return-void

    .line 1569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumPasspointProviderInstallation()V
    .locals 3

    .line 1558
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 1560
    monitor-exit v0

    .line 1561
    return-void

    .line 1560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumPasspointProviderUninstallSuccess()V
    .locals 3

    .line 1585
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 1587
    monitor-exit v0

    .line 1588
    return-void

    .line 1587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumPasspointProviderUninstallation()V
    .locals 3

    .line 1576
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 1578
    monitor-exit v0

    .line 1579
    return-void

    .line 1578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumRadioModeChangeToDbs()V
    .locals 3

    .line 1621
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 1623
    monitor-exit v0

    .line 1624
    return-void

    .line 1623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumRadioModeChangeToMcc()V
    .locals 3

    .line 1594
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 1596
    monitor-exit v0

    .line 1597
    return-void

    .line 1596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumRadioModeChangeToSbs()V
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 1614
    monitor-exit v0

    .line 1615
    return-void

    .line 1614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumRadioModeChangeToScc()V
    .locals 3

    .line 1603
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1604
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 1605
    monitor-exit v0

    .line 1606
    return-void

    .line 1605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSetupClientInterfaceFailureDueToHal()V
    .locals 3

    .line 1486
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 1488
    monitor-exit v0

    .line 1489
    return-void

    .line 1488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSetupClientInterfaceFailureDueToSupplicant()V
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1505
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 1506
    monitor-exit v0

    .line 1507
    return-void

    .line 1506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSetupClientInterfaceFailureDueToWificond()V
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 1497
    monitor-exit v0

    .line 1498
    return-void

    .line 1497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSetupSoftApInterfaceFailureDueToHal()V
    .locals 3

    .line 1513
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1514
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 1515
    monitor-exit v0

    .line 1516
    return-void

    .line 1515
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSetupSoftApInterfaceFailureDueToHostapd()V
    .locals 3

    .line 1531
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 1533
    monitor-exit v0

    .line 1534
    return-void

    .line 1533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSetupSoftApInterfaceFailureDueToWificond()V
    .locals 3

    .line 1522
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 1524
    monitor-exit v0

    .line 1525
    return-void

    .line 1524
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSoftApInterfaceDown()V
    .locals 3

    .line 1549
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 1551
    monitor-exit v0

    .line 1552
    return-void

    .line 1551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSoftApUserBandPreferenceUnsatisfied()V
    .locals 3

    .line 1630
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 1632
    monitor-exit v0

    .line 1633
    return-void

    .line 1632
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumSupplicantCrashes()V
    .locals 3

    .line 1468
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 1470
    monitor-exit v0

    .line 1471
    return-void

    .line 1470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementNumWificondCrashes()V
    .locals 3

    .line 1459
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 1461
    monitor-exit v0

    .line 1462
    return-void

    .line 1461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementOneshotScanCount()V
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 895
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiSystemScanStateCount(IZ)V

    .line 897
    return-void

    .line 895
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public incrementPnoFoundNetworkEventCount()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    .line 569
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementPnoScanFailedCount()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    .line 542
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementPnoScanFailedOverOffloadCount()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    .line 560
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementPnoScanStartAttempCount()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    .line 533
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementPnoScanStartedOverOffloadCount()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mPnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    .line 551
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementRssiPollRssiCount(II)V
    .locals 4
    .param p1, "frequency"    # I
    .param p2, "rssi"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1167
    const/16 v0, -0x7f

    if-lt p2, v0, :cond_2

    if-lez p2, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 1175
    .local v1, "sparseIntArray":Landroid/util/SparseIntArray;
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1176
    .local v2, "count":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    iget v3, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssi:I

    sub-int v3, p2, v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiMetrics;->maybeIncrementRssiDeltaCount(I)V

    .line 1178
    .end local v1    # "sparseIntArray":Landroid/util/SparseIntArray;
    .end local v2    # "count":I
    monitor-exit v0

    .line 1179
    return-void

    .line 1178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1168
    :cond_2
    :goto_0
    return-void
.end method

.method public incrementScanReturnEntry(II)V
    .locals 3
    .param p1, "scanReturnCode"    # I
    .param p2, "countToAdd"    # I

    .line 975
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 978
    .local v1, "entry":I
    add-int/2addr v1, p2

    .line 979
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    .end local v1    # "entry":I
    monitor-exit v0

    .line 981
    return-void

    .line 980
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementSoftApStartResult(ZI)V
    .locals 5
    .param p1, "result"    # Z
    .param p2, "failureCode"    # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1343
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1345
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    monitor-exit v0

    return-void

    .line 1367
    .end local v2    # "count":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1353
    :cond_0
    if-ne p2, v1, :cond_1

    .line 1354
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1356
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    .end local v1    # "count":I
    goto :goto_0

    .line 1361
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1363
    .restart local v1    # "count":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    .end local v1    # "count":I
    :goto_0
    monitor-exit v0

    .line 1368
    return-void

    .line 1367
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWatchdogTotalConnectionFailureCountAfterTrigger()V
    .locals 6

    .line 1214
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-wide v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 1216
    monitor-exit v0

    .line 1217
    return-void

    .line 1216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWifiLinkLayerUsageStats(Lcom/android/server/wifi/WifiLinkLayerStats;)V
    .locals 7
    .param p1, "newStats"    # Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 493
    if-nez p1, :cond_0

    .line 494
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    if-nez v0, :cond_1

    .line 497
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 498
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiMetrics;->newLinkLayerStatsIsValid(Lcom/android/server/wifi/WifiLinkLayerStats;Lcom/android/server/wifi/WifiLinkLayerStats;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 504
    return-void

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    iget-wide v3, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->timeStampInMs:J

    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    iget-wide v5, v5, Lcom/android/server/wifi/WifiLinkLayerStats;->timeStampInMs:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    .line 508
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    iget v3, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    iget v4, v4, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    .line 509
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    iget v3, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    iget v4, v4, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    .line 510
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    iget v3, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    iget v4, v4, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    .line 511
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    iget-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    iget v3, p1, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    iget v4, v4, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    .line 513
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mLastLinkLayerStats:Lcom/android/server/wifi/WifiLinkLayerStats;

    .line 514
    return-void
.end method

.method public incrementWifiScoreCount(I)V
    .locals 5
    .param p1, "score"    # I

    .line 1312
    if-ltz p1, :cond_4

    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1317
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    .line 1320
    .local v2, "wifiWins":Z
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    const/16 v4, 0x32

    if-eqz v3, :cond_1

    if-ge p1, v4, :cond_1

    .line 1321
    const/4 v2, 0x0

    goto :goto_0

    .line 1322
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    if-nez v3, :cond_2

    if-le p1, v4, :cond_2

    .line 1323
    const/4 v2, 0x1

    .line 1325
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics;->mLastScore:I

    .line 1326
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    if-eq v2, v3, :cond_3

    .line 1327
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    .line 1328
    new-instance v3, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v3}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    .line 1329
    .local v3, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    const/16 v4, 0x10

    iput v4, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 1330
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiMetrics;->addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V

    .line 1332
    .end local v1    # "count":I
    .end local v2    # "wifiWins":Z
    .end local v3    # "event":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_3
    monitor-exit v0

    .line 1333
    return-void

    .line 1332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1313
    :cond_4
    :goto_1
    return-void
.end method

.method public incrementWifiSystemScanStateCount(IZ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    .line 1014
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    .line 1020
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1021
    .local v2, "entry":I
    add-int/lit8 v2, v2, 0x1

    .line 1022
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    .end local v1    # "index":I
    .end local v2    # "entry":I
    monitor-exit v0

    .line 1024
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsAttemptCount()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    .line 578
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsCancellationCount()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    .line 641
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsOtherConnectionFailureCount()V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    .line 623
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsOverlapFailureCount()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsStartFailureCount()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    .line 596
    monitor-exit v0

    .line 597
    return-void

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsSuccessCount()V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsSupplicantFailureCount()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    .line 632
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementWpsTimeoutFailureCount()V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iget v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    .line 614
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initWifiPktFilterAndCnssLogLevel()V
    .locals 1

    .line 3152
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->initWifiPktFilterAndCnssLogLevel()V

    .line 3153
    return-void
.end method

.method public logStaEvent(I)V
    .locals 2
    .param p1, "type"    # I

    .line 2767
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V

    .line 2768
    return-void
.end method

.method public logStaEvent(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "frameworkDisconnectReason"    # I

    .line 2786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V

    .line 2787
    return-void
.end method

.method public logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "frameworkDisconnectReason"    # I
    .param p3, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2797
    packed-switch p1, :pswitch_data_0

    .line 2812
    :pswitch_0
    const-string v0, "WifiMetrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StaEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    return-void

    .line 2810
    :pswitch_1
    nop

    .line 2815
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    .line 2816
    .local v0, "event":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    iput p1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 2817
    if-eqz p2, :cond_0

    .line 2818
    iput p2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    .line 2820
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiMetrics;->createConfigInfo(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 2821
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V

    .line 2822
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public logStaEvent(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V

    .line 2777
    return-void
.end method

.method public setConnectionEventRoamType(I)V
    .locals 2
    .param p1, "roamType"    # I

    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    .line 715
    :cond_0
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 722
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 725
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 728
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 729
    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$200(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 730
    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$200(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V

    .line 733
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V

    .line 736
    .end local v1    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setIsLocationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 839
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-boolean p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 841
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIsMacRandomizationOn(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1834
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1835
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics;->mIsMacRandomizationOn:Z

    .line 1836
    monitor-exit v0

    .line 1837
    return-void

    .line 1836
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setIsScanningAlwaysEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 845
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-boolean p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIsWifiNetworksAvailableNotificationEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1813
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1814
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiMetrics;->mIsWifiNetworksAvailableNotificationOn:Z

    .line 1815
    monitor-exit v0

    .line 1816
    return-void

    .line 1815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNetworkRecommenderBlacklistSize(Ljava/lang/String;I)V
    .locals 2
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 1806
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1807
    :try_start_0
    iput p2, p0, Lcom/android/server/wifi/WifiMetrics;->mOpenNetworkRecommenderBlacklistSize:I

    .line 1808
    monitor-exit v0

    .line 1809
    return-void

    .line 1808
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPasspointManager(Lcom/android/server/wifi/hotspot2/PasspointManager;)V
    .locals 0
    .param p1, "passpointManager"    # Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 485
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 486
    return-void
.end method

.method public setScoringParams(Lcom/android/server/wifi/ScoringParams;)V
    .locals 0
    .param p1, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;

    .line 470
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 471
    return-void
.end method

.method public setScreenState(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .line 2689
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2690
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    .line 2691
    monitor-exit v0

    .line 2692
    return-void

    .line 2691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWatchdogSuccessTimeDurationMs(J)V
    .locals 2
    .param p1, "ms"    # J

    .line 1224
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-wide p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 1226
    monitor-exit v0

    .line 1227
    return-void

    .line 1226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWifiConfigManager(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p1, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 475
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 476
    return-void
.end method

.method public setWifiNetworkSelector(Lcom/android/server/wifi/WifiNetworkSelector;)V
    .locals 0
    .param p1, "wifiNetworkSelector"    # Lcom/android/server/wifi/WifiNetworkSelector;

    .line 480
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    .line 481
    return-void
.end method

.method public setWifiState(I)V
    .locals 2
    .param p1, "wifiState"    # I

    .line 2698
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2699
    :try_start_0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    .line 2700
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiWins:Z

    .line 2701
    monitor-exit v0

    .line 2702
    return-void

    .line 2701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "targetBSSID"    # Ljava/lang/String;
    .param p3, "roamType"    # I

    .line 658
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v1, :cond_2

    .line 662
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$200(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 663
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$600(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 665
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$200(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 666
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$600(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "any"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 667
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$600(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$602(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    goto :goto_0

    .line 674
    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    .line 679
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_3

    .line 680
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 682
    :cond_3
    new-instance v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 683
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    .line 684
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    .line 685
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$602(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p3, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    .line 687
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 688
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    const-string v2, "any"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$602(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$802(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    .line 690
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$902(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I

    .line 691
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$1002(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z

    .line 692
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    .line 694
    if-eqz p1, :cond_4

    .line 695
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 696
    .local v1, "candidate":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_4

    .line 700
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssi:I

    .line 701
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    .line 704
    .end local v1    # "candidate":Landroid/net/wifi/ScanResult;
    :cond_4
    monitor-exit v0

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSavedNetworks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2241
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 2243
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 2244
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 2245
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 2246
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 2247
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 2248
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 2249
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 2250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2251
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2252
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto :goto_1

    .line 2253
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2254
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto :goto_1

    .line 2256
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 2258
    :goto_1
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_2

    .line 2259
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto :goto_2

    .line 2261
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 2263
    :goto_2
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_3

    .line 2264
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 2266
    :cond_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2267
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 2269
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    goto :goto_0

    .line 2270
    :cond_5
    monitor-exit v0

    .line 2271
    return-void

    .line 2270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSavedPasspointProfiles(II)V
    .locals 2
    .param p1, "numSavedProfiles"    # I
    .param p2, "numConnectedProfiles"    # I

    .line 2281
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 2283
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput p2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 2284
    monitor-exit v0

    .line 2285
    return-void

    .line 2284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSavedPasspointProfilesInfo(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;)V"
        }
    .end annotation

    .line 2297
    .local p1, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2299
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2300
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    .line 2301
    .local v3, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2302
    const/16 v4, 0x15

    .local v4, "eapType":I
    :goto_1
    goto :goto_2

    .line 2303
    .end local v4    # "eapType":I
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2304
    const/16 v4, 0xd

    goto :goto_1

    .line 2305
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2306
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v4

    goto :goto_1

    .line 2308
    :cond_2
    const/4 v4, -0x1

    .line 2310
    .restart local v4    # "eapType":I
    :goto_2
    const/16 v5, 0xd

    if-eq v4, v5, :cond_7

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    const/16 v5, 0x15

    if-eq v4, v5, :cond_5

    const/16 v5, 0x17

    if-eq v4, v5, :cond_4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_3

    .line 2328
    const/4 v5, 0x0

    goto :goto_3

    .line 2324
    :cond_3
    const/4 v5, 0x5

    .line 2326
    .local v5, "passpointType":I
    goto :goto_3

    .line 2321
    .end local v5    # "passpointType":I
    :cond_4
    const/4 v5, 0x4

    .line 2322
    .restart local v5    # "passpointType":I
    goto :goto_3

    .line 2315
    .end local v5    # "passpointType":I
    :cond_5
    const/4 v5, 0x2

    .line 2316
    .restart local v5    # "passpointType":I
    goto :goto_3

    .line 2318
    .end local v5    # "passpointType":I
    :cond_6
    const/4 v5, 0x3

    .line 2319
    .restart local v5    # "passpointType":I
    goto :goto_3

    .line 2312
    .end local v5    # "passpointType":I
    :cond_7
    const/4 v5, 0x1

    .line 2313
    .restart local v5    # "passpointType":I
    nop

    .line 2328
    :goto_3
    nop

    .line 2331
    iget-object v6, p0, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 2332
    .local v6, "count":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mInstalledPasspointProfileType:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    .end local v6    # "count":I
    goto :goto_0

    .line 2334
    .end local v3    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .end local v4    # "eapType":I
    .end local v5    # "passpointType":I
    :cond_8
    monitor-exit v0

    .line 2335
    return-void

    .line 2334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
