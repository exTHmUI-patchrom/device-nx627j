.class public Lcom/android/server/wifi/scanner/ScanScheduleUtil;
.super Ljava/lang/Object;
.source "ScanScheduleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bucketEquals(Lcom/android/server/wifi/WifiNative$BucketSettings;Lcom/android/server/wifi/WifiNative$BucketSettings;)Z
    .locals 5
    .param p0, "bucket1"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p1, "bucket2"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 52
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 55
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    if-eq v2, v3, :cond_2

    return v0

    .line 56
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-eq v2, v3, :cond_3

    return v0

    .line 57
    :cond_3
    iget v2, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    if-eq v2, v3, :cond_4

    return v0

    .line 58
    :cond_4
    iget v2, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    if-eq v2, v3, :cond_5

    return v0

    .line 59
    :cond_5
    iget v2, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-eq v2, v3, :cond_6

    return v0

    .line 60
    :cond_6
    move v2, v0

    .local v2, "c":I
    :goto_0
    iget v3, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-ge v2, v3, :cond_8

    .line 61
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->channelEquals(Lcom/android/server/wifi/WifiNative$ChannelSettings;Lcom/android/server/wifi/WifiNative$ChannelSettings;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 62
    return v0

    .line 60
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "c":I
    :cond_8
    return v1

    .line 52
    :cond_9
    :goto_1
    return v0
.end method

.method public static channelEquals(Lcom/android/server/wifi/WifiNative$ChannelSettings;Lcom/android/server/wifi/WifiNative$ChannelSettings;)Z
    .locals 4
    .param p0, "channel1"    # Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .param p1, "channel2"    # Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 39
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 42
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-eq v2, v3, :cond_2

    return v0

    .line 43
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->dwell_time_ms:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->dwell_time_ms:I

    if-eq v2, v3, :cond_3

    return v0

    .line 44
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->passive:Z

    iget-boolean v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->passive:Z

    if-ne v2, v3, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0

    .line 39
    :cond_5
    :goto_0
    return v0
.end method

.method public static filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 12
    .param p0, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p1, "scanDatas"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "scheduledBucket"    # I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v0, "filteredScanDatas":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "filteredResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, p1, v4

    .line 158
    .local v5, "scanData":Landroid/net/wifi/WifiScanner$ScanData;
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getBucketsScanned()I

    move-result v6

    invoke-static {p3, v6}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketMaybeScanned(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 159
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 160
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 161
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    iget v10, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, p2, v10}, Lcom/android/server/wifi/scanner/ChannelHelper;->settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 162
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    iget v10, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-lez v10, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    iget v11, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-lt v10, v11, :cond_1

    .line 166
    goto :goto_2

    .line 160
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 172
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_3

    .line 173
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 174
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 175
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getBucketsScanned()I

    move-result v6

    .line 174
    invoke-static {p3, v6}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketDefinitlyScanned(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    :cond_4
    new-instance v6, Landroid/net/wifi/WifiScanner$ScanData;

    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getId()I

    move-result v7

    .line 177
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getFlags()I

    move-result v8

    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/net/wifi/ScanResult;

    .line 178
    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/wifi/ScanResult;

    invoke-direct {v6, v7, v8, v9}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    .line 176
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v5    # "scanData":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 184
    const/4 v2, 0x0

    return-object v2

    .line 186
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/wifi/WifiScanner$ScanData;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v2
.end method

.method private static isBucketDefinitlyScanned(II)Z
    .locals 3
    .param p0, "scheduledBucket"    # I
    .param p1, "bucketsScannedBitSet"    # I

    .line 118
    const/4 v0, 0x1

    if-gez p0, :cond_0

    .line 119
    return v0

    .line 120
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 121
    return v1

    .line 123
    :cond_1
    shl-int v2, v0, p0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private static isBucketMaybeScanned(II)Z
    .locals 2
    .param p0, "scheduledBucket"    # I
    .param p1, "bucketsScannedBitSet"    # I

    .line 102
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-gez p0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    shl-int v1, v0, p0

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 103
    :cond_2
    :goto_1
    return v0
.end method

.method public static scheduleEquals(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanSettings;)Z
    .locals 5
    .param p0, "schedule1"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p1, "schedule2"    # Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 74
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 77
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    if-eq v2, v3, :cond_2

    return v0

    .line 78
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-eq v2, v3, :cond_3

    return v0

    .line 79
    :cond_3
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    if-eq v2, v3, :cond_4

    return v0

    .line 80
    :cond_4
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    if-eq v2, v3, :cond_5

    .line 81
    return v0

    .line 83
    :cond_5
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-eq v2, v3, :cond_6

    return v0

    .line 84
    :cond_6
    move v2, v0

    .local v2, "b":I
    :goto_0
    iget v3, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v2, v3, :cond_8

    .line 85
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->bucketEquals(Lcom/android/server/wifi/WifiNative$BucketSettings;Lcom/android/server/wifi/WifiNative$BucketSettings;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 86
    return v0

    .line 84
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "b":I
    :cond_8
    return v1

    .line 74
    :cond_9
    :goto_1
    return v0
.end method

.method public static shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 1
    .param p0, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "scheduledBucket"    # I

    .line 133
    invoke-static {p4, p2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketMaybeScanned(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v0

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
