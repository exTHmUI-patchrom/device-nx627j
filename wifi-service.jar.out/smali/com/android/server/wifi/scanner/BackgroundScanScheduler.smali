.class public Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;,
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_MAX_AP_PER_SCAN:I = 0x20

.field public static final DEFAULT_MAX_BUCKETS:I = 0x8

.field public static final DEFAULT_MAX_CHANNELS_PER_BUCKET:I = 0x10

.field public static final DEFAULT_MAX_SCANS_TO_BATCH:I = 0xa

.field private static final DEFAULT_PERIOD_MS:I = 0x7530

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENTAGE:I = 0x64

.field private static final EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

.field private static final NUM_OF_REGULAR_BUCKETS:I

.field private static final PERIOD_MIN_GCD_MS:I = 0x2710

.field private static final PREDEFINED_BUCKET_PERIODS:[I

.field private static final TAG:Ljava/lang/String; = "BackgroundScanScheduler"


# instance fields
.field private final mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private mMaxApPerScan:I

.field private mMaxBatch:I

.field private mMaxBuckets:I

.field private mMaxChannelsPerBucket:I

.field private mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mSettingsToScheduledBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    .line 121
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    .line 123
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    return-void

    :array_0
    .array-data 4
        0x7530
        0x1d4c0
        0x75300
        0x2710
        0xea60
        0x1d4c00
        0x3a980
        0xea600
        0x3a9800
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V
    .locals 2
    .param p1, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    .line 324
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    .line 325
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    .line 326
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    .line 362
    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    .line 369
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    .line 371
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 60
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    return v0
.end method

.method static synthetic access$200(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 60
    invoke-static {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 60
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 60
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    return v0
.end method

.method private addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 495
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v0, v1, :cond_0

    .line 497
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    .local v0, "bucketIndex":I
    goto :goto_0

    .line 499
    .end local v0    # "bucketIndex":I
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    sget v1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v0

    .line 502
    .restart local v0    # "bucketIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 503
    return-void
.end method

.method private cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 2
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 554
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 555
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 556
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 557
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 558
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 559
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 560
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 561
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 562
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 563
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 564
    return-object v0
.end method

.method private compactBuckets(I)V
    .locals 6
    .param p1, "maxBuckets"    # I

    .line 531
    move v0, p1

    .line 535
    .local v0, "maxRegularBuckets":I
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    sget v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    add-int/lit8 v0, v0, -0x1

    .line 538
    :cond_0
    sget v1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    add-int/lit8 v1, v1, -0x1

    .line 539
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getActiveRegularBucketCount()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 540
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 542
    .local v3, "scanRequest":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-static {v4, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v4

    .line 543
    .local v4, "newBucketIndex":I
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 544
    .end local v3    # "scanRequest":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v4    # "newBucketIndex":I
    goto :goto_1

    .line 545
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clear(I)V

    .line 539
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    .line 572
    .local p2, "currentBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    .line 575
    .local v0, "currentBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 576
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, "chanIdx":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 579
    .local v3, "channel":Ljava/lang/Integer;
    iget-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v5, v1, 0x1

    .local v5, "chanIdx":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v4, v1

    .line 580
    .end local v1    # "chanIdx":I
    .end local v3    # "channel":Ljava/lang/Integer;
    nop

    .line 578
    move v1, v5

    goto :goto_0

    .line 581
    .end local v5    # "chanIdx":I
    .restart local v1    # "chanIdx":I
    :cond_0
    return-object v0
.end method

.method private createSchedule(Ljava/util/List;I)V
    .locals 9
    .param p2, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;I)V"
        }
    .end annotation

    .line 437
    .local p1, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    .line 438
    .local v0, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 439
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput-object v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 441
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 442
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBatch()I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 445
    const/4 v2, 0x0

    .line 446
    .local v2, "bucketId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 447
    .local v4, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 448
    invoke-virtual {v4, v2, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;

    move-result-object v6

    aput-object v6, v5, v2

    .line 449
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 451
    .local v6, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iget v8, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-le v7, v8, :cond_0

    .line 452
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v7, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 455
    :cond_0
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-eqz v7, :cond_1

    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iget v8, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    if-ge v7, v8, :cond_1

    .line 457
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v7, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 459
    .end local v6    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_1
    goto :goto_1

    .line 460
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 461
    .end local v4    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    goto :goto_0

    .line 463
    :cond_3
    const/16 v3, 0x64

    iput v3, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    .line 465
    iget v3, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 466
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    move-result v3

    iput v3, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 470
    :cond_5
    iget v3, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-lez v3, :cond_8

    .line 471
    iget-object v3, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v1, v3, v1

    iget v1, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 472
    .local v1, "gcd":I
    const/4 v3, 0x1

    .local v3, "b":I
    :goto_2
    iget v4, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v3, v4, :cond_6

    .line 473
    iget-object v4, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    invoke-static {v4, v1}, Landroid/util/Rational;->gcd(II)I

    move-result v1

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 476
    .end local v3    # "b":I
    :cond_6
    const/16 v3, 0x2710

    if-ge v1, v3, :cond_7

    .line 477
    const-string v3, "BackgroundScanScheduler"

    const-string v4, "found gcd less than min gcd"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v1, 0x2710

    .line 481
    :cond_7
    iput v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 482
    .end local v1    # "gcd":I
    goto :goto_3

    .line 483
    :cond_8
    const/16 v1, 0x7530

    iput v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 486
    :goto_3
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 487
    return-void
.end method

.method private createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "originalBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .line 783
    .local p2, "channelSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v0, "splitBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v1, 0x0

    .line 786
    .local v1, "channelSetIdx":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 788
    .local v3, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 791
    move-object v4, p1

    .local v4, "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    goto :goto_1

    .line 793
    .end local v4    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_0
    new-instance v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V

    .line 795
    .restart local v4    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v5

    .line 796
    .local v5, "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    .line 797
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 798
    .local v7, "channel":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    .line 799
    .end local v7    # "channel":Ljava/lang/Integer;
    goto :goto_2

    .line 800
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 801
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    .end local v3    # "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v5    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    goto :goto_0

    .line 803
    :cond_2
    return-object v0
.end method

.method private createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;
    .locals 5
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "targetBucketChannelCol"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .line 614
    nop

    .line 615
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getMissingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    move-result-object v0

    .line 616
    .local v0, "currentBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    nop

    .line 617
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getContainingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    move-result-object v1

    .line 619
    .local v1, "targetBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    nop

    .line 620
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v2

    .line 621
    .local v2, "currentBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    nop

    .line 622
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v3

    .line 623
    .local v3, "targetBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    .line 591
    .local p2, "targetBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    .line 594
    .local v0, "targetBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 595
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, "chanIdx":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 598
    .local v3, "channel":Ljava/lang/Integer;
    iget-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v5, v1, 0x1

    .local v5, "chanIdx":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v4, v1

    .line 599
    .end local v1    # "chanIdx":I
    .end local v3    # "channel":Ljava/lang/Integer;
    nop

    .line 597
    move v1, v5

    goto :goto_0

    .line 600
    .end local v5    # "chanIdx":I
    .restart local v1    # "chanIdx":I
    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x6

    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 604
    return-object v0
.end method

.method private static findBestRegularBucketIndex(II)I
    .locals 5
    .param p0, "requestedPeriod"    # I
    .param p1, "maxNumBuckets"    # I

    .line 509
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 510
    const/4 v0, -0x1

    .line 511
    .local v0, "index":I
    const v1, 0x7fffffff

    .line 512
    .local v1, "minDiff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 513
    sget-object v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    aget v3, v3, v2

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 514
    .local v3, "diff":I
    if-ge v3, v1, :cond_0

    .line 515
    move v1, v3

    .line 516
    move v0, v2

    .line 512
    .end local v3    # "diff":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 520
    const-string v2, "BackgroundScanScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find best bucket for period "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " buckets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_2
    return v0
.end method

.method private fixBuckets(Ljava/util/List;II)Ljava/util/List;
    .locals 11
    .param p2, "maxBuckets"    # I
    .param p3, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .line 814
    .local p1, "originalBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v0, "fixedBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 817
    .local v1, "totalNumBuckets":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 818
    .local v3, "originalBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v4

    .line 819
    .local v4, "channelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getChannelSet()Ljava/util/Set;

    move-result-object v5

    .line 820
    .local v5, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, p3, :cond_2

    .line 821
    nop

    .line 822
    invoke-direct {p0, v5, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v6

    .line 823
    .local v6, "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    .line 824
    .local v7, "newTotalNumBuckets":I
    if-gt v7, p2, :cond_1

    .line 825
    invoke-direct {p0, v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 826
    .local v8, "splitBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 827
    .local v10, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v10    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    goto :goto_1

    .line 829
    :cond_0
    move v1, v7

    .line 830
    .end local v8    # "splitBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    goto :goto_2

    .line 831
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    .end local v6    # "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v7    # "newTotalNumBuckets":I
    :goto_2
    goto :goto_3

    .line 834
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    .end local v3    # "originalBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v4    # "channelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v5    # "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_3
    goto :goto_0

    .line 837
    :cond_3
    return-object v0
.end method

.method private mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;
    .locals 7
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "currentBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/ListIterator<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .line 640
    .local p3, "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v0, 0x0

    .line 641
    .local v0, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x0

    .line 642
    .local v1, "wasMerged":Z
    move-object v2, v0

    move-object v0, p2

    .line 644
    .local v0, "maxScheduledBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .local v2, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 645
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 646
    .local v3, "targetBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v4

    .line 647
    .local v4, "targetBucketChannelCol":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 650
    move-object v0, v3

    .line 651
    const/4 v1, 0x1

    goto :goto_2

    .line 652
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->partiallyContainsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 654
    if-nez v2, :cond_1

    .line 655
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    move-result-object v5

    .local v5, "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    goto :goto_1

    .line 657
    .end local v5    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    nop

    .line 658
    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    move-result-object v5

    .line 660
    .restart local v5    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 663
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 664
    const/4 v1, 0x1

    .line 666
    .end local v3    # "targetBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v4    # "targetBucketChannelCol":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v5    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_2
    :goto_2
    goto :goto_0

    .line 669
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private optimizeBuckets()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 687
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getSortedActiveRegularBucketList()Ljava/util/List;

    move-result-object v0

    .line 688
    .local v0, "sortedBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 692
    .local v1, "iterBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v2, "currentBucketSplitSettingsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 701
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 702
    .local v3, "currentBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 704
    .local v4, "iterSettings":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 706
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 707
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 708
    .local v5, "currentSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    nop

    .line 709
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 711
    .local v6, "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    nop

    .line 712
    invoke-direct {p0, v5, v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;

    move-result-object v7

    .line 715
    .local v7, "mergeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 716
    .local v8, "wasMerged":Z
    if-eqz v8, :cond_0

    .line 718
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 719
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 720
    .local v9, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v9, :cond_0

    .line 722
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    .end local v5    # "currentSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v6    # "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    .end local v7    # "mergeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v8    # "wasMerged":Z
    .end local v9    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    goto :goto_1

    .line 727
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 728
    .local v6, "splitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 729
    .end local v6    # "splitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    goto :goto_2

    .line 730
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 731
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 734
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    .line 736
    .end local v3    # "currentBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v4    # "iterSettings":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_3
    goto :goto_0

    .line 739
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    sget v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 740
    iget-object v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    sget v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v3

    .line 741
    .local v3, "exponentialBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 742
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    goto :goto_4

    .line 744
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    .end local v3    # "exponentialBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_6
    return-object v0
.end method

.method private partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .param p2, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 756
    .local p1, "originalChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v0, "channelSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 758
    .local v1, "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 760
    .local v2, "iterChannels":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 763
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v3

    goto :goto_0

    .line 768
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 769
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_2
    return-object v0
.end method


# virtual methods
.method public filterResultsForSettings([Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2
    .param p1, "scanDatas"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 416
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 417
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    .line 416
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApPerScan()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    return v0
.end method

.method public getMaxBatch()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    return v0
.end method

.method public getMaxBuckets()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    return v0
.end method

.method public getMaxChannelsPerBucket()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    return v0
.end method

.method public getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method public getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 424
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 425
    .local v0, "maxScheduledBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    if-eqz v0, :cond_0

    .line 426
    iget v1, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    return v1

    .line 428
    :cond_0
    const-string v1, "BackgroundScanScheduler"

    const-string v2, "No bucket found for settings"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, -0x1

    return v1
.end method

.method public setMaxApPerScan(I)V
    .locals 0
    .param p1, "maxApPerScan"    # I

    .line 359
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    .line 360
    return-void
.end method

.method public setMaxBatch(I)V
    .locals 0
    .param p1, "maxBatch"    # I

    .line 351
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    .line 352
    return-void
.end method

.method public setMaxBuckets(I)V
    .locals 0
    .param p1, "maxBuckets"    # I

    .line 333
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    .line 334
    return-void
.end method

.method public setMaxChannelsPerBucket(I)V
    .locals 0
    .param p1, "maxChannels"    # I

    .line 342
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    .line 343
    return-void
.end method

.method public shouldReportFullScanResultForSettings(Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 406
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 407
    invoke-virtual {p0, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    .line 406
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v0

    return v0
.end method

.method public updateSchedule(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clearAll()V

    .line 379
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 380
    .local v1, "request":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 381
    .end local v1    # "request":Landroid/net/wifi/WifiScanner$ScanSettings;
    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->compactBuckets(I)V

    .line 385
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->optimizeBuckets()Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    nop

    .line 388
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->fixBuckets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "fixedBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    .line 391
    return-void
.end method
