.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerEstimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 34
    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    .line 35
    const-string/jumbo v0, "wifi.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    .line 36
    const-string/jumbo v0, "wifi.scan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    .line 37
    const-string/jumbo v0, "wifi.batchedscan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    .line 38
    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 6
    .param p0, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 44
    const-wide/32 v0, 0xf4240

    .line 45
    .local v0, "WIFI_BPS":J
    const-string/jumbo v2, "wifi.active"

    invoke-virtual {p0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    .line 47
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    return-wide v4
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 24
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 53
    move/from16 v5, p7

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 55
    const/4 v7, 0x3

    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 57
    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 59
    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 62
    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    mul-double/2addr v6, v8

    .line 65
    .local v6, "wifiPacketPower":D
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 66
    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    iget-wide v12, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 67
    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v8, v8

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v8, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v12

    .line 69
    .local v8, "wifiLockPower":D
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    div-long/2addr v14, v10

    .line 70
    .local v14, "wifiScanTimeMs":J
    long-to-double v10, v14

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    .end local v14    # "wifiScanTimeMs":J
    .local v18, "wifiScanTimeMs":J
    mul-double/2addr v10, v14

    div-double/2addr v10, v12

    .line 72
    .local v10, "wifiScanPower":D
    const-wide/16 v14, 0x0

    .line 73
    .local v14, "wifiBatchScanPower":D
    const/16 v20, 0x0

    .local v20, "bin":I
    :goto_0
    move/from16 v21, v20

    .end local v20    # "bin":I
    .local v21, "bin":I
    const/4 v12, 0x5

    move/from16 v13, v21

    if-ge v13, v12, :cond_0

    .line 74
    .end local v21    # "bin":I
    .local v13, "bin":I
    nop

    .line 75
    invoke-virtual {v2, v13, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v20

    const-wide/16 v16, 0x3e8

    div-long v2, v20, v16

    .line 76
    .local v2, "batchScanTimeMs":J
    long-to-double v4, v2

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    .end local v2    # "batchScanTimeMs":J
    .local v22, "batchScanTimeMs":J
    mul-double/2addr v4, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v2

    .line 77
    .local v4, "batchScanPower":D
    add-double/2addr v14, v4

    .line 73
    .end local v4    # "batchScanPower":D
    .end local v22    # "batchScanTimeMs":J
    add-int/lit8 v20, v13, 0x1

    .end local v13    # "bin":I
    .restart local v20    # "bin":I
    move-wide v12, v2

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    goto :goto_0

    .line 80
    .end local v20    # "bin":I
    :cond_0
    add-double v2, v6, v8

    add-double/2addr v2, v10

    add-double/2addr v2, v14

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 85
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 6
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .line 90
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 92
    .local v0, "totalRunningTimeMs":J
    iget-wide v2, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    .line 94
    .local v2, "powerDrain":D
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 95
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 96
    return-void
.end method

.method public reset()V
    .locals 2

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 101
    return-void
.end method
