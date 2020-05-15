.class public Lcom/android/server/wifi/WifiScoreReport;
.super Ljava/lang/Object;
.source "WifiScoreReport.java"


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xe10

.field public static final DUMP_ARG:Ljava/lang/String; = "WifiScoreReport"

.field private static final FIRST_REASONABLE_WALL_CLOCK:J = 0x15aeaebb400L

.field private static final NUD_THROTTLE_MILLIS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "WifiScoreReport"

.field private static final TIME_CONSTANT_MILLIS:D = 30000.0


# instance fields
.field mAggressiveConnectedScore:Lcom/android/server/wifi/ConnectedScore;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mLastKnownNudCheckScore:I

.field private mLastKnownNudCheckTimeMillis:J

.field private mLinkMetricsHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNudCount:I

.field private mNudYes:I

.field private mScore:I

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private mSessionNumber:I

.field mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    .line 43
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mScore:I

    .line 47
    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mSessionNumber:I

    .line 161
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckTimeMillis:J

    .line 162
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckScore:I

    .line 163
    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mNudYes:I

    .line 164
    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mNudCount:I

    .line 223
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/WifiScoreReport;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/WifiScoreReport;->mClock:Lcom/android/server/wifi/Clock;

    .line 55
    new-instance v0, Lcom/android/server/wifi/AggressiveConnectedScore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/AggressiveConnectedScore;-><init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mAggressiveConnectedScore:Lcom/android/server/wifi/ConnectedScore;

    .line 56
    new-instance v0, Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/VelocityBasedConnectedScore;-><init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    .line 57
    return-void
.end method

.method private logLinkMetrics(Landroid/net/wifi/WifiInfo;JIIII)V
    .locals 29
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "now"    # J
    .param p4, "netId"    # I
    .param p5, "s1"    # I
    .param p6, "s2"    # I
    .param p7, "score"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 230
    const-wide v5, 0x15aeaebb400L

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    int-to-double v5, v0

    .line 232
    .local v5, "rssi":D
    iget-object v0, v1, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-virtual {v0}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->getFilteredRssi()D

    move-result-wide v7

    .line 233
    .local v7, "filteredRssi":D
    iget-object v0, v1, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-virtual {v0}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->getAdjustedRssiThreshold()D

    move-result-wide v9

    .line 234
    .local v9, "rssiThreshold":D
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    .line 235
    .local v11, "freq":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    .line 236
    .local v12, "linkSpeed":I
    iget-wide v13, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 237
    .local v13, "txSuccessRate":D
    move-wide v15, v13

    iget-wide v13, v2, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 238
    .local v13, "txRetriesRate":D
    .local v15, "txSuccessRate":D
    move-wide/from16 v17, v13

    iget-wide v13, v2, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 239
    .local v13, "txBadRate":D
    .local v17, "txRetriesRate":D
    move-wide/from16 v19, v13

    iget-wide v13, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 242
    .local v13, "rxSuccessRate":D
    .local v19, "txBadRate":D
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "timestamp":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s,%d,%d,%.1f,%.1f,%.1f,%d,%d,%.2f,%.2f,%.2f,%.2f,%d,%d,%d,%d,%d"

    const/16 v4, 0x11

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v0, v4, v21

    const/16 v21, 0x1

    move-object/from16 v22, v0

    iget v0, v1, Lcom/android/server/wifi/WifiScoreReport;->mSessionNumber:I

    .line 245
    .end local v0    # "timestamp":Ljava/lang/String;
    .local v22, "timestamp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v21

    const/4 v0, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v0

    const/4 v0, 0x3

    .line 246
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v4, v0

    const/4 v0, 0x4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v4, v0

    const/4 v0, 0x5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v4, v0

    const/4 v0, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v0

    const/4 v0, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v0, 0x8

    .line 247
    move-wide/from16 v23, v5

    move-wide v5, v15

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .end local v15    # "txSuccessRate":D
    .local v5, "txSuccessRate":D
    .local v23, "rssi":D
    aput-object v15, v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v0, 0x9

    move-wide/from16 v25, v5

    move-wide/from16 v5, v17

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .end local v17    # "txRetriesRate":D
    .local v5, "txRetriesRate":D
    .local v25, "txSuccessRate":D
    aput-object v15, v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v0, 0xa

    move-wide/from16 v27, v5

    move-wide/from16 v5, v19

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .end local v19    # "txBadRate":D
    .local v5, "txBadRate":D
    .local v27, "txRetriesRate":D
    aput-object v15, v4, v0

    const/16 v0, 0xb

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v4, v0

    const/16 v0, 0xc

    iget v15, v1, Lcom/android/server/wifi/WifiScoreReport;->mNudYes:I

    .line 248
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v0

    const/16 v0, 0xd

    iget v15, v1, Lcom/android/server/wifi/WifiScoreReport;->mNudCount:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v0

    const/16 v0, 0xe

    .line 249
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v0

    const/16 v0, 0xf

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v0

    const/16 v0, 0x10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v0

    .line 243
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v22    # "timestamp":Ljava/lang/String;
    move-object v2, v0

    .line 253
    .local v2, "s":Ljava/lang/String;
    nop

    .line 252
    nop

    .line 254
    iget-object v3, v1, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    monitor-enter v3

    .line 255
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_0
    iget-object v0, v1, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v4, 0xe10

    if-le v0, v4, :cond_1

    .line 257
    iget-object v0, v1, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 259
    :cond_1
    monitor-exit v3

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 250
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v27    # "txRetriesRate":D
    .local v5, "txRetriesRate":D
    .restart local v19    # "txBadRate":D
    :catch_1
    move-exception v0

    move-wide/from16 v27, v5

    move-wide/from16 v5, v19

    .end local v19    # "txBadRate":D
    .local v5, "txBadRate":D
    .restart local v27    # "txRetriesRate":D
    goto :goto_1

    .end local v25    # "txSuccessRate":D
    .end local v27    # "txRetriesRate":D
    .local v5, "txSuccessRate":D
    .restart local v17    # "txRetriesRate":D
    .restart local v19    # "txBadRate":D
    :catch_2
    move-exception v0

    move-wide/from16 v25, v5

    move-wide/from16 v27, v17

    move-wide/from16 v5, v19

    .end local v17    # "txRetriesRate":D
    .end local v19    # "txBadRate":D
    .local v5, "txBadRate":D
    .restart local v25    # "txSuccessRate":D
    .restart local v27    # "txRetriesRate":D
    goto :goto_1

    .end local v23    # "rssi":D
    .end local v25    # "txSuccessRate":D
    .end local v27    # "txRetriesRate":D
    .local v5, "rssi":D
    .restart local v15    # "txSuccessRate":D
    .restart local v17    # "txRetriesRate":D
    .restart local v19    # "txBadRate":D
    :catch_3
    move-exception v0

    move-wide/from16 v23, v5

    move-wide/from16 v25, v15

    move-wide/from16 v27, v17

    move-wide/from16 v5, v19

    .line 251
    .end local v15    # "txSuccessRate":D
    .end local v17    # "txRetriesRate":D
    .end local v19    # "txBadRate":D
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "txBadRate":D
    .restart local v23    # "rssi":D
    .restart local v25    # "txSuccessRate":D
    .restart local v27    # "txRetriesRate":D
    :goto_1
    const-string v2, "WifiScoreReport"

    const-string v3, "format problem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    return-void
.end method


# virtual methods
.method public calculateAndReportScore(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiMetrics;)V
    .locals 17
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;
    .param p3, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, -0x7f

    if-ne v0, v1, :cond_0

    .line 93
    const-string v0, "WifiScoreReport"

    const-string v1, "Not reporting score because RSSI is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 98
    :cond_0
    iget-object v0, v8, Lcom/android/server/wifi/WifiScoreReport;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v11

    .line 99
    .local v11, "millis":J
    const/4 v0, 0x0

    .line 101
    .local v0, "netId":I
    if-eqz v10, :cond_1

    .line 102
    iget v0, v10, Landroid/net/NetworkAgent;->netId:I

    .line 105
    .end local v0    # "netId":I
    .local v13, "netId":I
    :cond_1
    move v13, v0

    iget-object v0, v8, Lcom/android/server/wifi/WifiScoreReport;->mAggressiveConnectedScore:Lcom/android/server/wifi/ConnectedScore;

    invoke-virtual {v0, v9, v11, v12}, Lcom/android/server/wifi/ConnectedScore;->updateUsingWifiInfo(Landroid/net/wifi/WifiInfo;J)V

    .line 106
    iget-object v0, v8, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-virtual {v0, v9, v11, v12}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->updateUsingWifiInfo(Landroid/net/wifi/WifiInfo;J)V

    .line 108
    iget-object v0, v8, Lcom/android/server/wifi/WifiScoreReport;->mAggressiveConnectedScore:Lcom/android/server/wifi/ConnectedScore;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConnectedScore;->generateScore()I

    move-result v14

    .line 109
    .local v14, "s1":I
    iget-object v0, v8, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-virtual {v0}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->generateScore()I

    move-result v15

    .line 111
    .local v15, "s2":I
    move v0, v15

    .line 113
    .local v0, "score":I
    iget v1, v9, Landroid/net/wifi/WifiInfo;->score:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    iget-wide v3, v9, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget-object v1, v8, Lcom/android/server/wifi/WifiScoreReport;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 115
    invoke-virtual {v1}, Lcom/android/server/wifi/ScoringParams;->getYippeeSkippyPacketsPerSecond()I

    move-result v1

    int-to-double v5, v1

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_2

    iget-wide v3, v9, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget-object v1, v8, Lcom/android/server/wifi/WifiScoreReport;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 116
    invoke-virtual {v1}, Lcom/android/server/wifi/ScoringParams;->getYippeeSkippyPacketsPerSecond()I

    move-result v1

    int-to-double v5, v1

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_2

    .line 117
    const/16 v0, 0x33

    .line 120
    :cond_2
    iget v1, v9, Landroid/net/wifi/WifiInfo;->score:I

    if-le v1, v2, :cond_4

    if-gt v0, v2, :cond_4

    .line 126
    iget-object v1, v8, Lcom/android/server/wifi/WifiScoreReport;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v1

    .line 127
    .local v1, "entry":I
    iget-object v2, v8, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-virtual {v2}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->getFilteredRssi()D

    move-result-wide v2

    int-to-double v4, v1

    cmpl-double v2, v2, v4

    if-gez v2, :cond_3

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 130
    :cond_3
    const/16 v0, 0x33

    .line 135
    .end local v1    # "entry":I
    :cond_4
    const/16 v1, 0x3c

    if-le v0, v1, :cond_5

    .line 136
    const/16 v0, 0x3c

    .line 138
    :cond_5
    if-gez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 142
    .end local v0    # "score":I
    .local v7, "score":I
    :cond_6
    move v7, v0

    move-object v0, v8

    move-object v1, v9

    move-wide v2, v11

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v16, v7

    .end local v7    # "score":I
    .local v16, "score":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiScoreReport;->logLinkMetrics(Landroid/net/wifi/WifiInfo;JIIII)V

    .line 145
    iget v0, v9, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v1, v16

    if-eq v1, v0, :cond_8

    .line 146
    .end local v16    # "score":I
    .local v1, "score":I
    iget-boolean v0, v8, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_7

    .line 147
    const-string v0, "WifiScoreReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report new wifi score "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_7
    iput v1, v9, Landroid/net/wifi/WifiInfo;->score:I

    .line 150
    if-eqz v10, :cond_8

    .line 151
    invoke-virtual {v10, v1}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    .line 155
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiScoreCount(I)V

    .line 156
    iput v1, v8, Lcom/android/server/wifi/WifiScoreReport;->mScore:I

    .line 157
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 276
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mLinkMetricsHistory:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 277
    .local v1, "history":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    const-string v0, "time,session,netid,rssi,filtered_rssi,rssi_threshold,freq,linkspeed,tx_good,tx_retry,tx_bad,rx_pps,nudrq,nuds,s1,s2,score"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 284
    return-void

    .line 277
    .end local v1    # "history":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    .line 76
    return-void
.end method

.method public noteIpCheck()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    .line 213
    .local v0, "millis":J
    iput-wide v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckTimeMillis:J

    .line 214
    iget v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mScore:I

    iput v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckScore:I

    .line 215
    iget v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mNudCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mNudCount:I

    .line 216
    return-void
.end method

.method public reset()V
    .locals 2

    .line 63
    iget v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mSessionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mSessionNumber:I

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mScore:I

    .line 65
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckScore:I

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mAggressiveConnectedScore:Lcom/android/server/wifi/ConnectedScore;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConnectedScore;->reset()V

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mVelocityBasedConnectedScore:Lcom/android/server/wifi/VelocityBasedConnectedScore;

    invoke-virtual {v0}, Lcom/android/server/wifi/VelocityBasedConnectedScore;->reset()V

    .line 68
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiScoreReport"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public shouldCheckIpLayer()Z
    .locals 17

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiScoreReport;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    invoke-virtual {v1}, Lcom/android/server/wifi/ScoringParams;->getNudKnob()I

    move-result v1

    .line 176
    .local v1, "nud":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 177
    return v2

    .line 179
    :cond_0
    iget-object v3, v0, Lcom/android/server/wifi/WifiScoreReport;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v3

    .line 180
    .local v3, "millis":J
    iget-wide v5, v0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckTimeMillis:J

    sub-long v5, v3, v5

    .line 183
    .local v5, "deltaMillis":J
    const-wide/16 v7, 0x1388

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    .line 184
    return v2

    .line 187
    :cond_1
    rsub-int/lit8 v7, v1, 0xb

    int-to-double v7, v7

    .line 189
    .local v7, "deltaLevel":D
    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    .line 193
    .local v9, "nextNudBreach":D
    iget v11, v0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckScore:I

    const/16 v12, 0x32

    if-ge v11, v12, :cond_2

    long-to-double v11, v5

    const-wide v13, 0x41024f8000000000L    # 150000.0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 195
    neg-long v11, v5

    long-to-double v11, v11

    const-wide v13, 0x40dd4c0000000000L    # 30000.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    .line 196
    .local v11, "a":D
    iget v13, v0, Lcom/android/server/wifi/WifiScoreReport;->mLastKnownNudCheckScore:I

    int-to-double v13, v13

    sub-double/2addr v13, v7

    mul-double/2addr v13, v11

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v15, v11

    mul-double/2addr v15, v9

    add-double v9, v13, v15

    .line 198
    .end local v11    # "a":D
    :cond_2
    iget v11, v0, Lcom/android/server/wifi/WifiScoreReport;->mScore:I

    int-to-double v11, v11

    cmpl-double v11, v11, v9

    if-ltz v11, :cond_3

    .line 199
    return v2

    .line 201
    :cond_3
    iget v2, v0, Lcom/android/server/wifi/WifiScoreReport;->mNudYes:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iput v2, v0, Lcom/android/server/wifi/WifiScoreReport;->mNudYes:I

    .line 202
    return v11
.end method
