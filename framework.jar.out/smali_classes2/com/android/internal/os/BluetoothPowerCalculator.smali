.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private mAppTotalPowerMah:D

.field private mAppTotalTimeMs:J

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 31
    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 32
    const-string v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 33
    const-string v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 34
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 26
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 40
    move/from16 v3, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    .line 41
    .local v4, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-nez v4, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 46
    .local v5, "idleTimeMs":J
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 47
    .local v7, "rxTimeMs":J
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 48
    .local v9, "txTimeMs":J
    add-long v11, v5, v9

    add-long/2addr v11, v7

    .line 49
    .local v11, "totalTimeMs":J
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x414b774000000000L    # 3600000.0

    div-double/2addr v13, v15

    .line 52
    .local v13, "powerMah":D
    const-wide/16 v17, 0x0

    cmpl-double v17, v13, v17

    if-nez v17, :cond_1

    .line 53
    move-wide/from16 v19, v13

    long-to-double v13, v5

    .end local v13    # "powerMah":D
    .local v19, "powerMah":D
    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .end local v4    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v5    # "idleTimeMs":J
    .local v21, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .local v22, "idleTimeMs":J
    mul-double/2addr v13, v4

    long-to-double v4, v7

    move-wide/from16 v24, v7

    iget-wide v6, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .end local v7    # "rxTimeMs":J
    .local v24, "rxTimeMs":J
    mul-double/2addr v4, v6

    add-double/2addr v13, v4

    long-to-double v4, v9

    iget-wide v6, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v4, v6

    add-double/2addr v13, v4

    div-double/2addr v13, v15

    .end local v19    # "powerMah":D
    .restart local v13    # "powerMah":D
    goto :goto_0

    .line 57
    .end local v21    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v22    # "idleTimeMs":J
    .end local v24    # "rxTimeMs":J
    .restart local v4    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .restart local v5    # "idleTimeMs":J
    .restart local v7    # "rxTimeMs":J
    :cond_1
    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-wide/from16 v19, v13

    .end local v4    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v5    # "idleTimeMs":J
    .end local v7    # "rxTimeMs":J
    .restart local v21    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .restart local v22    # "idleTimeMs":J
    .restart local v24    # "rxTimeMs":J
    :goto_0
    iput-wide v13, v1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 58
    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 59
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 60
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 62
    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    add-double/2addr v4, v13

    iput-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 63
    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    add-long/2addr v4, v11

    iput-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 64
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 20
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    move/from16 v2, p7

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 72
    .local v3, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 73
    .local v4, "idleTimeMs":J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    .line 74
    .local v6, "txTimeMs":J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    .line 75
    .local v8, "rxTimeMs":J
    add-long v10, v4, v6

    add-long/2addr v10, v8

    .line 76
    .local v10, "totalTimeMs":J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    .line 79
    .local v12, "powerMah":D
    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-nez v16, :cond_0

    .line 81
    long-to-double v14, v4

    move-object/from16 v17, v3

    iget-wide v2, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .end local v3    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .local v17, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    mul-double/2addr v14, v2

    long-to-double v2, v8

    move-wide/from16 v18, v4

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .end local v4    # "idleTimeMs":J
    .local v18, "idleTimeMs":J
    mul-double/2addr v2, v4

    add-double/2addr v14, v2

    long-to-double v2, v6

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v14, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v12, v14, v2

    goto :goto_0

    .line 86
    .end local v17    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v18    # "idleTimeMs":J
    .restart local v3    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .restart local v4    # "idleTimeMs":J
    :cond_0
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    .end local v3    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v4    # "idleTimeMs":J
    .restart local v17    # "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    .restart local v18    # "idleTimeMs":J
    :goto_0
    iget-wide v2, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    sub-double v2, v12, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 93
    .end local v12    # "powerMah":D
    .local v2, "powerMah":D
    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 94
    const-wide/16 v4, 0x0

    iget-wide v12, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    sub-long v12, v10, v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 95
    return-void
.end method

.method public reset()V
    .locals 2

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 101
    return-void
.end method
