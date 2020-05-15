.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private mTotalAppRunningTime:J

.field private final mTxCurrentMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 35
    const-string/jumbo v0, "wifi.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    .line 36
    const-string/jumbo v0, "wifi.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .line 37
    const-string/jumbo v0, "wifi.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    .line 38
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 18
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 43
    move/from16 v3, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    .line 44
    .local v4, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-nez v4, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 49
    .local v5, "idleTime":J
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 50
    .local v7, "txTime":J
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 51
    .local v9, "rxTime":J
    add-long v11, v5, v9

    add-long/2addr v11, v7

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 52
    iget-wide v11, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    iget-wide v13, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 54
    long-to-double v11, v5

    iget-wide v13, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v11, v13

    long-to-double v13, v7

    move-object v15, v4

    move-wide/from16 v16, v5

    iget-wide v4, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .end local v4    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v5    # "idleTime":J
    .local v15, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .local v16, "idleTime":J
    mul-double/2addr v13, v4

    add-double/2addr v11, v13

    long-to-double v4, v9

    iget-wide v13, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v4, v13

    add-double/2addr v11, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v11, v4

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 57
    iget-wide v4, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    iget-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v4, v11

    iput-wide v4, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 59
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 61
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 63
    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 65
    invoke-virtual {v2, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 72
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 77
    move/from16 v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 79
    .local v3, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 80
    .local v4, "idleTimeMs":J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    .line 81
    .local v6, "txTimeMs":J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    .line 83
    .local v8, "rxTimeMs":J
    add-long v10, v4, v8

    add-long/2addr v10, v6

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 86
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v10, v12

    .line 88
    .local v10, "powerDrainMah":D
    const-wide/16 v14, 0x0

    cmpl-double v16, v10, v14

    if-nez v16, :cond_0

    .line 90
    long-to-double v14, v4

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v14, v12

    long-to-double v12, v6

    move-object/from16 v17, v3

    iget-wide v2, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .end local v3    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .local v17, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    mul-double/2addr v12, v2

    add-double/2addr v14, v12

    long-to-double v2, v8

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v2, v12

    add-double/2addr v14, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v10, v14, v2

    goto :goto_0

    .line 93
    .end local v17    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .restart local v3    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    :cond_0
    move-object/from16 v17, v3

    .end local v3    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .restart local v17    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    :goto_0
    iget-wide v2, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    sub-double v2, v10, v2

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 98
    return-void
.end method

.method public reset()V
    .locals 2

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 104
    return-void
.end method
