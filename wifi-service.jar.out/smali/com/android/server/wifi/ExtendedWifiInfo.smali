.class public Lcom/android/server/wifi/ExtendedWifiInfo;
.super Landroid/net/wifi/WifiInfo;
.source "ExtendedWifiInfo.java"


# static fields
.field private static final FILTER_TIME_CONSTANT:D = 3000.0

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field private static final SOURCE_LLSTATS:I = 0x2

.field private static final SOURCE_TRAFFIC_COUNTERS:I = 0x1

.field private static final SOURCE_UNKNOWN:I


# instance fields
.field private mEnableConnectedMacRandomization:Z

.field private mLastPacketCountUpdateTimeStamp:J

.field private mLastSource:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastSource:I

    .line 33
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 34
    iput-boolean v0, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mEnableConnectedMacRandomization:Z

    return-void
.end method

.method private update(IJJJJJ)V
    .locals 20
    .param p1, "source"    # I
    .param p2, "txgood"    # J
    .param p4, "txretries"    # J
    .param p6, "txbad"    # J
    .param p8, "rxgood"    # J
    .param p10, "timeStamp"    # J

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 70
    move-wide/from16 v10, p10

    iget v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastSource:I

    if-ne v1, v12, :cond_0

    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    cmp-long v12, v12, v10

    if-gez v12, :cond_0

    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBad:J

    cmp-long v12, v12, v6

    if-gtz v12, :cond_0

    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccess:J

    cmp-long v12, v12, v2

    if-gtz v12, :cond_0

    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccess:J

    cmp-long v12, v12, v8

    if-gtz v12, :cond_0

    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetries:J

    cmp-long v12, v12, v4

    if-gtz v12, :cond_0

    .line 77
    iget-wide v12, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    sub-long v12, v10, v12

    .line 78
    .local v12, "timeDelta":J
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    long-to-double v10, v12

    mul-double/2addr v14, v10

    const-wide v10, 0x40a7700000000000L    # 3000.0

    div-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    .line 79
    .local v10, "lastSampleWeight":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    .line 81
    .local v14, "currentSampleWeight":D
    iget-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    mul-double/2addr v4, v10

    iget-wide v8, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBad:J

    sub-long v8, v6, v8

    long-to-double v8, v8

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v8, v8, v16

    long-to-double v6, v12

    div-double/2addr v8, v6

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    .line 84
    iget-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    mul-double/2addr v4, v10

    iget-wide v6, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccess:J

    sub-long v6, v2, v6

    long-to-double v6, v6

    mul-double v6, v6, v16

    long-to-double v8, v12

    div-double/2addr v6, v8

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    .line 87
    iget-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    mul-double/2addr v4, v10

    iget-wide v6, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccess:J

    move-wide/from16 v8, p8

    sub-long v6, v8, v6

    long-to-double v6, v6

    mul-double v6, v6, v16

    long-to-double v8, v12

    div-double/2addr v6, v8

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    .line 90
    iget-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    mul-double/2addr v4, v10

    iget-wide v6, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetries:J

    move-wide/from16 v8, p4

    sub-long v6, v8, v6

    long-to-double v6, v6

    mul-double v6, v6, v16

    move-wide/from16 v18, v10

    long-to-double v10, v12

    .end local v10    # "lastSampleWeight":D
    .local v18, "lastSampleWeight":D
    div-double/2addr v6, v10

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    .line 93
    .end local v12    # "timeDelta":J
    .end local v14    # "currentSampleWeight":D
    .end local v18    # "lastSampleWeight":D
    goto :goto_0

    .line 94
    :cond_0
    move-wide v8, v4

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBadRate:D

    .line 95
    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccessRate:D

    .line 96
    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccessRate:D

    .line 97
    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetriesRate:D

    .line 98
    iput v1, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastSource:I

    .line 100
    :goto_0
    move-wide/from16 v4, p6

    iput-wide v4, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txBad:J

    .line 101
    iput-wide v2, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txSuccess:J

    .line 102
    move-wide/from16 v6, p8

    iput-wide v6, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->rxSuccess:J

    .line 103
    iput-wide v8, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->txRetries:J

    .line 104
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 105
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/net/wifi/WifiInfo;->reset()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastSource:I

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 41
    iget-boolean v0, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mEnableConnectedMacRandomization:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/ExtendedWifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setEnableConnectedMacRandomization(Z)V
    .locals 0
    .param p1, "enableConnectedMacRandomization"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/android/server/wifi/ExtendedWifiInfo;->mEnableConnectedMacRandomization:Z

    .line 114
    return-void
.end method

.method public updatePacketRates(JJJ)V
    .locals 12
    .param p1, "txPackets"    # J
    .param p3, "rxPackets"    # J
    .param p5, "timeStamp"    # J

    .line 65
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wifi/ExtendedWifiInfo;->update(IJJJJJ)V

    .line 66
    return-void
.end method

.method public updatePacketRates(Lcom/android/server/wifi/WifiLinkLayerStats;J)V
    .locals 21
    .param p1, "stats"    # Lcom/android/server/wifi/WifiLinkLayerStats;
    .param p2, "timeStamp"    # J

    move-object/from16 v0, p1

    .line 53
    iget-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-wide v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    add-long/2addr v1, v3

    .line 54
    .local v1, "txgood":J
    iget-wide v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_be:J

    iget-wide v5, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_bk:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_vi:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_vo:J

    add-long/2addr v3, v5

    .line 55
    .local v3, "txretries":J
    iget-wide v5, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v7, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    add-long v17, v5, v7

    .line 56
    .local v17, "txbad":J
    iget-wide v5, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v7, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    add-long v19, v5, v7

    .line 57
    .local v19, "rxgood":J
    const/4 v6, 0x2

    move-object/from16 v5, p0

    move-wide v7, v1

    move-wide v9, v3

    move-wide/from16 v11, v17

    move-wide/from16 v13, v19

    move-wide/from16 v15, p2

    invoke-direct/range {v5 .. v16}, Lcom/android/server/wifi/ExtendedWifiInfo;->update(IJJJJJ)V

    .line 58
    return-void
.end method
