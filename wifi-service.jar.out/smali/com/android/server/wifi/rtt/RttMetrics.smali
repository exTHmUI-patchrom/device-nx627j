.class public Lcom/android/server/wifi/rtt/RttMetrics;
.super Ljava/lang/Object;
.source "RttMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;,
        Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;
    }
.end annotation


# static fields
.field private static final COUNT_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

.field private static final DISTANCE_MM_HISTOGRAM:[I

.field private static final PEER_AP:I = 0x0

.field private static final PEER_AWARE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RttMetrics"

.field private static final VDBG:Z = false


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field mDbg:Z

.field private final mLock:Ljava/lang/Object;

.field private mNumStartRangingCalls:I

.field private mOverallStatusHistogram:Landroid/util/SparseIntArray;

.field private mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v6, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;-><init>(IIIII)V

    sput-object v6, Lcom/android/server/wifi/rtt/RttMetrics;->COUNT_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/rtt/RttMetrics;->DISTANCE_MM_HISTOGRAM:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1388
        0x3a98
        0x7530
        0xea60
        0x186a0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mDbg:Z

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mLock:Ljava/lang/Object;

    .line 83
    iput v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mNumStartRangingCalls:I

    .line 84
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mOverallStatusHistogram:Landroid/util/SparseIntArray;

    .line 88
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mClock:Lcom/android/server/wifi/Clock;

    .line 90
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    iput-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    .line 91
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    new-instance v2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V

    aput-object v2, v1, v0

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    new-instance v1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 93
    return-void
.end method

.method private consolidateIndividualStatus(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    .locals 4
    .param p1, "histogram"    # Landroid/util/SparseIntArray;

    .line 294
    nop

    .line 295
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    .line 297
    .local v0, "h":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;-><init>()V

    aput-object v2, v0, v1

    .line 299
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;->statusType:I

    .line 300
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;->count:I

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private consolidateNumPeersPerRequest(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 5
    .param p1, "data"    # Landroid/util/SparseIntArray;

    .line 307
    nop

    .line 308
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 310
    .local v0, "protoArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 311
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v0, v1

    .line 312
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    .line 313
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    .line 314
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private consolidateNumRequestsPerApp(Landroid/util/SparseArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;",
            ">;)[",
            "Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;"
        }
    .end annotation

    .line 322
    .local p1, "perUidInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;>;"
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 323
    .local v0, "histogramNumRequestsPerUid":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 324
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;

    iget v2, v2, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->numRequests:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/server/wifi/rtt/RttMetrics;->COUNT_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/android/server/wifi/rtt/RttMetrics;->COUNT_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v0, v1}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttMetrics;->genericBucketsToRttBuckets([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v1

    return-object v1
.end method

.method private consolidateOverallStatus(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    .locals 4
    .param p1, "histogram"    # Landroid/util/SparseIntArray;

    .line 266
    nop

    .line 267
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    .line 268
    .local v0, "h":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 269
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;-><init>()V

    aput-object v2, v0, v1

    .line 270
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;->statusType:I

    .line 271
    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;->count:I

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private consolidatePeerType(Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;)V
    .locals 2
    .param p1, "peerLog"    # Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .param p2, "peerInfo"    # Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    .line 278
    iget v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numCalls:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    .line 279
    iget v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numIndividualCalls:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    .line 280
    iget-object v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->perUidInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    .line 281
    iget-object v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numRequestsHistogram:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidateNumPeersPerRequest(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 283
    iget-object v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->perUidInfo:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidateNumRequestsPerApp(Landroid/util/SparseArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 284
    iget-object v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->requestGapHistogram:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/server/wifi/rtt/RttMetrics;->COUNT_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 285
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v0

    .line 284
    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttMetrics;->genericBucketsToRttBuckets([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 286
    iget-object v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidateIndividualStatus(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    .line 287
    iget-object v0, p2, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->measuredDistanceHistogram:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/server/wifi/rtt/RttMetrics;->DISTANCE_MM_HISTOGRAM:[I

    .line 288
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/MetricsUtils;->linearHistogramToGenericBuckets(Landroid/util/SparseIntArray;[I)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttMetrics;->genericBucketsToRttBuckets([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 290
    return-void
.end method

.method public static convertRttStatusTypeToProtoEnum(I)I
    .locals 3
    .param p0, "rttStatusType"    # I

    .line 379
    packed-switch p0, :pswitch_data_0

    .line 413
    const-string v0, "RttMetrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RttStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    return v0

    .line 411
    :pswitch_0
    const/16 v0, 0x10

    return v0

    .line 409
    :pswitch_1
    const/16 v0, 0xf

    return v0

    .line 407
    :pswitch_2
    const/16 v0, 0xe

    return v0

    .line 405
    :pswitch_3
    const/16 v0, 0xd

    return v0

    .line 403
    :pswitch_4
    const/16 v0, 0xc

    return v0

    .line 401
    :pswitch_5
    const/16 v0, 0xb

    return v0

    .line 399
    :pswitch_6
    const/16 v0, 0xa

    return v0

    .line 397
    :pswitch_7
    const/16 v0, 0x9

    return v0

    .line 395
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 393
    :pswitch_9
    const/4 v0, 0x7

    return v0

    .line 391
    :pswitch_a
    const/4 v0, 0x6

    return v0

    .line 389
    :pswitch_b
    const/4 v0, 0x5

    return v0

    .line 387
    :pswitch_c
    const/4 v0, 0x4

    return v0

    .line 385
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 383
    :pswitch_e
    const/4 v0, 0x2

    return v0

    .line 381
    :pswitch_f
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genericBucketsToRttBuckets([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 5
    .param p1, "genericHistogram"    # [Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    .line 334
    array-length v0, p1

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 336
    .local v0, "histogram":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 337
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v0, v1

    .line 338
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    iput-wide v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    .line 339
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->end:J

    iput-wide v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    .line 340
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->count:I

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private updatePeerInfoWithRequestInfo(Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;Landroid/os/WorkSource;I)V
    .locals 10
    .param p1, "peerInfo"    # Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "numIndividualCalls"    # I

    .line 208
    if-nez p3, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 213
    .local v0, "nowMs":J
    iget v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numCalls:I

    .line 214
    iget v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numIndividualCalls:I

    add-int/2addr v2, p3

    iput v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numIndividualCalls:I

    .line 215
    iget-object v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numRequestsHistogram:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numRequestsHistogram:Landroid/util/SparseIntArray;

    .line 216
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 215
    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, "recordedIntervals":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 220
    invoke-virtual {p2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    .line 222
    .local v4, "uid":I
    iget-object v5, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->perUidInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;

    .line 223
    .local v5, "perUidInfo":Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;
    if-nez v5, :cond_1

    .line 224
    new-instance v6, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V

    move-object v5, v6

    .line 227
    :cond_1
    iget v6, v5, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->numRequests:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->numRequests:I

    .line 229
    if-nez v2, :cond_2

    iget-wide v6, v5, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->lastRequestMs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 230
    const/4 v2, 0x1

    .line 231
    iget-wide v6, v5, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->lastRequestMs:J

    sub-long v6, v0, v6

    iget-object v8, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->requestGapHistogram:Landroid/util/SparseIntArray;

    sget-object v9, Lcom/android/server/wifi/rtt/RttMetrics;->COUNT_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 234
    :cond_2
    iput-wide v0, v5, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->lastRequestMs:J

    .line 236
    iget-object v6, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->perUidInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    .end local v4    # "uid":I
    .end local v5    # "perUidInfo":Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private updatePeerInfoWithResultInfo(Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;Landroid/hardware/wifi/V1_0/RttResult;)V
    .locals 4
    .param p1, "peerInfo"    # Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
    .param p2, "result"    # Landroid/hardware/wifi/V1_0/RttResult;

    .line 241
    iget v0, p2, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttMetrics;->convertRttStatusTypeToProtoEnum(I)I

    move-result v0

    .line 242
    .local v0, "protoStatus":I
    iget-object v1, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    iget v1, p2, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    iget-object v2, p1, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->measuredDistanceHistogram:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/server/wifi/rtt/RttMetrics;->DISTANCE_MM_HISTOGRAM:[I

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLinearHistogram(ILandroid/util/SparseIntArray;[I)I

    .line 245
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mNumStartRangingCalls:I

    .line 369
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mOverallStatusHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 370
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    new-instance v3, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V

    aput-object v3, v2, v1

    .line 371
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V

    aput-object v3, v1, v2

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public consolidateProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    .locals 5

    .line 251
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;-><init>()V

    .line 252
    .local v0, "log":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 253
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 254
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mNumStartRangingCalls:I

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    .line 256
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mOverallStatusHistogram:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidateOverallStatus(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    .line 258
    iget-object v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidatePeerType(Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;)V

    .line 259
    iget-object v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/rtt/RttMetrics;->consolidatePeerType(Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;)V

    .line 260
    monitor-exit v1

    .line 261
    return-object v0

    .line 260
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    const-string v1, "RTT Metrics:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumStartRangingCalls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mNumStartRangingCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverallStatusHistogram:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mOverallStatusHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWARE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordOverallStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 203
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mOverallStatusHistogram:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mOverallStatusHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    return-void
.end method

.method public recordRequest(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;)V
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "requests"    # Landroid/net/wifi/rtt/RangingRequest;

    .line 130
    iget v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mNumStartRangingCalls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mNumStartRangingCalls:I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "numApRequests":I
    const/4 v2, 0x0

    .line 134
    .local v2, "numAwareRequests":I
    iget-object v3, p2, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/rtt/ResponderConfig;

    .line 135
    .local v4, "request":Landroid/net/wifi/rtt/ResponderConfig;
    if-nez v4, :cond_0

    .line 136
    goto :goto_0

    .line 138
    :cond_0
    iget v5, v4, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    :cond_1
    iget v5, v4, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-nez v5, :cond_2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mDbg:Z

    if-eqz v5, :cond_3

    const-string v5, "RttMetrics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected Responder type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v4    # "request":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_3
    :goto_1
    goto :goto_0

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/wifi/rtt/RttMetrics;->updatePeerInfoWithRequestInfo(Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;Landroid/os/WorkSource;I)V

    .line 148
    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    aget-object v1, v3, v1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->updatePeerInfoWithRequestInfo(Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;Landroid/os/WorkSource;I)V

    .line 149
    return-void
.end method

.method public recordResult(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/List;)V
    .locals 10
    .param p1, "requests"    # Landroid/net/wifi/rtt/RangingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/rtt/RangingRequest;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_0/RttResult;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "requestEntries":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/MacAddress;Landroid/net/wifi/rtt/ResponderConfig;>;"
    iget-object v1, p1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/ResponderConfig;

    .line 157
    .local v2, "responder":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v3, v2, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v2    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_0

    .line 160
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/RttResult;

    .line 162
    .local v5, "result":Landroid/hardware/wifi/V1_0/RttResult;
    if-nez v5, :cond_1

    .line 163
    goto :goto_1

    .line 165
    :cond_1
    iget-object v6, v5, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    .line 166
    invoke-static {v6}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v6

    .line 165
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/rtt/ResponderConfig;

    .line 167
    .local v6, "responder":Landroid/net/wifi/rtt/ResponderConfig;
    if-nez v6, :cond_2

    .line 168
    const-string v7, "RttMetrics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordResult: found a result which doesn\'t match any requests: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto :goto_1

    .line 174
    :cond_2
    iget v7, v6, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-nez v7, :cond_3

    .line 175
    iget-object v7, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    aget-object v7, v7, v2

    invoke-direct {p0, v7, v5}, Lcom/android/server/wifi/rtt/RttMetrics;->updatePeerInfoWithResultInfo(Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;Landroid/hardware/wifi/V1_0/RttResult;)V

    goto :goto_2

    .line 176
    :cond_3
    iget v7, v6, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v7, v1, :cond_4

    .line 177
    iget-object v7, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    aget-object v7, v7, v3

    invoke-direct {p0, v7, v5}, Lcom/android/server/wifi/rtt/RttMetrics;->updatePeerInfoWithResultInfo(Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;Landroid/hardware/wifi/V1_0/RttResult;)V

    goto :goto_2

    .line 179
    :cond_4
    const-string v7, "RttMetrics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordResult: unexpected peer type in responder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v5    # "result":Landroid/hardware/wifi/V1_0/RttResult;
    .end local v6    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    :goto_2
    goto :goto_1

    .line 184
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/rtt/ResponderConfig;

    .line 186
    .local v5, "responder":Landroid/net/wifi/rtt/ResponderConfig;
    iget v6, v5, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-nez v6, :cond_6

    .line 187
    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    aget-object v6, v6, v2

    .local v6, "peerInfo":Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
    :goto_4
    goto :goto_5

    .line 188
    .end local v6    # "peerInfo":Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
    :cond_6
    iget v6, v5, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v6, v1, :cond_7

    .line 189
    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttMetrics;->mPerPeerTypeInfo:[Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;

    aget-object v6, v6, v3

    goto :goto_4

    .line 192
    .restart local v6    # "peerInfo":Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
    :goto_5
    nop

    .line 194
    iget-object v7, v6, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    iget-object v8, v6, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    .line 195
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 194
    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    .end local v5    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    .end local v6    # "peerInfo":Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
    goto :goto_3

    .line 191
    .restart local v5    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_7
    const-string v6, "RttMetrics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordResult: unexpected peer type in responder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    goto :goto_3

    .line 197
    .end local v5    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_8
    return-void
.end method
