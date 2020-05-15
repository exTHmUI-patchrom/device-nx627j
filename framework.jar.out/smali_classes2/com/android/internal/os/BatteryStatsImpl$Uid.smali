.class public Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1


# instance fields
.field mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mChildUids:Landroid/util/IntArray;

.field mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mInForegroundService:Z

.field final mJobCompletions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field final mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .line 6857
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 6711
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 6730
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 6733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 6812
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 6840
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 6845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 6850
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 6855
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 6858
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 6859
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 6861
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6862
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6863
    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v3

    .line 6862
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 6865
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6866
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    mul-long/2addr v1, v3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6867
    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v3

    .line 6866
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 6869
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6870
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6871
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6872
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 6874
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 6879
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 6885
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 6892
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x4

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6894
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6896
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 6898
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6899
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6901
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6902
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 6903
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 6904
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6905
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 6906
    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 6687
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p1, "x1"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6687
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 6687
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p1, "x1"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6687
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsImpl$Uid;I[JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p1, "x1"    # I
    .param p2, "x2"    # [J
    .param p3, "x3"    # Z

    .line 6687
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addProcStateTimesMs(I[JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/os/BatteryStatsImpl$Uid;I[JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p1, "x1"    # I
    .param p2, "x2"    # [J
    .param p3, "x3"    # Z

    .line 6687
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addProcStateScreenOffTimesMs(I[JZ)V

    return-void
.end method

.method private addProcStateScreenOffTimesMs(I[JZ)V
    .locals 3
    .param p1, "procState"    # I
    .param p2, "cpuTimesMs"    # [J
    .param p3, "onBatteryScreenOff"    # Z

    .line 7012
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v0, :cond_0

    .line 7013
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 7015
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    .line 7016
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getSize()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 7017
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 7020
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 7021
    return-void
.end method

.method private addProcStateTimesMs(I[JZ)V
    .locals 3
    .param p1, "procState"    # I
    .param p2, "cpuTimesMs"    # [J
    .param p3, "onBattery"    # Z

    .line 6999
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v0, :cond_0

    .line 7000
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 7002
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    .line 7003
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getSize()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 7004
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 7007
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 7008
    return-void
.end method

.method private nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .locals 7
    .param p1, "cpuTimesMs"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .param p2, "which"    # I

    .line 6982
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6983
    return-object v0

    .line 6985
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    move-result-object v1

    .line 6986
    .local v1, "counts":[J
    if-nez v1, :cond_1

    .line 6987
    return-object v0

    .line 6990
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 6991
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 6992
    return-object v1

    .line 6990
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6995
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public addIsolatedUid(I)V
    .locals 1
    .param p1, "isolatedUid"    # I

    .line 6965
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    if-nez v0, :cond_0

    .line 6966
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    goto :goto_0

    .line 6967
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 6968
    return-void

    .line 6970
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 6971
    return-void
.end method

.method public createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 7342
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7343
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x14

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 7347
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 7230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7231
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xf

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7234
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 2

    .line 7402
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 7403
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 7405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 2

    .line 7395
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 7396
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 7398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 7351
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7352
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x13

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 7356
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 7360
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7361
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x15

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 7365
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 7302
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7303
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x11

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 7278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7279
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x10

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7282
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 7326
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7327
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7330
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 7334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7335
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x16

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7338
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 4

    .line 7438
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_0

    .line 7439
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 7442
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 7254
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7255
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7258
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7025
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7554
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 10110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 7197
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7589
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7590
    const/4 v0, 0x0

    return-object v0

    .line 7592
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1

    .line 7615
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1

    .line 7610
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7584
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7602
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7603
    const/4 v0, 0x0

    return-object v0

    .line 7605
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7569
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuActiveTime()J
    .locals 2

    .line 6925
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .locals 2

    .line 6930
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 6915
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCpuFreqTimes(II)[J
    .locals 2
    .param p1, "which"    # I
    .param p2, "procState"    # I

    .line 6936
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 6939
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v1, :cond_1

    .line 6940
    return-object v0

    .line 6942
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_2

    .line 6943
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 6944
    return-object v0

    .line 6946
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0

    .line 6937
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 7819
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7820
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    .line 7821
    .local v1, "deferredEventCount":I
    if-nez v1, :cond_0

    .line 7822
    return-void

    .line 7824
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v2

    .line 7825
    .local v2, "deferredCount":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    .line 7826
    .local v3, "totalLatency":J
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7827
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7828
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7829
    nop

    .local v0, "i":I
    :goto_0
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 7830
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    if-nez v5, :cond_1

    .line 7831
    const-string v5, ",0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7833
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7834
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7829
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7837
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 7841
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7842
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    .line 7843
    .local v1, "deferredEventCount":I
    if-nez v1, :cond_0

    .line 7844
    return-void

    .line 7846
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v2

    .line 7847
    .local v2, "deferredCount":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    .line 7848
    .local v3, "totalLatency":J
    const-string/jumbo v5, "times="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7849
    const-string v5, "count="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7850
    const-string/jumbo v5, "totalLatencyMs="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7851
    nop

    .line 7851
    .local v0, "i":I
    :goto_0
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 7852
    const-string v5, "<"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v5, v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7853
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    if-nez v5, :cond_1

    .line 7854
    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7856
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7858
    :goto_1
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7860
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7564
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7574
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7579
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 7465
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7466
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7468
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 7050
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 7045
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2
    .param p1, "which"    # I

    .line 7755
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 7756
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7755
    :goto_0
    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 7749
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 7750
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 7749
    :goto_0
    return-wide v0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 7796
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 7797
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 7799
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 7202
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7035
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 7729
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 7731
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 7733
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 7739
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 7741
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 7743
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    .line 7214
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 7215
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 7218
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    .line 7222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 7223
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 7226
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    .line 7206
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 7207
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 7210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .line 7065
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9882
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 9883
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 9884
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    move-object v0, v1

    .line 9885
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9888
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .line 9865
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    .line 9869
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 9870
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 9871
    new-instance v1, Landroid/os/BatteryStats$Uid$Pid;

    invoke-direct {v1, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    move-object v0, v1

    .line 9872
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9874
    :cond_0
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 3
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 7632
    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 7633
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 7634
    return-wide v0

    .line 7636
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    .line 7632
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public bridge synthetic getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 6687
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object p1

    return-object p1
.end method

.method public getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1
    .param p1, "state"    # I

    .line 7641
    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 7642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    return-object v0

    .line 7641
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .line 7060
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9779
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 9780
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 9781
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v1

    .line 9782
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9785
    :cond_0
    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 6920
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .locals 2
    .param p1, "which"    # I
    .param p2, "procState"    # I

    .line 6951
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 6954
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v1, :cond_1

    .line 6955
    return-object v0

    .line 6957
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_2

    .line 6958
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 6959
    return-object v0

    .line 6961
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0

    .line 6952
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .line 7055
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 11
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .line 9936
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 9937
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_1

    .line 9938
    if-nez p2, :cond_0

    .line 9939
    const/4 v1, 0x0

    return-object v1

    .line 9941
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    move-object v0, v1

    .line 9942
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9944
    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9945
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v1, :cond_2

    .line 9946
    return-object v1

    .line 9948
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 9949
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 9950
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 9951
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9953
    :cond_3
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v4, v3

    move-object v6, p0

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v1, v3

    .line 9955
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9956
    return-object v1
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .line 9896
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 9897
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 9898
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 9899
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 9900
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9903
    :cond_0
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 7040
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 7766
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 4
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .line 7771
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 7772
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 7773
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    .line 7774
    .local v0, "cpuSpeedTimesUs":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_0

    .line 7775
    if-ltz p2, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 7776
    aget-object v1, v0, p2

    .line 7777
    .local v1, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_0

    .line 7778
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    .line 7784
    .end local v0    # "cpuSpeedTimesUs":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 7070
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 7670
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 7671
    const/4 v0, 0x0

    return v0

    .line 7673
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 7761
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7647
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7559
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .line 7030
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 9
    .param p1, "wl"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .param p2, "type"    # I

    .line 9997
    if-nez p1, :cond_0

    .line 9998
    const/4 v0, 0x0

    return-object v0

    .line 10000
    :cond_0
    const/16 v0, 0x12

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 10039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10021
    :pswitch_0
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10022
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_1

    .line 10023
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 10025
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10027
    :cond_1
    return-object v0

    .line 10012
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_1
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10013
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_2

    .line 10014
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 10016
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10018
    :cond_2
    return-object v0

    .line 10002
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10003
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-nez v0, :cond_3

    .line 10004
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v8

    .line 10007
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10009
    :cond_3
    return-object v0

    .line 10030
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :cond_4
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10031
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_5

    .line 10032
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 10034
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10036
    :cond_5
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .line 7537
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7538
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 7539
    return v0

    .line 7541
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    .line 7537
    :cond_2
    :goto_0
    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 3
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 7528
    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 7529
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 7530
    return-wide v0

    .line 7532
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    .line 7528
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 7192
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 7546
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7547
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7549
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 7811
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 7812
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 7814
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 7457
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7458
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7460
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiScanActualTime(J)J
    .locals 6
    .param p1, "elapsedRealtimeUs"    # J

    .line 7502
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7503
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7505
    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 7506
    .local v0, "elapsedRealtimeMs":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    return-wide v4
.end method

.method public getWifiScanBackgroundCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 7494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7497
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCountLocked(I)I

    move-result v0

    return v0

    .line 7495
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanBackgroundTime(J)J
    .locals 6
    .param p1, "elapsedRealtimeUs"    # J

    .line 7511
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7514
    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 7515
    .local v0, "elapsedRealtimeMs":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    return-wide v4

    .line 7512
    .end local v0    # "elapsedRealtimeMs":J
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7520
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7521
    const/4 v0, 0x0

    return-object v0

    .line 7523
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 7481
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7482
    const/4 v0, 0x0

    return v0

    .line 7484
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 7473
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7474
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 6687
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 7489
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .line 7724
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    .line 7665
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    .line 7863
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 7864
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 7865
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7866
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 7867
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 7865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7869
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 7870
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 7871
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    .line 7695
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 7696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7697
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 7696
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7699
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public isInBackground()Z
    .locals 2

    .line 9851
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 9
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 7619
    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 7621
    :cond_0
    if-nez p2, :cond_1

    .line 7622
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v0, p1

    goto :goto_0

    .line 7625
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v8, v0, p1

    .line 7628
    :goto_0
    return-void

    .line 7619
    :cond_2
    :goto_1
    return-void
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 7677
    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 7679
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7680
    .local v0, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v0, :cond_1

    .line 7681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 7682
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7684
    :cond_1
    if-nez p2, :cond_2

    .line 7685
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v8

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v1, p1

    goto :goto_0

    .line 7688
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v9

    move-object v4, p0

    move-object v6, v0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v9, v1, p1

    .line 7691
    :goto_0
    return-void

    .line 7677
    .end local v0    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public noteActivityPausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7422
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7423
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7425
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7417
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7418
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7242
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7243
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7245
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7238
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7239
    return-void
.end method

.method public noteBluetoothScanResultsLocked(I)V
    .locals 1
    .param p1, "numNewResults"    # I

    .line 7409
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 7411
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 7412
    return-void
.end method

.method public noteBluetoothScanStartedLocked(JZ)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "isUnoptimized"    # Z

    .line 7370
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 7371
    if-eqz p3, :cond_0

    .line 7372
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 7374
    :cond_0
    return-void
.end method

.method public noteBluetoothScanStoppedLocked(JZ)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "isUnoptimized"    # Z

    .line 7377
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    .line 7378
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 7380
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    .line 7381
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 7383
    :cond_1
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7315
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7317
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7310
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7311
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7290
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7291
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7293
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7286
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7287
    return-void
.end method

.method public noteForegroundServicePausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7432
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7433
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7435
    :cond_0
    return-void
.end method

.method public noteForegroundServiceResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7428
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7429
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 7095
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 7096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 7097
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7098
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7103
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7107
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 7108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 7109
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7111
    :cond_0
    return-void
.end method

.method public noteJobsDeferredLocked(IJ)V
    .locals 5
    .param p1, "numDeferred"    # I
    .param p2, "sinceLast"    # J

    .line 8860
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 8861
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 8862
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    .line 8864
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 8867
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v2, v2, v0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 8868
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 8869
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v0

    .line 8872
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 8873
    goto :goto_1

    .line 8866
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8877
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 3
    .param p1, "batteryUptime"    # J

    .line 7715
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 7716
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 7718
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7719
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7720
    return-void
.end method

.method public noteMobileRadioApWakeupLocked()V
    .locals 3

    .line 7788
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 7789
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 7791
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7792
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .line 7702
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 7703
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 7705
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 7706
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7707
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_0

    .line 7709
    :cond_1
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown network activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7712
    :goto_0
    return-void
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7248
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7249
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 7251
    :cond_0
    return-void
.end method

.method public noteResetBluetoothScanLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7386
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    .line 7387
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 7389
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    .line 7390
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 7392
    :cond_1
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7320
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7321
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 7323
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7296
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 7299
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7272
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 7275
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 10102
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 10103
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 9974
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9975
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 9976
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 9978
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 10089
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    .line 10090
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 10091
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 9960
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9961
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 9962
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 9964
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 10044
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10045
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v0, :cond_0

    .line 10046
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 10048
    :cond_0
    if-nez p3, :cond_1

    .line 10049
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 10050
    if-ltz p1, :cond_1

    .line 10051
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v1

    .line 10052
    .local v1, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_1

    .line 10053
    iput-wide p4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 10057
    .end local v1    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 10106
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 10107
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "stopReason"    # I

    .line 9981
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9982
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 9983
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 9985
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9986
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 9987
    .local v1, "types":Landroid/util/SparseIntArray;
    if-nez v1, :cond_1

    .line 9988
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v1, v2

    .line 9989
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9991
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 9992
    .local v2, "last":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 9994
    .end local v1    # "types":Landroid/util/SparseIntArray;
    .end local v2    # "last":I
    :cond_2
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 10095
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    .line 10096
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 10097
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 10099
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 9967
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9968
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 9969
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 9971
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 10060
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10061
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v0, :cond_0

    .line 10062
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 10063
    .local v1, "wlt":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 10065
    .end local v1    # "wlt":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_0
    if-nez p3, :cond_2

    .line 10066
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_1

    .line 10067
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 10069
    :cond_1
    if-ltz p1, :cond_2

    .line 10070
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pid;

    .line 10071
    .local v1, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_2

    .line 10072
    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 10073
    iget-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 10074
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 10079
    .end local v1    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_2
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .line 7652
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 7653
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 7655
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 7656
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    goto :goto_0

    .line 7658
    :cond_1
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown user activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7661
    :goto_0
    return-void
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    .line 7450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    .line 7451
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 7453
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 2
    .param p1, "durationMillis"    # J

    .line 7446
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 7447
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7266
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 7267
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7269
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7262
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7263
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 3
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 7136
    const/4 v0, 0x0

    .line 7137
    .local v0, "bin":I
    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 7138
    shr-int/lit8 p1, p1, 0x3

    .line 7139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7142
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_1

    return-void

    .line 7144
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7145
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v1, v1, v2

    .line 7146
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7148
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 7149
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 7150
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 7152
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7153
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .line 7157
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7158
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v0, v0, v2

    .line 7159
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7160
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 7162
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 7181
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 7182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 7183
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7184
    const/16 v1, 0x35

    .line 7185
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v2

    const/4 v3, 0x0

    .line 7184
    invoke-static {v1, v2, v3, v0}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 7188
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 7166
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 7167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 7168
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v1, :cond_0

    .line 7169
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7172
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7173
    const/16 v1, 0x35

    .line 7174
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v2

    const/4 v3, 0x0

    .line 7173
    invoke-static {v1, v2, v3, v0}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 7177
    :cond_1
    return-void
.end method

.method public noteWifiRadioApWakeupLocked()V
    .locals 3

    .line 7803
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 7804
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 7806
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7807
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 7075
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 7076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 7077
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 7078
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7081
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7083
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 7115
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    .line 7116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 7117
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 7118
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 7122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 7124
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7128
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    .line 7129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 7130
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 7132
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 7087
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 7088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 7089
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7091
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 25
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    move-object/from16 v8, p0

    .line 8548
    move-object/from16 v9, p3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 8549
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 8551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 8552
    .local v10, "numWakelocks":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 8553
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 8554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8555
    .local v1, "wakelockName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 8556
    .local v2, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v2, v12, v13, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 8558
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8553
    .end local v1    # "wakelockName":Ljava/lang/String;
    .end local v2    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8561
    .end local v0    # "j":I
    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 8562
    .local v14, "numSyncs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 8563
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_1
    move v15, v0

    .end local v0    # "j":I
    .local v15, "j":I
    if-ge v15, v14, :cond_2

    .line 8564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 8565
    .local v7, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8566
    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xd

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v17, v2

    move-object v2, v8

    move-object v11, v5

    move-object/from16 v5, v17

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move/from16 v19, v10

    move-object v10, v7

    move-object v7, v9

    .end local v7    # "syncName":Ljava/lang/String;
    .local v10, "syncName":Ljava/lang/String;
    .local v19, "numWakelocks":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v10    # "syncName":Ljava/lang/String;
    goto :goto_2

    .line 8563
    .end local v19    # "numWakelocks":I
    .local v10, "numWakelocks":I
    :cond_1
    move/from16 v19, v10

    .end local v10    # "numWakelocks":I
    .restart local v19    # "numWakelocks":I
    :goto_2
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "j":I
    .restart local v0    # "j":I
    move/from16 v10, v19

    goto :goto_1

    .line 8571
    .end local v0    # "j":I
    .end local v19    # "numWakelocks":I
    .restart local v10    # "numWakelocks":I
    :cond_2
    move/from16 v19, v10

    .end local v10    # "numWakelocks":I
    .restart local v19    # "numWakelocks":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 8572
    .local v10, "numJobs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 8573
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_3
    move v11, v0

    .end local v0    # "j":I
    .local v11, "j":I
    if-ge v11, v10, :cond_4

    .line 8574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 8575
    .local v15, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8576
    iget-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v20, v6

    move-object/from16 v6, v16

    move/from16 v21, v10

    move-object v10, v7

    move-object v7, v9

    .end local v10    # "numJobs":I
    .local v21, "numJobs":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v15, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v15    # "jobName":Ljava/lang/String;
    goto :goto_4

    .line 8573
    .end local v21    # "numJobs":I
    .restart local v10    # "numJobs":I
    :cond_3
    move/from16 v21, v10

    .end local v10    # "numJobs":I
    .restart local v21    # "numJobs":I
    :goto_4
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "j":I
    .restart local v0    # "j":I
    move/from16 v10, v21

    goto :goto_3

    .line 8581
    .end local v0    # "j":I
    .end local v21    # "numJobs":I
    .restart local v10    # "numJobs":I
    :cond_4
    move/from16 v21, v10

    .end local v10    # "numJobs":I
    .restart local v21    # "numJobs":I
    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V

    .line 8583
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8584
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8585
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    sget-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 8587
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readCounterFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v2

    aput-object v2, v1, v0

    .line 8586
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 8591
    .end local v0    # "i":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 8592
    .local v10, "numSensors":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8593
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_6
    if-ge v0, v10, :cond_6

    .line 8594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8595
    .local v1, "sensorNumber":I
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 8596
    .local v2, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 8598
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8593
    .end local v1    # "sensorNumber":I
    .end local v2    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 8601
    .end local v0    # "k":I
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 8602
    .local v11, "numProcs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 8603
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_7
    if-ge v0, v11, :cond_7

    .line 8604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8605
    .local v1, "processName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    .line 8606
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 8607
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8603
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 8610
    .end local v0    # "k":I
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 8611
    .local v15, "numPkgs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 8612
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_8
    if-ge v0, v15, :cond_8

    .line 8613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8614
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 8615
    .local v2, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 8616
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8612
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 8619
    .end local v0    # "l":I
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 8620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 8621
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x4

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object v2, v8

    move-object v7, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_9

    .line 8624
    :cond_9
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8626
    :goto_9
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 8627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 8628
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x5

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8633
    const/4 v7, 0x0

    goto :goto_a

    .line 8631
    :cond_a
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8633
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 8634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 8635
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x6

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v22, v6

    move-object/from16 v6, v16

    move/from16 v23, v10

    move-object v10, v7

    move-object v7, v9

    .end local v10    # "numSensors":I
    .local v23, "numSensors":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_b

    .line 8639
    .end local v23    # "numSensors":I
    .restart local v10    # "numSensors":I
    :cond_b
    move/from16 v23, v10

    move-object v10, v7

    .end local v10    # "numSensors":I
    .restart local v23    # "numSensors":I
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8641
    :goto_b
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 8642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    const/4 v7, 0x5

    if-ge v0, v7, :cond_d

    .line 8643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 8644
    invoke-virtual {v8, v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    goto :goto_d

    .line 8646
    :cond_c
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aput-object v10, v1, v0

    .line 8642
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 8649
    .end local v0    # "i":I
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 8650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 8651
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x7

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v5

    move-object/from16 v16, v2

    move-object v2, v8

    move-object v7, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_e

    .line 8654
    :cond_e
    move/from16 v16, v6

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8656
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 8657
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xf

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_f

    .line 8660
    :cond_f
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8662
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 8663
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_10

    .line 8666
    :cond_10
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8668
    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 8669
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_11

    .line 8672
    :cond_11
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8674
    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 8675
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x11

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_12

    .line 8678
    :cond_12
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8680
    :goto_12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 8681
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xa

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_13

    .line 8684
    :cond_13
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8686
    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 8687
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x16

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_14

    .line 8690
    :cond_14
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8692
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 8693
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x14

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v10, v7

    move/from16 v24, v11

    const/4 v11, 0x5

    move-object v7, v9

    .end local v11    # "numProcs":I
    .local v24, "numProcs":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_15

    .line 8698
    .end local v24    # "numProcs":I
    .restart local v11    # "numProcs":I
    :cond_15
    move/from16 v24, v11

    const/4 v11, 0x5

    .end local v11    # "numProcs":I
    .restart local v24    # "numProcs":I
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8700
    :goto_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 8701
    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x13

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v10

    move-object v2, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_16

    .line 8705
    :cond_16
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8707
    :goto_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 8708
    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x15

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v10

    move-object v2, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_17

    .line 8712
    :cond_17
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8714
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 8715
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_18

    .line 8717
    :cond_18
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8719
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 8720
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_19

    .line 8722
    :cond_19
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8724
    :goto_19
    const/16 v0, 0x13

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 8725
    move/from16 v0, v16

    .restart local v0    # "i":I
    :goto_1a
    const/4 v6, 0x7

    if-ge v0, v6, :cond_1b

    .line 8726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 8727
    invoke-virtual {v8, v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    goto :goto_1b

    .line 8729
    :cond_1a
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 8725
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 8732
    .end local v0    # "i":I
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 8733
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x9

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_1c

    .line 8736
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 8738
    :goto_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 8739
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8740
    move/from16 v1, v16

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_1e

    .line 8741
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 8740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8744
    .end local v1    # "i":I
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8746
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 8747
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8748
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8750
    move/from16 v1, v16

    .restart local v1    # "i":I
    :goto_1e
    if-ge v1, v0, :cond_1f

    .line 8751
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 8753
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 8750
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 8756
    .end local v1    # "i":I
    :cond_1f
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8757
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_1f

    .line 8759
    :cond_20
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8760
    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8763
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 8764
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_20

    .line 8767
    :cond_21
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 8770
    :goto_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 8771
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_21

    .line 8774
    :cond_22
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 8777
    :goto_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 8778
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v11, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_22

    .line 8781
    :cond_23
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 8784
    :goto_22
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8785
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 8788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8789
    .local v0, "numCpuClusters":I
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v1, :cond_25

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    if-ne v1, v0, :cond_24

    goto :goto_23

    .line 8790
    :cond_24
    new-instance v1, Landroid/os/ParcelFormatException;

    const-string v2, "Incompatible number of cpu clusters"

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8793
    :cond_25
    :goto_23
    new-array v1, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8794
    move/from16 v1, v16

    .local v1, "cluster":I
    :goto_24
    if-ge v1, v0, :cond_2b

    .line 8795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 8796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8797
    .local v2, "numSpeeds":I
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v3, :cond_27

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 8798
    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    if-ne v3, v2, :cond_26

    goto :goto_25

    .line 8799
    :cond_26
    new-instance v3, Landroid/os/ParcelFormatException;

    const-string v4, "Incompatible number of cpu speeds"

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8802
    :cond_27
    :goto_25
    new-array v3, v2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8803
    .local v3, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v3, v4, v1

    .line 8804
    move/from16 v4, v16

    .local v4, "speed":I
    :goto_26
    if-ge v4, v2, :cond_29

    .line 8805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    .line 8806
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v5, v7, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v3, v4

    .line 8804
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 8810
    .end local v2    # "numSpeeds":I
    .end local v3    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v4    # "speed":I
    :cond_29
    nop

    .line 8794
    const/4 v3, 0x0

    goto :goto_27

    .line 8811
    :cond_2a
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 8794
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 8814
    .end local v0    # "numCpuClusters":I
    .end local v1    # "cluster":I
    :cond_2b
    const/4 v3, 0x0

    goto :goto_28

    .line 8815
    :cond_2c
    const/4 v3, 0x0

    iput-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8818
    :goto_28
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8819
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8822
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8823
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$1;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8826
    .local v0, "length":I
    if-ne v0, v6, :cond_2d

    .line 8827
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8828
    move/from16 v1, v16

    .local v1, "procState":I
    :goto_29
    if-ge v1, v0, :cond_2e

    .line 8829
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v3

    aput-object v3, v2, v1

    .line 8828
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 8833
    .end local v1    # "procState":I
    :cond_2d
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8835
    :cond_2e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8836
    if-ne v0, v6, :cond_2f

    .line 8837
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8838
    nop

    .local v16, "procState":I
    :goto_2a
    move/from16 v1, v16

    .end local v16    # "procState":I
    .restart local v1    # "procState":I
    if-ge v1, v0, :cond_30

    .line 8839
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v3

    aput-object v3, v2, v1

    .line 8838
    add-int/lit8 v16, v1, 0x1

    .end local v1    # "procState":I
    .restart local v16    # "procState":I
    goto :goto_2a

    .line 8843
    .end local v16    # "procState":I
    :cond_2f
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8846
    :cond_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    .line 8847
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_2b

    .line 8849
    :cond_31
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8852
    :goto_2b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 8853
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_2c

    .line 8855
    :cond_32
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8857
    :goto_2c
    return-void
.end method

.method readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 8530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8531
    .local v0, "numJobCompletions":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 8532
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8533
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8534
    .local v3, "jobName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 8535
    .local v4, "numTypes":I
    if-lez v4, :cond_1

    .line 8536
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 8537
    .local v5, "types":Landroid/util/SparseIntArray;
    move v6, v1

    .local v6, "k":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 8538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 8539
    .local v7, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 8540
    .local v8, "count":I
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 8537
    .end local v7    # "type":I
    .end local v8    # "count":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8542
    .end local v6    # "k":I
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8532
    .end local v3    # "jobName":Ljava/lang/String;
    .end local v4    # "numTypes":I
    .end local v5    # "types":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8545
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 9913
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9914
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9915
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9916
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 9907
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9908
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9909
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9910
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 9919
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 9920
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 9922
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9924
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9925
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9927
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 9928
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9930
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 9931
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9933
    :cond_3
    return-void
.end method

.method public removeIsolatedUid(I)V
    .locals 2
    .param p1, "isolatedUid"    # I

    .line 6974
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    .line 6975
    .local v0, "idx":I
    :goto_0
    if-gez v0, :cond_1

    .line 6976
    return-void

    .line 6978
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 6979
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .line 10082
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 10083
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 10084
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 10086
    :cond_0
    return-void
.end method

.method public reset(JJ)Z
    .locals 19
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 7879
    move-wide/from16 v3, p3

    const/4 v5, 0x0

    .line 7881
    .local v5, "active":Z
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7882
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7884
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 7885
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7886
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    or-int/2addr v5, v6

    .line 7888
    :cond_0
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_1

    .line 7889
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7890
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    or-int/2addr v5, v6

    .line 7892
    :cond_1
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v6, :cond_2

    .line 7893
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7894
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    or-int/2addr v5, v6

    .line 7896
    :cond_2
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v9, 0x5

    if-eqz v6, :cond_6

    .line 7897
    move v6, v5

    move v5, v8

    .local v5, "i":I
    .local v6, "active":Z
    :goto_0
    if-ge v5, v9, :cond_4

    .line 7898
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    if-eqz v10, :cond_3

    .line 7899
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    invoke-virtual {v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v10

    xor-int/2addr v10, v7

    or-int/2addr v6, v10

    .line 7897
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7902
    .end local v5    # "i":I
    :cond_4
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v8

    :goto_1
    or-int/2addr v5, v6

    .line 7904
    .end local v6    # "active":Z
    .local v5, "active":Z
    :cond_6
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_7

    .line 7905
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7906
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    or-int/2addr v5, v6

    .line 7909
    :cond_7
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7910
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7911
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7912
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7913
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7914
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7915
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7916
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7917
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 7918
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v6, :cond_8

    .line 7919
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 7921
    :cond_8
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v6, :cond_9

    .line 7922
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 7925
    :cond_9
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_d

    .line 7926
    move v6, v5

    move v5, v8

    .local v5, "i":I
    .restart local v6    # "active":Z
    :goto_2
    const/4 v10, 0x7

    if-ge v5, v10, :cond_b

    .line 7927
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    if-eqz v10, :cond_a

    .line 7928
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    invoke-virtual {v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v10

    xor-int/2addr v10, v7

    or-int/2addr v6, v10

    .line 7926
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7931
    .end local v5    # "i":I
    :cond_b
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/16 v10, 0x13

    if-eq v5, v10, :cond_c

    move v5, v7

    goto :goto_3

    :cond_c
    move v5, v8

    :goto_3
    or-int/2addr v5, v6

    .line 7933
    .end local v6    # "active":Z
    .local v5, "active":Z
    :cond_d
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/4 v10, 0x0

    if-eqz v6, :cond_f

    .line 7934
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 7935
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 7936
    iput-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_4

    .line 7938
    :cond_e
    const/4 v5, 0x1

    .line 7942
    :cond_f
    :goto_4
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v11, 0x4

    if-eqz v6, :cond_10

    .line 7943
    move v6, v8

    .local v6, "i":I
    :goto_5
    if-ge v6, v11, :cond_10

    .line 7944
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v12, v12, v6

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 7943
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 7948
    .end local v6    # "i":I
    :cond_10
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/16 v12, 0xa

    if-eqz v6, :cond_12

    .line 7949
    move v6, v8

    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v12, :cond_11

    .line 7950
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v6

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7951
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v6

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7949
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 7953
    .end local v6    # "i":I
    :cond_11
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7954
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7957
    :cond_12
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v6, :cond_13

    .line 7958
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    .line 7961
    :cond_13
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v6, :cond_14

    .line 7962
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    .line 7965
    :cond_14
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v6, :cond_15

    .line 7966
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    .line 7969
    :cond_15
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7970
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7972
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v6, :cond_18

    .line 7973
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v13, v6

    move v14, v8

    :goto_7
    if-ge v14, v13, :cond_18

    aget-object v15, v6, v14

    .line 7974
    .local v15, "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v15, :cond_17

    .line 7975
    array-length v12, v15

    move v11, v8

    :goto_8
    if-ge v11, v12, :cond_17

    aget-object v10, v15, v11

    .line 7976
    .local v10, "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v10, :cond_16

    .line 7977
    invoke-virtual {v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7975
    .end local v10    # "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_8

    .line 7973
    .end local v15    # "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_17
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0xa

    goto :goto_7

    .line 7984
    :cond_18
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_19

    .line 7985
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    .line 7987
    :cond_19
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_1a

    .line 7988
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    .line 7991
    :cond_1a
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7992
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    .line 7994
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_1c

    .line 7995
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v10, v6

    move v11, v8

    :goto_9
    if-ge v11, v10, :cond_1c

    aget-object v12, v6, v11

    .line 7996
    .local v12, "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    if-eqz v12, :cond_1b

    .line 7997
    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    .line 7995
    .end local v12    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 8001
    :cond_1c
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_1e

    .line 8002
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v10, v6

    move v11, v8

    :goto_a
    if-ge v11, v10, :cond_1e

    aget-object v12, v6, v11

    .line 8003
    .restart local v12    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    if-eqz v12, :cond_1d

    .line 8004
    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    .line 8002
    .end local v12    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 8009
    :cond_1e
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    .line 8010
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    .line 8012
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8013
    .local v6, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v7

    .local v10, "iw":I
    :goto_b
    if-ltz v10, :cond_20

    .line 8014
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 8015
    .local v11, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 8016
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_c

    .line 8018
    :cond_1f
    const/4 v5, 0x1

    .line 8013
    .end local v11    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :goto_c
    add-int/lit8 v10, v10, -0x1

    goto :goto_b

    .line 8021
    .end local v10    # "iw":I
    :cond_20
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 8022
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    .line 8023
    .local v10, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .local v11, "is":I
    :goto_d
    if-ltz v11, :cond_22

    .line 8024
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8025
    .local v12, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 8026
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8027
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_e

    .line 8029
    :cond_21
    const/4 v5, 0x1

    .line 8023
    .end local v12    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :goto_e
    add-int/lit8 v11, v11, -0x1

    goto :goto_d

    .line 8032
    .end local v11    # "is":I
    :cond_22
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 8033
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 8034
    .local v11, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "ij":I
    :goto_f
    if-ltz v12, :cond_24

    .line 8035
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8036
    .local v13, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 8037
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8038
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_10

    .line 8040
    :cond_23
    const/4 v5, 0x1

    .line 8034
    .end local v13    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :goto_10
    add-int/lit8 v12, v12, -0x1

    goto :goto_f

    .line 8043
    .end local v12    # "ij":I
    :cond_24
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 8044
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 8046
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 8047
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 8048
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 8049
    move v12, v8

    .restart local v12    # "ij":I
    :goto_11
    sget-object v13, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v13, v13

    if-ge v12, v13, :cond_26

    .line 8050
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v13, v13, v12

    if-eqz v13, :cond_25

    .line 8051
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v13, v13, v12

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 8049
    :cond_25
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 8055
    .end local v12    # "ij":I
    :cond_26
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "ise":I
    :goto_12
    if-ltz v12, :cond_28

    .line 8056
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 8057
    .local v13, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v14

    if-eqz v14, :cond_27

    .line 8058
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_13

    .line 8060
    :cond_27
    const/4 v5, 0x1

    .line 8055
    .end local v13    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :goto_13
    add-int/lit8 v12, v12, -0x1

    goto :goto_12

    .line 8064
    .end local v12    # "ise":I
    :cond_28
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "ip":I
    :goto_14
    if-ltz v12, :cond_29

    .line 8065
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 8066
    .local v13, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 8064
    .end local v13    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v12, v12, -0x1

    goto :goto_14

    .line 8068
    .end local v12    # "ip":I
    :cond_29
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 8069
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lez v12, :cond_2b

    .line 8070
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "i":I
    :goto_15
    if-ltz v12, :cond_2b

    .line 8071
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pid;

    .line 8072
    .local v13, "pid":Landroid/os/BatteryStats$Uid$Pid;
    iget v14, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v14, :cond_2a

    .line 8073
    const/4 v5, 0x1

    goto :goto_16

    .line 8075
    :cond_2a
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8070
    .end local v13    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :goto_16
    add-int/lit8 v12, v12, -0x1

    goto :goto_15

    .line 8079
    .end local v12    # "i":I
    :cond_2b
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_2e

    .line 8080
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 8081
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 8082
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 8083
    .local v13, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 8084
    .local v14, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 8085
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-lez v15, :cond_2c

    .line 8086
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 8087
    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 8088
    .local v15, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_18
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2c

    .line 8089
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/util/Map$Entry;

    .line 8090
    .local v7, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    .line 8091
    .end local v7    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    nop

    .line 8087
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_18

    .line 8093
    .end local v13    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v14    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v15    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :cond_2c
    nop

    .line 8080
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_17

    .line 8094
    :cond_2d
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 8097
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_2e
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 8098
    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    .line 8100
    if-nez v5, :cond_4e

    .line 8101
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_2f

    .line 8102
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8104
    :cond_2f
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_30

    .line 8105
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8107
    :cond_30
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v7, :cond_31

    .line 8108
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    .line 8110
    :cond_31
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_19
    if-ge v7, v9, :cond_33

    .line 8111
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v8, v8, v7

    if-eqz v8, :cond_32

    .line 8112
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8110
    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 8115
    .end local v7    # "i":I
    :cond_33
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_34

    .line 8116
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8118
    :cond_34
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_35

    .line 8119
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8120
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1a

    .line 8122
    :cond_35
    const/4 v7, 0x0

    :goto_1a
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_36

    .line 8123
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8124
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8126
    :cond_36
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_37

    .line 8127
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8128
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8130
    :cond_37
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_38

    .line 8131
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8132
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8134
    :cond_38
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_39

    .line 8135
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8136
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8138
    :cond_39
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_3a

    .line 8139
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 8140
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8142
    :cond_3a
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v8, :cond_3b

    .line 8143
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    .line 8144
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8146
    :cond_3b
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v8, :cond_3c

    .line 8147
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    .line 8148
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8150
    :cond_3c
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v8, :cond_3d

    .line 8151
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    .line 8152
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8154
    :cond_3d
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v8, :cond_3e

    .line 8155
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 8156
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8158
    :cond_3e
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v8, :cond_3f

    .line 8159
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 8160
    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8162
    :cond_3f
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v7, :cond_40

    .line 8163
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1b
    const/4 v8, 0x4

    if-ge v7, v8, :cond_40

    .line 8164
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 8163
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 8167
    .end local v7    # "i":I
    :cond_40
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v7, :cond_41

    .line 8168
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1c
    const/16 v8, 0xa

    if-ge v7, v8, :cond_41

    .line 8169
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 8170
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 8168
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 8174
    .end local v7    # "i":I
    :cond_41
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v7, :cond_42

    .line 8175
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    .line 8178
    :cond_42
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v7, :cond_43

    .line 8179
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    .line 8182
    :cond_43
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v7, :cond_44

    .line 8183
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    .line 8186
    :cond_44
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 8188
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 8189
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 8191
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v7, :cond_47

    .line 8192
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v8, :cond_47

    aget-object v12, v7, v9

    .line 8193
    .local v12, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v12, :cond_46

    .line 8194
    array-length v13, v12

    const/4 v14, 0x0

    :goto_1e
    if-ge v14, v13, :cond_46

    aget-object v15, v12, v14

    .line 8195
    .local v15, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v15, :cond_45

    .line 8196
    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 8194
    .end local v15    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 8192
    .end local v12    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 8203
    :cond_47
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_48

    .line 8204
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 8206
    :cond_48
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_49

    .line 8207
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 8209
    :cond_49
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 8210
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 8212
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_4b

    .line 8213
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v8, :cond_4b

    aget-object v12, v7, v9

    .line 8214
    .local v12, "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    if-eqz v12, :cond_4a

    .line 8215
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 8213
    .end local v12    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 8219
    :cond_4b
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_4d

    .line 8220
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v8, :cond_4d

    aget-object v12, v7, v9

    .line 8221
    .restart local v12    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    if-eqz v12, :cond_4c

    .line 8222
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 8220
    .end local v12    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 8226
    :cond_4d
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$1000(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    .line 8227
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$1000(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    .line 8230
    :cond_4e
    if-nez v5, :cond_4f

    const/16 v17, 0x1

    goto :goto_21

    :cond_4f
    const/16 v17, 0x0

    :goto_21
    return v17
.end method

.method public setProcessStateForTest(I)V
    .locals 0
    .param p1, "procState"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6910
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 6911
    return-void
.end method

.method public updateOnBatteryBgTimeBase(JJ)Z
    .locals 7
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J

    .line 9855
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 9856
    .local v2, "on":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .locals 7
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J

    .line 9860
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 9861
    .local v2, "on":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateUidProcessStateLocked(I)V
    .locals 12
    .param p1, "procState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mBsi"
    .end annotation

    .line 9792
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9794
    .local v0, "userAwareService":Z
    :goto_0
    invoke-static {p1}, Landroid/os/BatteryStats;->mapToInternalProcessState(I)I

    move-result v1

    .line 9796
    .local v1, "uidRunningState":I
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-ne v0, v2, :cond_1

    .line 9797
    return-void

    .line 9800
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    .line 9801
    .local v2, "elapsedRealtimeMs":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v4, v1, :cond_8

    .line 9802
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    .line 9804
    .local v4, "uptimeMs":J
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/16 v7, 0x13

    if-eq v6, v7, :cond_5

    .line 9805
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9807
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9808
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 9809
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1300(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9810
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9811
    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v9

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9812
    invoke-static {v10}, Lcom/android/internal/os/BatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$Constants;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

    .line 9809
    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;

    .line 9813
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1408(Lcom/android/internal/os/BatteryStatsImpl;)J

    goto :goto_1

    .line 9815
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1508(Lcom/android/internal/os/BatteryStatsImpl;)J

    .line 9817
    :goto_1
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_3

    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->CRITICAL_PROC_STATES:[I

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9818
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9819
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iget v9, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 9822
    :cond_4
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 9825
    :cond_5
    :goto_2
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9826
    if-eq v1, v7, :cond_7

    .line 9827
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, v1

    if-nez v6, :cond_6

    .line 9828
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 9830
    :cond_6
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9833
    :cond_7
    const-wide/16 v6, 0x3e8

    mul-long v8, v4, v6

    mul-long v10, v2, v6

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryBgTimeBase(JJ)Z

    .line 9834
    mul-long v8, v4, v6

    mul-long/2addr v6, v2

    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    .line 9837
    .end local v4    # "uptimeMs":J
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-eq v0, v4, :cond_a

    .line 9838
    if-eqz v0, :cond_9

    .line 9839
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServiceResumedLocked(J)V

    goto :goto_3

    .line 9841
    :cond_9
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServicePausedLocked(J)V

    .line 9843
    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 9845
    :cond_a
    return-void
.end method

.method writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;

    .line 8234
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 8235
    .local v0, "NJC":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8236
    const/4 v1, 0x0

    move v2, v1

    .local v2, "ijc":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8237
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8238
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 8239
    .local v3, "types":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 8240
    .local v4, "NT":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8241
    move v5, v1

    .local v5, "it":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 8242
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 8243
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 8241
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8236
    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "NT":I
    .end local v5    # "it":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8246
    .end local v2    # "ijc":I
    :cond_1
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .locals 20
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 8249
    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v7

    move-wide/from16 v3, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 8250
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 8252
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8253
    .local v1, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 8254
    .local v2, "NW":I
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8255
    const/4 v3, 0x0

    move v4, v3

    .local v4, "iw":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 8256
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8257
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 8258
    .local v5, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 8255
    .end local v5    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8261
    .end local v4    # "iw":I
    :cond_0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 8262
    .local v4, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 8263
    .local v5, "NS":I
    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8264
    move v6, v3

    .local v6, "is":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 8265
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8266
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8267
    .local v10, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v7, v10, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 8264
    .end local v10    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8270
    .end local v6    # "is":I
    :cond_1
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8271
    .local v6, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 8272
    .local v10, "NJ":I
    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 8273
    move v11, v3

    .local v11, "ij":I
    :goto_2
    if-ge v11, v10, :cond_2

    .line 8274
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8275
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 8276
    .local v12, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v7, v12, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 8273
    .end local v12    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 8279
    .end local v11    # "ij":I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V

    .line 8281
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8282
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8283
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8284
    move v11, v3

    .local v11, "i":I
    :goto_3
    sget-object v12, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 8285
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v12, v12, v11

    invoke-static {v7, v12}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V

    .line 8284
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 8288
    .end local v11    # "i":I
    :cond_3
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 8289
    .local v11, "NSE":I
    invoke-virtual {v7, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 8290
    move v12, v3

    .local v12, "ise":I
    :goto_4
    if-ge v12, v11, :cond_4

    .line 8291
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 8292
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 8293
    .local v13, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 8290
    .end local v13    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 8296
    .end local v12    # "ise":I
    :cond_4
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 8297
    .local v12, "NP":I
    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 8298
    move v13, v3

    .local v13, "ip":I
    :goto_5
    if-ge v13, v12, :cond_5

    .line 8299
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8300
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 8301
    .local v14, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v14, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 8298
    .end local v14    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 8304
    .end local v13    # "ip":I
    :cond_5
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 8305
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 8306
    .local v14, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8307
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 8308
    .local v15, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 8309
    .end local v14    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v15    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    goto :goto_6

    .line 8311
    :cond_6
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v14, 0x1

    if-eqz v13, :cond_7

    .line 8312
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8313
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_7

    .line 8315
    :cond_7
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8317
    :goto_7
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_8

    .line 8318
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8319
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_8

    .line 8321
    :cond_8
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8323
    :goto_8
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_9

    .line 8324
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8325
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_9

    .line 8327
    :cond_9
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8329
    :goto_9
    move v13, v3

    .local v13, "i":I
    :goto_a
    const/4 v15, 0x5

    if-ge v13, v15, :cond_b

    .line 8330
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    if-eqz v15, :cond_a

    .line 8331
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8332
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_b

    .line 8334
    :cond_a
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8329
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 8337
    .end local v13    # "i":I
    :cond_b
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_c

    .line 8338
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8339
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 8341
    :cond_c
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8344
    :goto_c
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_d

    .line 8345
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8346
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_d

    .line 8348
    :cond_d
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8350
    :goto_d
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_e

    .line 8351
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8352
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_e

    .line 8354
    :cond_e
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8356
    :goto_e
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_f

    .line 8357
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8358
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_f

    .line 8360
    :cond_f
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8362
    :goto_f
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_10

    .line 8363
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8364
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_10

    .line 8366
    :cond_10
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8368
    :goto_10
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_11

    .line 8369
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8370
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_11

    .line 8372
    :cond_11
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8374
    :goto_11
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_12

    .line 8375
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8376
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_12

    .line 8378
    :cond_12
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8380
    :goto_12
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_13

    .line 8381
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8382
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_13

    .line 8384
    :cond_13
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8386
    :goto_13
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_14

    .line 8387
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8388
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_14

    .line 8390
    :cond_14
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8392
    :goto_14
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_15

    .line 8393
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8394
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_15

    .line 8396
    :cond_15
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8398
    :goto_15
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v13, :cond_16

    .line 8399
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8400
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_16

    .line 8402
    :cond_16
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8404
    :goto_16
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v13, :cond_17

    .line 8405
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8406
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_17

    .line 8408
    :cond_17
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8410
    :goto_17
    move v13, v3

    .restart local v13    # "i":I
    :goto_18
    const/4 v15, 0x7

    if-ge v13, v15, :cond_19

    .line 8411
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    if-eqz v15, :cond_18

    .line 8412
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8413
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_19

    .line 8415
    :cond_18
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8410
    :goto_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    .line 8418
    .end local v13    # "i":I
    :cond_19
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v13, :cond_1a

    .line 8419
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8420
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1a

    .line 8422
    :cond_1a
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8424
    :goto_1a
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v13, :cond_1b

    .line 8425
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8426
    move v13, v3

    .restart local v13    # "i":I
    :goto_1b
    const/4 v15, 0x4

    if-ge v13, v15, :cond_1c

    .line 8427
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8426
    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    .line 8430
    .end local v13    # "i":I
    :cond_1b
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8432
    :cond_1c
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v13, :cond_1e

    .line 8433
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8434
    move v13, v3

    .restart local v13    # "i":I
    :goto_1c
    const/16 v15, 0xa

    if-ge v13, v15, :cond_1d

    .line 8435
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8436
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8434
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 8438
    .end local v13    # "i":I
    :cond_1d
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8439
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1d

    .line 8441
    :cond_1e
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8444
    :goto_1d
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v13, :cond_1f

    .line 8445
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8446
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 8448
    :cond_1f
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8451
    :goto_1e
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v13, :cond_20

    .line 8452
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8453
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 8455
    :cond_20
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8458
    :goto_1f
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v13, :cond_21

    .line 8459
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8460
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 8462
    :cond_21
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8465
    :goto_20
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8466
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8468
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v13, :cond_26

    .line 8469
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8470
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v13, v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 8471
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v15, v13

    :goto_21
    if-ge v3, v15, :cond_25

    aget-object v14, v13, v3

    .line 8472
    .local v14, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v14, :cond_24

    .line 8473
    move-object/from16 v16, v1

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8474
    .end local v1    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .local v16, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    array-length v1, v14

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8475
    array-length v1, v14

    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "NW":I
    .local v17, "NW":I
    :goto_22
    if-ge v2, v1, :cond_23

    move/from16 v18, v1

    aget-object v1, v14, v2

    .line 8476
    .local v1, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_22

    .line 8477
    move-object/from16 v19, v4

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8478
    .end local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .local v19, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8475
    const/4 v4, 0x0

    goto :goto_23

    .line 8480
    .end local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    :cond_22
    move-object/from16 v19, v4

    .end local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8475
    .end local v1    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :goto_23
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    move-object/from16 v4, v19

    goto :goto_22

    .line 8471
    .end local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    :cond_23
    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    goto :goto_24

    .line 8484
    .end local v16    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v17    # "NW":I
    .end local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .local v1, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v2    # "NW":I
    .restart local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    :cond_24
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v1    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v2    # "NW":I
    .end local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v16    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v17    # "NW":I
    .restart local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8471
    .end local v14    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :goto_24
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v4, v19

    const/4 v14, 0x1

    goto :goto_21

    .line 8491
    .end local v16    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v17    # "NW":I
    .end local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v1    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v2    # "NW":I
    .restart local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    :cond_25
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v4

    .end local v1    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v2    # "NW":I
    .end local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v16    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v17    # "NW":I
    .restart local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    goto :goto_25

    .line 8488
    .end local v16    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v17    # "NW":I
    .end local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v1    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v2    # "NW":I
    .restart local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    :cond_26
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v4

    move v4, v3

    .end local v1    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v2    # "NW":I
    .end local v4    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    .restart local v16    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v17    # "NW":I
    .restart local v19    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8491
    :goto_25
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 8492
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 8494
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8495
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->access$1100(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V

    .line 8497
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v1, :cond_27

    .line 8498
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v1, v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8499
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 8500
    .local v4, "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    invoke-static {v7, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 8499
    .end local v4    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 8503
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8505
    :cond_28
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v1, :cond_29

    .line 8506
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v1, v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8507
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 8508
    .restart local v4    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    invoke-static {v7, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 8507
    .end local v4    # "counters":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 8511
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8514
    :cond_2a
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v1, :cond_2b

    .line 8515
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8516
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_28

    .line 8518
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8521
    :goto_28
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v1, :cond_2c

    .line 8522
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8523
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_29

    .line 8525
    :cond_2c
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8527
    :goto_29
    return-void
.end method
