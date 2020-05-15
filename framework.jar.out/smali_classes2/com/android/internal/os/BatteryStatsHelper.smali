.class public Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtimeUs:J

.field mBatteryTimeRemainingUs:J

.field mBatteryUptimeUs:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemainingUs:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtimeUs:J

.field mRawUptimeUs:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mServicepackageArray:[Ljava/lang/String;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mSystemPackageArray:[Ljava/lang/String;

.field private mTotalPower:D

.field mTypeBatteryRealtimeUs:J

.field mTypeBatteryUptimeUs:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 177
    iput p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMode:I

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    .line 182
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 116
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 118
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMode:I

    .line 122
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 125
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 144
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    .line 186
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 187
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 188
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    .line 194
    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    .line 196
    return-void
.end method

.method private addAmbientDisplayUsage()V
    .locals 10

    .line 668
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 669
    .local v0, "ambientDisplayMs":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "ambient.on"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    long-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    .line 671
    .local v2, "power":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 672
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v4, p0

    move-wide v6, v0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 674
    :cond_0
    return-void
.end method

.method private addBluetoothUsage()V
    .locals 13

    .line 741
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 742
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object v6, v0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 744
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v4, "Bluetooth"

    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 745
    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .line 786
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 787
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 788
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 789
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 790
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    return-object v0
.end method

.method private addIdleUsage()V
    .locals 12

    .line 702
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.suspend"

    .line 703
    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v6, v0, v4

    .line 704
    .local v6, "suspendPowerMaMs":D
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    .line 705
    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v8, v0, v4

    .line 706
    .local v8, "idlePowerMaMs":D
    add-double v0, v6, v8

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v10, v0, v4

    .line 714
    .local v10, "totalPowerMah":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v10, v0

    if-eqz v0, :cond_0

    .line 715
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    div-long v2, v4, v2

    move-object v0, p0

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 717
    :cond_0
    return-void
.end method

.method private addMemoryUsage()V
    .locals 13

    .line 761
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 762
    .local v0, "memory":Lcom/android/internal/os/BatterySipper;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object v6, v0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 764
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 765
    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 10

    .line 626
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 627
    .local v0, "phoneOnTimeMs":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "radio.active"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    long-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    .line 629
    .local v2, "phoneOnPower":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    .line 630
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v4, p0

    move-wide v6, v0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 632
    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 13

    .line 677
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 678
    .local v0, "radio":Lcom/android/internal/os/BatterySipper;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object v6, v0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 680
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 681
    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_0
    return-void
.end method

.method private addScreenUsage()V
    .locals 17

    .line 638
    move-object/from16 v6, p0

    const-wide/16 v0, 0x0

    .line 639
    .local v0, "power":D
    iget-object v2, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v3, v6, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget v5, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v7, v2, v4

    .line 640
    .local v7, "screenOnTimeMs":J
    long-to-double v2, v7

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "screen.on"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v2, v9

    add-double/2addr v0, v2

    .line 641
    iget-object v2, v6, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    .line 642
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    .line 643
    .local v9, "screenFullPower":D
    const/4 v2, 0x0

    .line 643
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 644
    int-to-float v3, v2

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v3, v11

    float-to-double v11, v3

    mul-double/2addr v11, v9

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    div-double/2addr v11, v13

    .line 646
    .local v11, "screenBinPower":D
    iget-object v3, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v13, v6, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget v15, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3, v2, v13, v14, v15}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v13

    div-long/2addr v13, v4

    .line 648
    .local v13, "brightnessTime":J
    long-to-double v4, v13

    mul-double/2addr v4, v11

    .line 653
    .local v4, "p":D
    add-double/2addr v0, v4

    .line 643
    .end local v4    # "p":D
    .end local v11    # "screenBinPower":D
    .end local v13    # "brightnessTime":J
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v4, 0x3e8

    goto :goto_0

    .line 655
    .end local v2    # "i":I
    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v11, v0, v2

    .line 656
    .end local v0    # "power":D
    .local v11, "power":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v11, v0

    if-eqz v0, :cond_1

    .line 657
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, v6

    move-wide v2, v7

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 659
    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 7

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 753
    .local v1, "userId":I
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 754
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iput v1, v2, Lcom/android/internal/os/BatterySipper;->userId:I

    .line 755
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "User"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 756
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    .end local v1    # "userId":I
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private addWiFiUsage()V
    .locals 13

    .line 727
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 728
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object v6, v0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v4, "WIFI"

    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 731
    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_0
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 687
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 688
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 690
    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 687
    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 693
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 694
    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 165
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bluetooth.controller.idle"

    .line 166
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "bluetooth.controller.rx"

    .line 167
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "bluetooth.controller.tx"

    .line 168
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 157
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi.controller.idle"

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi.controller.rx"

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi.controller.tx"

    .line 160
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 253
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 254
    return-void
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 7
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .line 1041
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1042
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_1

    .line 1043
    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1044
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v3

    .line 1045
    .local v3, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1046
    .local v4, "parcel":Landroid/os/Parcel;
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1047
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1048
    sget-object v5, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1049
    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v5

    .line 1050
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    nop

    .line 1051
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1050
    return-object v2

    .line 1051
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "data":[B
    .end local v4    # "parcel":Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1051
    :goto_0
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 1052
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read statistics stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1057
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    goto :goto_2

    .line 1055
    :catch_3
    move-exception v0

    .line 1056
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    return-object v0
.end method

.method private load()V
    .locals 4

    .line 1029
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    .line 1030
    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 1033
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 1037
    :cond_1
    return-void
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 5
    .param p0, "power"    # D

    .line 304
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 307
    :cond_0
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 308
    const-string v0, "%.8f"

    .local v0, "format":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 309
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 310
    const-string v0, "%.7f"

    goto :goto_0

    .line 311
    :cond_2
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 312
    const-string v0, "%.6f"

    goto :goto_0

    .line 313
    :cond_3
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    .line 314
    const-string v0, "%.5f"

    goto :goto_0

    .line 315
    :cond_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    .line 316
    const-string v0, "%.4f"

    goto :goto_0

    .line 317
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    .line 318
    const-string v0, "%.3f"

    goto :goto_0

    .line 319
    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    .line 320
    const-string v0, "%.2f"

    goto :goto_0

    .line 321
    :cond_7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    .line 322
    const-string v0, "%.1f"

    goto :goto_0

    .line 324
    :cond_8
    const-string v0, "%.0f"

    .line 328
    .restart local v0    # "format":Ljava/lang/String;
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    move-object/from16 v0, p0

    .line 556
    move-object/from16 v1, p1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 557
    .local v2, "forAllUsers":Z
    :goto_0
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "osSipper":Lcom/android/internal/os/BatterySipper;
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 561
    .local v5, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 562
    .local v6, "NU":I
    nop

    .local v3, "iu":I
    :goto_1
    if-ge v3, v6, :cond_7

    .line 563
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    .line 564
    .local v7, "u":Landroid/os/BatteryStats$Uid;
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v13, 0x0

    invoke-direct {v8, v9, v7, v13, v14}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    move-object v15, v8

    .line 566
    .local v15, "app":Lcom/android/internal/os/BatterySipper;
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v16, v5

    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .end local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-wide/from16 v17, v9

    move-object v9, v15

    move-object v10, v7

    move-wide/from16 v19, v13

    move-wide/from16 v13, v17

    move-object/from16 v21, v15

    move v15, v5

    .end local v15    # "app":Lcom/android/internal/os/BatterySipper;
    .local v21, "app":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 567
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object/from16 v9, v21

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 568
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 570
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 571
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 573
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 574
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 575
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 577
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 579
    move-object/from16 v5, v21

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v8

    .line 586
    .end local v21    # "app":Lcom/android/internal/os/BatterySipper;
    .local v5, "app":Lcom/android/internal/os/BatterySipper;
    .local v8, "totalPower":D
    cmpl-double v10, v8, v19

    if-nez v10, :cond_1

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    if-nez v10, :cond_6

    .line 590
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v10

    .line 591
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 592
    .local v11, "userId":I
    const/16 v12, 0x3f2

    if-ne v10, v12, :cond_2

    .line 593
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 594
    :cond_2
    const/16 v12, 0x3ea

    if-ne v10, v12, :cond_3

    .line 595
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 596
    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    .line 597
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_5

    .line 599
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 600
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v12, :cond_4

    .line 601
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 602
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    :cond_4
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    goto :goto_2

    .line 606
    :cond_5
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :goto_2
    if-nez v10, :cond_6

    .line 610
    move-object v4, v5

    .line 562
    .end local v5    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "u":Landroid/os/BatteryStats$Uid;
    .end local v8    # "totalPower":D
    .end local v10    # "uid":I
    .end local v11    # "userId":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_1

    .line 615
    .end local v3    # "iu":I
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v5, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_7
    move-object/from16 v16, v5

    .end local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    if-eqz v4, :cond_8

    .line 619
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object v8, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 621
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 623
    :cond_8
    return-void
.end method

.method private processMiscUsage()V
    .locals 1

    .line 771
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    .line 772
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    .line 773
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    .line 774
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addAmbientDisplayUsage()V

    .line 775
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    .line 776
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    .line 777
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addMemoryUsage()V

    .line 778
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    .line 780
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    .line 783
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "pos":I
    new-array v1, p1, [B

    .line 842
    .local v1, "data":[B
    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 845
    .local v2, "amt":I
    if-gtz v2, :cond_0

    .line 848
    return-object v1

    .line 850
    :cond_0
    add-int/2addr v0, v2

    .line 851
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 852
    array-length v3, v1

    sub-int/2addr v3, v0

    if-le p1, v3, :cond_1

    .line 853
    add-int v3, v0, p1

    new-array v3, v3, [B

    .line 854
    .local v3, "newData":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 855
    move-object v1, v3

    .line 857
    .end local v2    # "amt":I
    .end local v3    # "newData":[B
    :cond_1
    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 225
    .local v1, "path":Ljava/io/File;
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats;

    .line 226
    .local v2, "stats":Landroid/os/BatteryStats;
    if-eqz v2, :cond_0

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v2

    .line 229
    :cond_0
    const/4 v3, 0x0

    .line 231
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 232
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v4

    .line 233
    .local v4, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 234
    .local v5, "parcel":Landroid/os/Parcel;
    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 235
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 236
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    nop

    .line 242
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    goto :goto_0

    .line 243
    :catch_0
    move-exception v7

    .line 244
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    return-object v6

    .line 240
    .end local v4    # "data":[B
    .end local v5    # "parcel":Landroid/os/Parcel;
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 237
    :catch_1
    move-exception v4

    .line 238
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "Unable to read history to file"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 242
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    .end local v1    # "path":Ljava/io/File;
    .end local v2    # "stats":Landroid/os/BatteryStats;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    :goto_1
    goto :goto_2

    .line 243
    .restart local v1    # "path":Ljava/io/File;
    .restart local v2    # "stats":Landroid/os/BatteryStats;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    goto :goto_1

    .line 247
    .end local v1    # "path":Ljava/io/File;
    .end local v2    # "stats":Landroid/os/BatteryStats;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 248
    const-string v0, "batterystats"

    .line 249
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    return-object v0

    .line 240
    .restart local v1    # "path":Ljava/io/File;
    .restart local v2    # "stats":Landroid/os/BatteryStats;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v3, :cond_2

    .line 242
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 244
    goto :goto_4

    .line 243
    :catch_3
    move-exception v5

    .line 244
    :cond_2
    :goto_4
    :try_start_8
    throw v4

    .line 247
    .end local v1    # "path":Ljava/io/File;
    .end local v2    # "stats":Landroid/os/BatteryStats;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 263
    return-void
.end method

.method public convertMsToUs(J)J
    .locals 2
    .param p1, "timeMs"    # J

    .line 983
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public convertUsToMs(J)J
    .locals 2
    .param p1, "timeUs"    # J

    .line 979
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 3
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .line 284
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 285
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 286
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 289
    if-eqz p1, :cond_0

    .line 290
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 291
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 293
    :cond_0
    const-string v0, "batterystats"

    .line 294
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 295
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 296
    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getComputedPower()D
    .locals 2

    .line 823
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 988
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 989
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    .line 990
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1

    .line 993
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getMaxDrainedPower()D
    .locals 2

    .line 831
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    .line 811
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    .line 815
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    .line 827
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 10
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->convertMsToUs(J)J

    move-result-wide v0

    .line 999
    .local v0, "rawRealTimeUs":J
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 1001
    .local v2, "foregroundTypes":[I
    const-wide/16 v4, 0x0

    .line 1002
    .local v4, "timeUs":J
    array-length v6, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget v7, v2, v3

    .line 1003
    .local v7, "type":I
    invoke-virtual {p1, v7, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    .line 1004
    .local v8, "localTime":J
    add-long/2addr v4, v8

    .line 1002
    .end local v7    # "type":I
    .end local v8    # "localTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    nop

    .line 1010
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1009
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->convertUsToMs(J)J

    move-result-wide v6

    return-wide v6
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    .line 803
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    .line 819
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 6
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 944
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 946
    return v1

    .line 949
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 950
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 951
    const/4 v1, 0x1

    return v1

    .line 949
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 955
    :cond_2
    return v1
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .locals 8
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 962
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    .line 963
    .local v0, "uid":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 965
    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 966
    return v1

    .line 967
    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 968
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 969
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 970
    return v1

    .line 968
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 975
    :cond_3
    return v3
.end method

.method public refreshStats(II)V
    .locals 2
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 336
    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 338
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 11
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 357
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v9, v0, v2

    .line 357
    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    .line 359
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 19
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .line 364
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    move-object/from16 v0, p0

    move-wide/from16 v8, p3

    .line 364
    move-wide/from16 v10, p5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 366
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 367
    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 368
    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 369
    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 371
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 372
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 373
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 374
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 375
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 377
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v1, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 384
    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 386
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_2

    .line 387
    new-instance v1, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 389
    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 391
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_3

    .line 392
    new-instance v1, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 394
    :cond_3
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 396
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez v1, :cond_4

    .line 397
    new-instance v1, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    .line 399
    :cond_4
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    .line 403
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v14

    .line 404
    .local v14, "hasWifiPowerReporting":Z
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    if-eq v14, v1, :cond_7

    .line 405
    :cond_5
    if-eqz v14, :cond_6

    .line 406
    new-instance v1, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto :goto_0

    .line 407
    :cond_6
    new-instance v1, Lcom/android/internal/os/WifiPowerEstimator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_0
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 408
    iput-boolean v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    .line 410
    :cond_7
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 412
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v15

    .line 414
    .local v15, "hasBluetoothPowerReporting":Z
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    if-eq v15, v1, :cond_9

    .line 416
    :cond_8
    new-instance v1, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 417
    iput-boolean v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    .line 419
    :cond_9
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 421
    new-instance v7, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    .line 422
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/SensorManager;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object v1, v7

    move-wide v5, v8

    move-object v12, v7

    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V

    iput-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 424
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 426
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_a

    .line 427
    new-instance v1, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 429
    :cond_a
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 431
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_b

    .line 432
    new-instance v1, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 434
    :cond_b
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 436
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_c

    .line 437
    new-instance v1, Lcom/android/internal/os/MediaPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/MediaPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 439
    :cond_c
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 441
    move/from16 v1, p1

    iput v1, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 442
    iput-wide v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 443
    iput-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 444
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v10, v11}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptimeUs:J

    .line 445
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v8, v9}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtimeUs:J

    .line 446
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v10, v11, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    .line 447
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v8, v9, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    .line 448
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v8, v9}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemainingUs:J

    .line 449
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v8, v9}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemainingUs:J

    .line 459
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 460
    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    .line 461
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 462
    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    .line 464
    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    .line 467
    const/4 v3, 0x0

    move v4, v3

    .line 467
    .local v4, "i":I
    :goto_1
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 468
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 469
    .local v5, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 470
    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_d

    .line 471
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v5    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 475
    .end local v4    # "i":I
    :cond_e
    move v4, v3

    .line 475
    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 476
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 477
    .local v5, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move v6, v3

    .line 477
    .local v6, "j":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_10

    .line 478
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    .line 479
    .local v7, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 480
    iget-wide v12, v7, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v16, 0x0

    cmpl-double v12, v12, v16

    if-eqz v12, :cond_f

    .line 481
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v7    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 475
    .end local v5    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v6    # "j":I
    :cond_10
    const-wide/16 v16, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 485
    .end local v4    # "i":I
    :cond_11
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v5, Lcom/android/internal/os/BatteryStatsHelper$1;

    invoke-direct {v5, v0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    .line 494
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 498
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 499
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 500
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 501
    .local v4, "usageListCount":I
    nop

    .line 501
    .local v3, "i":I
    :goto_4
    if-ge v3, v4, :cond_12

    .line 502
    iget-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    iget-wide v12, v7, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v5, v12

    iput-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 511
    .end local v3    # "i":I
    .end local v4    # "usageListCount":I
    :cond_12
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 512
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 513
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpl-double v3, v3, v5

    const/4 v4, 0x0

    if-lez v3, :cond_14

    .line 514
    iget-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    sub-double/2addr v5, v12

    .line 515
    .local v5, "amount":D
    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 516
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 519
    .local v3, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 520
    .local v4, "index":I
    if-gez v4, :cond_13

    .line 521
    add-int/lit8 v7, v4, 0x1

    neg-int v4, v7

    .line 523
    :cond_13
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v7, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 524
    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 525
    .end local v3    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v4    # "index":I
    .end local v5    # "amount":D
    goto :goto_5

    :cond_14
    iget-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpg-double v3, v5, v12

    if-gez v3, :cond_16

    .line 526
    iget-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double/2addr v5, v12

    .line 529
    .restart local v5    # "amount":D
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 530
    .restart local v3    # "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 531
    .restart local v4    # "index":I
    if-gez v4, :cond_15

    .line 532
    add-int/lit8 v7, v4, 0x1

    neg-int v4, v7

    .line 534
    :cond_15
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v7, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 540
    .end local v3    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v4    # "index":I
    .end local v5    # "amount":D
    :cond_16
    :goto_5
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsHelper;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v3

    .line 541
    .local v3, "hiddenPowerMah":D
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v5

    sub-double/2addr v5, v3

    .line 542
    .local v5, "totalRemainingPower":D
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v12, v16

    if-lez v7, :cond_18

    .line 543
    const/4 v7, 0x0

    .line 543
    .local v7, "i":I
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 543
    .local v12, "size":I
    :goto_6
    if-ge v7, v12, :cond_18

    .line 544
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    .line 545
    .local v13, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-boolean v0, v13, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-nez v0, :cond_17

    .line 546
    iget-wide v0, v13, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v8, v13, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v0, v8

    div-double/2addr v0, v5

    mul-double/2addr v0, v3

    iput-wide v0, v13, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 549
    invoke-virtual {v13}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 543
    .end local v13    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_17
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v8, p3

    goto :goto_6

    .line 553
    .end local v7    # "i":I
    .end local v12    # "size":I
    :cond_18
    return-void
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 345
    .local v0, "n":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 346
    .local v1, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 347
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 348
    .local v3, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 351
    return-void
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    .line 869
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const-wide/16 v0, 0x0

    .line 870
    .local v0, "proportionalSmearPowerMah":D
    const/4 v2, 0x0

    .line 871
    .local v2, "screenSipper":Lcom/android/internal/os/BatterySipper;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 872
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 873
    .local v4, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsHelper;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    .line 874
    iget-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v5, :cond_0

    .line 875
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    .line 883
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    .line 887
    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    .line 888
    move-object v2, v4

    .line 871
    .end local v4    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 892
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    .line 894
    return-wide v0
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1015
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1016
    return-void
.end method

.method public setServicePackageArray([Ljava/lang/String;)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1025
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    .line 1026
    return-void
.end method

.method public setSystemPackageArray([Ljava/lang/String;)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1020
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    .line 1021
    return-void
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 928
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 930
    .local v0, "drainType":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 937
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 930
    :goto_1
    return v1
.end method

.method public smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 12
    .param p2, "screenSipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    .line 902
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const-wide/16 v0, 0x0

    .line 903
    .local v0, "totalActivityTimeMs":J
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 904
    .local v2, "activityTimeArray":Landroid/util/SparseLongArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 905
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 906
    .local v5, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v5, :cond_0

    .line 907
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v6

    .line 909
    .local v6, "timeMs":J
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v2, v8, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 910
    add-long/2addr v0, v6

    .line 904
    .end local v5    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v6    # "timeMs":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 914
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_1
    if-eqz p2, :cond_2

    const-wide/32 v3, 0x927c0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 915
    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 916
    .local v3, "screenPowerMah":D
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 917
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    .line 918
    .local v7, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v8

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v8, v3

    long-to-double v10, v0

    div-double/2addr v8, v10

    iput-wide v8, v7, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 916
    .end local v7    # "sipper":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 922
    .end local v3    # "screenPowerMah":D
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_2
    return-void
.end method

.method public storeState()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    .line 300
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 301
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "fname"    # Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 201
    .local v1, "path":Ljava/io/File;
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    const/4 v2, 0x0

    .line 204
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 206
    .local v3, "hist":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 207
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 208
    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    nop

    .line 214
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v5, "Unable to write history to file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 214
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    .end local v1    # "path":Ljava/io/File;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :goto_0
    goto :goto_1

    .line 215
    .restart local v1    # "path":Ljava/io/File;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 219
    .end local v1    # "path":Ljava/io/File;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 220
    return-void

    .line 212
    .restart local v1    # "path":Ljava/io/File;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 214
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 216
    goto :goto_3

    .line 215
    :catch_2
    move-exception v4

    .line 216
    :cond_1
    :goto_3
    :try_start_7
    throw v3

    .line 219
    .end local v1    # "path":Ljava/io/File;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
