.class public Lcom/android/server/wifi/VelocityBasedConnectedScore;
.super Lcom/android/server/wifi/ConnectedScore;
.source "VelocityBasedConnectedScore.java"


# instance fields
.field private mEstimatedRateOfRssiChange:D

.field private final mFilter:Lcom/android/server/wifi/util/KalmanFilter;

.field private mFilteredRssi:D

.field private mFrequency:I

.field private mLastMillis:J

.field private mMinimumPpsForMeasuringSuccess:D

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private mThresholdAdjustment:D


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V
    .locals 7
    .param p1, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;

    .line 38
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ConnectedScore;-><init>(Lcom/android/server/wifi/Clock;)V

    .line 32
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFrequency:I

    .line 138
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mMinimumPpsForMeasuringSuccess:D

    .line 39
    iput-object p1, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 40
    new-instance v0, Lcom/android/server/wifi/util/KalmanFilter;

    invoke-direct {v0}, Lcom/android/server/wifi/util/KalmanFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    new-instance v1, Lcom/android/server/wifi/util/Matrix;

    const/4 v2, 0x2

    new-array v3, v2, [D

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    iput-object v1, v0, Lcom/android/server/wifi/util/KalmanFilter;->mH:Lcom/android/server/wifi/util/Matrix;

    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    new-instance v1, Lcom/android/server/wifi/util/Matrix;

    const/4 v2, 0x1

    new-array v3, v2, [D

    const/4 v4, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    iput-object v1, v0, Lcom/android/server/wifi/util/KalmanFilter;->mR:Lcom/android/server/wifi/util/Matrix;

    .line 43
    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data
.end method

.method private adjustThreshold(Landroid/net/wifi/WifiInfo;)V
    .locals 14
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 150
    iget-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mThresholdAdjustment:D

    const-wide/high16 v2, -0x3fe4000000000000L    # -7.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilteredRssi:D

    invoke-virtual {p0}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->getAdjustedRssiThreshold()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    .line 152
    :cond_1
    iget-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mEstimatedRateOfRssiChange:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    return-void

    .line 153
    :cond_2
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 154
    .local v0, "txSuccessPps":D
    iget-wide v4, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 155
    .local v4, "rxSuccessPps":D
    iget-wide v6, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mMinimumPpsForMeasuringSuccess:D

    cmpg-double v6, v0, v6

    if-gez v6, :cond_3

    return-void

    .line 156
    :cond_3
    iget-wide v6, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mMinimumPpsForMeasuringSuccess:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    return-void

    .line 157
    :cond_4
    iget-wide v6, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 158
    .local v6, "txBadPps":D
    iget-wide v8, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 159
    .local v8, "txRetriesPps":D
    add-double v10, v0, v6

    add-double/2addr v10, v8

    div-double v10, v0, v10

    .line 160
    .local v10, "probabilityOfSuccessfulTx":D
    cmpl-double v2, v10, v2

    if-lez v2, :cond_5

    .line 162
    iget-wide v2, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mThresholdAdjustment:D

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v12

    iput-wide v2, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mThresholdAdjustment:D

    .line 164
    :cond_5
    return-void
.end method

.method private setDeltaTimeSeconds(D)V
    .locals 16
    .param p1, "dt"    # D

    move-object/from16 v0, p0

    .line 52
    iget-object v1, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    new-instance v2, Lcom/android/server/wifi/util/Matrix;

    const/4 v3, 0x4

    new-array v4, v3, [D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    const/4 v8, 0x1

    aput-wide p1, v4, v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    aput-wide v9, v4, v11

    const/4 v12, 0x3

    aput-wide v5, v4, v12

    invoke-direct {v2, v11, v4}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    iput-object v2, v1, Lcom/android/server/wifi/util/KalmanFilter;->mF:Lcom/android/server/wifi/util/Matrix;

    .line 53
    new-instance v1, Lcom/android/server/wifi/util/Matrix;

    new-array v2, v11, [D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, p1

    mul-double v4, v4, p1

    aput-wide v4, v2, v7

    aput-wide p1, v2, v8

    invoke-direct {v1, v8, v2}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    .line 54
    .local v1, "tG":Lcom/android/server/wifi/util/Matrix;
    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    .line 55
    .local v4, "stda":D
    iget-object v2, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    invoke-virtual {v1, v1}, Lcom/android/server/wifi/util/Matrix;->dotTranspose(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v6

    new-instance v13, Lcom/android/server/wifi/util/Matrix;

    new-array v3, v3, [D

    mul-double v14, v4, v4

    aput-wide v14, v3, v7

    aput-wide v9, v3, v8

    aput-wide v9, v3, v11

    mul-double v7, v4, v4

    aput-wide v7, v3, v12

    invoke-direct {v13, v11, v3}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    invoke-virtual {v6, v13}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/util/KalmanFilter;->mQ:Lcom/android/server/wifi/util/Matrix;

    .line 58
    return-void
.end method


# virtual methods
.method public generateScore()I
    .locals 12

    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v0, v0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    if-nez v0, :cond_0

    const/16 v0, 0x33

    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->getAdjustedRssiThreshold()D

    move-result-wide v0

    .line 173
    .local v0, "badRssi":D
    iget-object v2, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScoringParams;->getHorizonSeconds()I

    move-result v2

    int-to-double v2, v2

    .line 174
    .local v2, "horizonSeconds":D
    new-instance v4, Lcom/android/server/wifi/util/Matrix;

    iget-object v5, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v5, v5, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-direct {v4, v5}, Lcom/android/server/wifi/util/Matrix;-><init>(Lcom/android/server/wifi/util/Matrix;)V

    .line 175
    .local v4, "x":Lcom/android/server/wifi/util/Matrix;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v6

    .line 176
    .local v6, "filteredRssi":D
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->setDeltaTimeSeconds(D)V

    .line 177
    iget-object v8, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v8, v8, Lcom/android/server/wifi/util/KalmanFilter;->mF:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v8, v4}, Lcom/android/server/wifi/util/Matrix;->dot(Lcom/android/server/wifi/util/Matrix;)Lcom/android/server/wifi/util/Matrix;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v5, v5}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v8

    .line 179
    .local v8, "forecastRssi":D
    cmpl-double v5, v8, v6

    if-lez v5, :cond_1

    .line 180
    move-wide v8, v6

    .line 182
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    sub-double/2addr v10, v0

    double-to-int v5, v10

    add-int/lit8 v5, v5, 0x32

    .line 183
    .local v5, "score":I
    return v5
.end method

.method public getAdjustedRssiThreshold()D
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget v1, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFrequency:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScoringParams;->getExitRssi(I)I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mThresholdAdjustment:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getEstimatedRateOfRssiChange()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mEstimatedRateOfRssiChange:D

    return-wide v0
.end method

.method public getFilteredRssi()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilteredRssi:D

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mLastMillis:J

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mThresholdAdjustment:D

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    .line 67
    return-void
.end method

.method public updateUsingRssi(IJD)V
    .locals 15
    .param p1, "rssi"    # I
    .param p2, "millis"    # J
    .param p4, "standardDeviation"    # D

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    .line 81
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    return-void

    .line 82
    :cond_0
    iget-wide v6, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mLastMillis:J

    cmp-long v4, v6, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_2

    iget-wide v7, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mLastMillis:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v4, v4, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    if-nez v4, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    iget-wide v7, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mLastMillis:J

    sub-long v7, v2, v7

    long-to-double v7, v7

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v7, v9

    .line 88
    .local v7, "dt":D
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v4, v4, Lcom/android/server/wifi/util/KalmanFilter;->mR:Lcom/android/server/wifi/util/Matrix;

    mul-double v9, p4, p4

    invoke-virtual {v4, v6, v6, v9, v10}, Lcom/android/server/wifi/util/Matrix;->put(IID)V

    .line 89
    invoke-direct {v0, v7, v8}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->setDeltaTimeSeconds(D)V

    .line 90
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    invoke-virtual {v4}, Lcom/android/server/wifi/util/KalmanFilter;->predict()V

    .line 91
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    new-instance v9, Lcom/android/server/wifi/util/Matrix;

    new-array v10, v5, [D

    int-to-double v11, v1

    aput-wide v11, v10, v6

    invoke-direct {v9, v5, v10}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/util/KalmanFilter;->update(Lcom/android/server/wifi/util/Matrix;)V

    .end local v7    # "dt":D
    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    mul-double v7, v7, p4

    mul-double v7, v7, p4

    .line 84
    .local v7, "initialVariance":D
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    new-instance v9, Lcom/android/server/wifi/util/Matrix;

    const/4 v10, 0x2

    new-array v11, v10, [D

    int-to-double v12, v1

    aput-wide v12, v11, v6

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v5

    invoke-direct {v9, v5, v11}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    iput-object v9, v4, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    .line 85
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    new-instance v9, Lcom/android/server/wifi/util/Matrix;

    const/4 v11, 0x4

    new-array v11, v11, [D

    aput-wide v7, v11, v6

    aput-wide v12, v11, v5

    aput-wide v12, v11, v10

    const/4 v14, 0x3

    aput-wide v12, v11, v14

    invoke-direct {v9, v10, v11}, Lcom/android/server/wifi/util/Matrix;-><init>(I[D)V

    iput-object v9, v4, Lcom/android/server/wifi/util/KalmanFilter;->mP:Lcom/android/server/wifi/util/Matrix;

    .line 86
    .end local v7    # "initialVariance":D
    nop

    .line 93
    :goto_1
    iput-wide v2, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mLastMillis:J

    .line 94
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v4, v4, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v4, v6, v6}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilteredRssi:D

    .line 95
    iget-object v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFilter:Lcom/android/server/wifi/util/KalmanFilter;

    iget-object v4, v4, Lcom/android/server/wifi/util/KalmanFilter;->mx:Lcom/android/server/wifi/util/Matrix;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/util/Matrix;->get(II)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mEstimatedRateOfRssiChange:D

    .line 96
    return-void
.end method

.method public updateUsingWifiInfo(Landroid/net/wifi/WifiInfo;J)V
    .locals 9
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "millis"    # J

    .line 103
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 104
    .local v0, "frequency":I
    iget v1, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFrequency:I

    if-eq v0, v1, :cond_0

    .line 105
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mLastMillis:J

    .line 108
    iput v0, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mFrequency:I

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-wide v7, p0, Lcom/android/server/wifi/VelocityBasedConnectedScore;->mDefaultRssiStandardDeviation:D

    move-object v3, p0

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->updateUsingRssi(IJD)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->adjustThreshold(Landroid/net/wifi/WifiInfo;)V

    .line 112
    return-void
.end method
