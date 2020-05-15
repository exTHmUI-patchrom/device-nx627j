.class public Lcom/android/server/wifi/aware/WifiAwareMetrics;
.super Ljava/lang/Object;
.source "WifiAwareMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;
    }
.end annotation


# static fields
.field private static final DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

.field private static final RANGING_LIMIT_METERS:[I

.field private static final TAG:Ljava/lang/String; = "WifiAwareMetrics"

.field private static final VDBG:Z = false


# instance fields
.field private mAppsWithDiscoverySessionResourceFailure:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachDataByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachStatusData:Landroid/util/SparseIntArray;

.field private mAvailableTimeMs:J

.field private final mClock:Lcom/android/server/wifi/Clock;

.field mDbg:Z

.field private mEnabledTimeMs:J

.field private mHistogramAttachDuration:Landroid/util/SparseIntArray;

.field private mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

.field private mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

.field private mHistogramNdpDuration:Landroid/util/SparseIntArray;

.field private mHistogramPublishDuration:Landroid/util/SparseIntArray;

.field private mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

.field private mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

.field private mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

.field private mInBandNdpStatusData:Landroid/util/SparseIntArray;

.field private mLastEnableAwareInThisSampleWindowMs:J

.field private mLastEnableAwareMs:J

.field private mLastEnableUsageInThisSampleWindowMs:J

.field private mLastEnableUsageMs:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxDiscoveryInApp:I

.field private mMaxDiscoveryInSystem:I

.field private mMaxNdiInApp:I

.field private mMaxNdiInSystem:I

.field private mMaxNdpInApp:I

.field private mMaxNdpInSystem:I

.field private mMaxNdpPerNdi:I

.field private mMaxPublishInApp:I

.field private mMaxPublishInSystem:I

.field private mMaxPublishWithRangingInApp:I

.field private mMaxPublishWithRangingInSystem:I

.field private mMaxSecureNdpInApp:I

.field private mMaxSecureNdpInSystem:I

.field private mMaxSubscribeInApp:I

.field private mMaxSubscribeInSystem:I

.field private mMaxSubscribeWithRangingInApp:I

.field private mMaxSubscribeWithRangingInSystem:I

.field private mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

.field private mNdpCreationTimeMax:J

.field private mNdpCreationTimeMin:J

.field private mNdpCreationTimeNumSamples:J

.field private mNdpCreationTimeSum:J

.field private mNdpCreationTimeSumSq:J

.field private mNumMatchesWithRanging:I

.field private mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

.field private mNumSubscribesWithRanging:I

.field private mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

.field private mPublishStatusData:Landroid/util/SparseIntArray;

.field private mSubscribeStatusData:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 57
    new-instance v6, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;-><init>(IIIII)V

    sput-object v6, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->RANGING_LIMIT_METERS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x1e
        0x3c
        0x64
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 5
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mDbg:Z

    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    .line 72
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    .line 73
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    .line 74
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAvailableTimeMs:J

    .line 75
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    .line 78
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    .line 79
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    .line 80
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mEnabledTimeMs:J

    .line 81
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    .line 89
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    .line 90
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    .line 93
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInApp:I

    .line 94
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInApp:I

    .line 95
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInApp:I

    .line 96
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInSystem:I

    .line 97
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInSystem:I

    .line 98
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInSystem:I

    .line 99
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    .line 100
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    .line 101
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    .line 102
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    .line 103
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAppsWithDiscoverySessionResourceFailure:Ljava/util/Set;

    .line 106
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInApp:I

    .line 107
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInApp:I

    .line 108
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInSystem:I

    .line 109
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInSystem:I

    .line 110
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    .line 111
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    .line 112
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumSubscribesWithRanging:I

    .line 113
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithRanging:I

    .line 114
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

    .line 117
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInApp:I

    .line 118
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInApp:I

    .line 119
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInApp:I

    .line 120
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInSystem:I

    .line 121
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInSystem:I

    .line 122
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInSystem:I

    .line 123
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpPerNdi:I

    .line 124
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    .line 125
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    .line 127
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    .line 128
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    .line 129
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMax:J

    .line 130
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSum:J

    .line 131
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSumSq:J

    .line 132
    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeNumSamples:J

    .line 134
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    .line 138
    return-void
.end method

.method public static addNanHalStatusToHistogram(ILandroid/util/SparseIntArray;)V
    .locals 2
    .param p0, "halStatus"    # I
    .param p1, "histogram"    # Landroid/util/SparseIntArray;

    .line 818
    invoke-static {p0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->convertNanStatusTypeToProtoEnum(I)I

    move-result v0

    .line 819
    .local v0, "protoStatus":I
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 820
    .local v1, "newValue":I
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    return-void
.end method

.method public static convertNanStatusTypeToProtoEnum(I)I
    .locals 3
    .param p0, "nanStatusType"    # I

    .line 845
    packed-switch p0, :pswitch_data_0

    .line 873
    const-string v0, "WifiAwareMetrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized NanStatusType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/16 v0, 0xe

    return v0

    .line 871
    :pswitch_0
    const/16 v0, 0xd

    return v0

    .line 869
    :pswitch_1
    const/16 v0, 0xc

    return v0

    .line 867
    :pswitch_2
    const/16 v0, 0xb

    return v0

    .line 865
    :pswitch_3
    const/16 v0, 0xa

    return v0

    .line 863
    :pswitch_4
    const/16 v0, 0x9

    return v0

    .line 861
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 859
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 857
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 855
    :pswitch_8
    const/4 v0, 0x5

    return v0

    .line 853
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 851
    :pswitch_a
    const/4 v0, 0x3

    return v0

    .line 849
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 847
    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    .locals 5
    .param p0, "buckets"    # [Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 801
    array-length v0, p0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 804
    .local v0, "protoArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 805
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v2, v0, v1

    .line 806
    aget-object v2, v0, v1

    aget-object v3, p0, v1

    iget-wide v3, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->start:J

    iput-wide v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    .line 807
    aget-object v2, v0, v1

    aget-object v3, p0, v1

    iget-wide v3, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->end:J

    iput-wide v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    .line 808
    aget-object v2, v0, v1

    aget-object v3, p0, v1

    iget v3, v3, Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;->count:I

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static histogramToProtoArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    .locals 4
    .param p0, "histogram"    # Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 829
    nop

    .line 830
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 832
    .local v0, "protoArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 833
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v2, v0, v1

    .line 834
    aget-object v2, v0, v1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    .line 835
    aget-object v2, v0, v1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private recordDiscoverySessionInternal(ILandroid/util/SparseArray;ZII)V
    .locals 19
    .param p1, "uid"    # I
    .param p3, "isRangingEnabledSubscriber"    # Z
    .param p4, "minRange"    # I
    .param p5, "maxRange"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;ZII)V"
        }
    .end annotation

    .local p2, "clients":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareClientState;>;"
    move-object/from16 v1, p0

    move/from16 v2, p4

    .line 272
    move/from16 v3, p5

    const/4 v0, 0x0

    .line 273
    .local v0, "numPublishesInSystem":I
    const/4 v4, 0x0

    .line 274
    .local v4, "numSubscribesInSystem":I
    const/4 v5, 0x0

    .line 275
    .local v5, "numPublishesOnUid":I
    const/4 v6, 0x0

    .line 277
    .local v6, "numSubscribesOnUid":I
    const/4 v7, 0x0

    .line 278
    .local v7, "numPublishesWithRangingInSystem":I
    const/4 v8, 0x0

    .line 279
    .local v8, "numSubscribesWithRangingInSystem":I
    const/4 v9, 0x0

    .line 280
    .local v9, "numPublishesWithRangingOnUid":I
    const/4 v10, 0x0

    .line 282
    .local v10, "numSubscribesWithRangingOnUid":I
    move v12, v10

    move v10, v9

    move v9, v4

    move v4, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v4, "numPublishesInSystem":I
    .local v9, "numSubscribesInSystem":I
    .local v10, "numPublishesWithRangingOnUid":I
    .local v12, "numSubscribesWithRangingOnUid":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v0, v13, :cond_6

    .line 283
    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 284
    .local v15, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v15}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v11

    move/from16 v14, p1

    if-ne v11, v14, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v11, v16

    .line 286
    .local v11, "sameUid":Z
    invoke-virtual {v15}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v13

    .line 287
    .local v13, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move/from16 v16, v12

    move v12, v10

    move v10, v8

    move v8, v7

    move v7, v6

    move v6, v4

    const/4 v4, 0x0

    .local v4, "j":I
    .local v6, "numPublishesInSystem":I
    .local v7, "numSubscribesOnUid":I
    .local v8, "numPublishesWithRangingInSystem":I
    .local v10, "numSubscribesWithRangingInSystem":I
    .local v12, "numPublishesWithRangingOnUid":I
    .local v16, "numSubscribesWithRangingOnUid":I
    :goto_2
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v4, v14, :cond_5

    .line 288
    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 289
    .local v14, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    invoke-virtual {v14}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isRangingEnabled()Z

    move-result v17

    .line 291
    .local v17, "isRangingEnabledForThisSession":Z
    invoke-virtual {v14}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 292
    add-int/lit8 v6, v6, 0x1

    .line 293
    if-eqz v17, :cond_1

    .line 294
    add-int/lit8 v8, v8, 0x1

    .line 296
    :cond_1
    if-eqz v11, :cond_4

    .line 297
    add-int/lit8 v5, v5, 0x1

    .line 298
    if-eqz v17, :cond_4

    .line 299
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 303
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 304
    if-eqz v17, :cond_3

    .line 305
    add-int/lit8 v10, v10, 0x1

    .line 307
    :cond_3
    if-eqz v11, :cond_4

    .line 308
    add-int/lit8 v7, v7, 0x1

    .line 309
    if-eqz v17, :cond_4

    .line 310
    add-int/lit8 v16, v16, 0x1

    .line 287
    .end local v14    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .end local v17    # "isRangingEnabledForThisSession":Z
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, p1

    goto :goto_2

    .line 282
    .end local v4    # "j":I
    .end local v11    # "sameUid":Z
    .end local v13    # "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    .end local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v12

    move/from16 v12, v16

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    .end local v16    # "numSubscribesWithRangingOnUid":I
    .local v4, "numPublishesInSystem":I
    .local v6, "numSubscribesOnUid":I
    .local v7, "numPublishesWithRangingInSystem":I
    .local v8, "numSubscribesWithRangingInSystem":I
    .local v10, "numPublishesWithRangingOnUid":I
    .local v12, "numSubscribesWithRangingOnUid":I
    :cond_6
    iget-object v11, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 318
    :try_start_0
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInApp:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInApp:I

    .line 319
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInApp:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInApp:I

    .line 320
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInApp:I

    add-int v13, v5, v6

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInApp:I

    .line 322
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInSystem:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInSystem:I

    .line 323
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInSystem:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInSystem:I

    .line 324
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInSystem:I

    add-int v13, v4, v9

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInSystem:I

    .line 327
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInApp:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInApp:I

    .line 329
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInApp:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInApp:I

    .line 331
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInSystem:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInSystem:I

    .line 333
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInSystem:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInSystem:I

    .line 335
    if-eqz p3, :cond_7

    .line 336
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumSubscribesWithRanging:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumSubscribesWithRanging:I

    .line 339
    :cond_7
    const/4 v0, -0x1

    if-eq v2, v0, :cond_8

    .line 340
    iget-object v14, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    sget-object v15, Lcom/android/server/wifi/aware/WifiAwareMetrics;->RANGING_LIMIT_METERS:[I

    invoke-static {v2, v14, v15}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLinearHistogram(ILandroid/util/SparseIntArray;[I)I

    .line 343
    :cond_8
    if-eq v3, v0, :cond_9

    .line 344
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    sget-object v14, Lcom/android/server/wifi/aware/WifiAwareMetrics;->RANGING_LIMIT_METERS:[I

    invoke-static {v3, v0, v14}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLinearHistogram(ILandroid/util/SparseIntArray;[I)I

    .line 347
    :cond_9
    monitor-exit v11

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 7

    .line 596
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 597
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 599
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 600
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAvailableTimeMs:J

    .line 601
    iget-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    .line 602
    iput-wide v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    .line 606
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 607
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mEnabledTimeMs:J

    .line 608
    iget-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    .line 609
    iput-wide v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    .line 612
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 613
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 614
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 616
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInApp:I

    .line 617
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInApp:I

    .line 618
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInApp:I

    .line 619
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInSystem:I

    .line 620
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInSystem:I

    .line 621
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInSystem:I

    .line 622
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 623
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 624
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 625
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 626
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAppsWithDiscoverySessionResourceFailure:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 628
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInApp:I

    .line 629
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInApp:I

    .line 630
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInSystem:I

    .line 631
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInSystem:I

    .line 632
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 633
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 634
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumSubscribesWithRanging:I

    .line 635
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithRanging:I

    .line 636
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

    .line 638
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInApp:I

    .line 639
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInApp:I

    .line 640
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInApp:I

    .line 641
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInSystem:I

    .line 642
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInSystem:I

    .line 643
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInSystem:I

    .line 644
    iput v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpPerNdi:I

    .line 645
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 646
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 648
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 649
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    .line 650
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMax:J

    .line 651
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSum:J

    .line 652
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSumSq:J

    .line 653
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeNumSamples:J

    .line 655
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 656
    monitor-exit v2

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public consolidateProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 10

    .line 500
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    .line 501
    .local v0, "log":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 502
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 503
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 504
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 503
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 506
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAvailableTimeMs:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 507
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 508
    iget-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    iget-wide v8, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    sub-long v8, v1, v8

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 511
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 512
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 511
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 514
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mEnabledTimeMs:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 515
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 516
    iget-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    iget-wide v6, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    sub-long v6, v1, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 519
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 520
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 521
    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 522
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;

    .line 523
    .local v5, "ad":Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;
    iget-boolean v6, v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mUsesIdentityCallback:Z

    if-eqz v6, :cond_2

    .line 524
    iget v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 526
    :cond_2
    iget v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    iget v7, v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mMaxConcurrentAttaches:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 528
    .end local v5    # "ad":Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;
    goto :goto_0

    .line 529
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 530
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 531
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 530
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 534
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 535
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 536
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 537
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 538
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 539
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 540
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 541
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 542
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAppsWithDiscoverySessionResourceFailure:Ljava/util/Set;

    .line 543
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 544
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 545
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 544
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 547
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 548
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 547
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 551
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    .line 552
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    .line 553
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    .line 554
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    .line 555
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->RANGING_LIMIT_METERS:[I

    .line 556
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->linearHistogramToGenericBuckets(Landroid/util/SparseIntArray;[I)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 555
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 558
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->RANGING_LIMIT_METERS:[I

    .line 559
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->linearHistogramToGenericBuckets(Landroid/util/SparseIntArray;[I)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 558
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 561
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumSubscribesWithRanging:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    .line 562
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithRanging:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    .line 563
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    .line 566
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 567
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 568
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 569
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 570
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInApp:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 571
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInSystem:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 572
    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpPerNdi:I

    iput v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 573
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 574
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray(Landroid/util/SparseIntArray;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 576
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 577
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 576
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 579
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 580
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMax:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 581
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSum:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 582
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSumSq:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 583
    iget-wide v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeNumSamples:J

    iput-wide v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 585
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 586
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/MetricsUtils;->logHistogramToGenericBuckets(Landroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)[Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;

    move-result-object v4

    .line 585
    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->histogramToProtoArray([Lcom/android/server/wifi/util/MetricsUtils$GenericBucket;)[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 588
    monitor-exit v3

    .line 589
    return-object v0

    .line 588
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastEnableUsageMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastEnableUsageInThisSampleWindowMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAvailableTimeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAvailableTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    const-string v1, "mHistogramAwareAvailableDurationMs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    .line 676
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastEnableAwareMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastEnableAwareInThisSampleWindowMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnabledTimeMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mEnabledTimeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    const-string v2, "mHistogramAwareEnabledDurationMs:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    .line 686
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 685
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 689
    .end local v2    # "i":I
    :cond_1
    const-string v2, "mAttachDataByUid:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 691
    .local v3, "ade":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": identity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;

    iget-boolean v5, v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mUsesIdentityCallback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", maxConcurrent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;

    iget v5, v5, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mMaxConcurrentAttaches:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    .end local v3    # "ade":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;>;"
    goto :goto_2

    .line 695
    :cond_2
    const-string v2, "mAttachStatusData:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    move v2, v1

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    .line 698
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 700
    .end local v2    # "i":I
    :cond_3
    const-string v2, "mHistogramAttachDuration:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    move v2, v1

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    .line 703
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 702
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 706
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxPublishInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSubscribeInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxDiscoveryInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxPublishInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSubscribeInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxDiscoveryInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxDiscoveryInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    const-string v2, "mPublishStatusData:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    move v2, v1

    .restart local v2    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    .line 715
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 714
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 717
    .end local v2    # "i":I
    :cond_5
    const-string v2, "mSubscribeStatusData:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    move v2, v1

    .restart local v2    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    .line 720
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 722
    .end local v2    # "i":I
    :cond_6
    const-string v2, "mHistogramPublishDuration:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    move v2, v1

    .restart local v2    # "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    .line 725
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 727
    .end local v2    # "i":I
    :cond_7
    const-string v2, "mHistogramSubscribeDuration:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    move v2, v1

    .restart local v2    # "i":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    .line 730
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 732
    .end local v2    # "i":I
    :cond_8
    const-string v2, "mAppsWithDiscoverySessionResourceFailure:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAppsWithDiscoverySessionResourceFailure:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 734
    .local v3, "uid":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    .end local v3    # "uid":Ljava/lang/Integer;
    goto :goto_9

    .line 738
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxPublishWithRangingInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSubscribeWithRangingInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxPublishWithRangingInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxPublishWithRangingInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSubscribeWithRangingInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSubscribeWithRangingInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v2, "mHistogramSubscribeGeofenceMin:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    move v2, v1

    .restart local v2    # "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMin:Landroid/util/SparseIntArray;

    .line 745
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 747
    .end local v2    # "i":I
    :cond_a
    const-string v2, "mHistogramSubscribeGeofenceMax:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    move v2, v1

    .restart local v2    # "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeGeofenceMax:Landroid/util/SparseIntArray;

    .line 750
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 752
    .end local v2    # "i":I
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumSubscribesWithRanging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumSubscribesWithRanging:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumMatchesWithRanging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithRanging:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumMatchesWithoutRangingForRangingEnabledSubscribes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxNdiInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxNdpInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSecureNdpInApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxNdiInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxNdpInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSecureNdpInSystem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInSystem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxNdpPerNdi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpPerNdi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    const-string v2, "mInBandNdpStatusData:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    move v2, v1

    .restart local v2    # "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    .line 767
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 769
    .end local v2    # "i":I
    :cond_c
    const-string v2, "mOutOfBandNdpStatusData:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    move v2, v1

    .restart local v2    # "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    .line 772
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 775
    .end local v2    # "i":I
    :cond_d
    const-string v2, "mNdpCreationTimeDuration:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    move v2, v1

    .restart local v2    # "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    .line 778
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 780
    .end local v2    # "i":I
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNdpCreationTimeMin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNdpCreationTimeMax:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMax:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNdpCreationTimeSum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSum:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNdpCreationTimeSumSq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSumSq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNdpCreationTimeNumSamples:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeNumSamples:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    const-string v2, "mHistogramNdpDuration:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    nop

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    .line 789
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 791
    .end local v1    # "i":I
    :cond_f
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordAttachSession(IZLandroid/util/SparseArray;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "usesIdentityCallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p3, "clients":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareClientState;>;"
    const/4 v0, 0x0

    .line 213
    .local v0, "currentConcurrentCount":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "currentConcurrentCount":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 214
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;

    .line 221
    .local v3, "data":Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;
    if-nez v3, :cond_2

    .line 222
    new-instance v4, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;-><init>(Lcom/android/server/wifi/aware/WifiAwareMetrics$1;)V

    move-object v3, v4

    .line 223
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachDataByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_2
    iget-boolean v4, v3, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mUsesIdentityCallback:Z

    or-int/2addr v4, p2

    iput-boolean v4, v3, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mUsesIdentityCallback:Z

    .line 226
    iget v4, v3, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mMaxConcurrentAttaches:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;->mMaxConcurrentAttaches:I

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V

    .line 229
    .end local v3    # "data":Lcom/android/server/wifi/aware/WifiAwareMetrics$AttachData;
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordAttachSessionDuration(J)V
    .locals 5
    .param p1, "creationTime"    # J

    .line 245
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAttachDuration:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordAttachStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAttachStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordDisableAware()V
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 194
    monitor-exit v0

    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 198
    .local v1, "now":J
    iget-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    sub-long v5, v1, v5

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareEnabledDurationMs:Landroid/util/SparseIntArray;

    sget-object v8, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 200
    iget-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mEnabledTimeMs:J

    iget-wide v7, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    sub-long v7, v1, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mEnabledTimeMs:J

    .line 201
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    .line 202
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    .line 203
    .end local v1    # "now":J
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordDisableUsage()V
    .locals 9

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 162
    const-string v1, "WifiAwareMetrics"

    const-string v2, "disableUsage: mLastEnableUsage not initialized!?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v0

    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 167
    .local v1, "now":J
    iget-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    sub-long v5, v1, v5

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramAwareAvailableDurationMs:Landroid/util/SparseIntArray;

    sget-object v8, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 169
    iget-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAvailableTimeMs:J

    iget-wide v7, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    sub-long v7, v1, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAvailableTimeMs:J

    .line 170
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    .line 171
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    .line 172
    .end local v1    # "now":J
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordDiscoverySession(ILandroid/util/SparseArray;)V
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p2, "clients":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareClientState;>;"
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionInternal(ILandroid/util/SparseArray;ZII)V

    .line 256
    return-void
.end method

.method public recordDiscoverySessionDuration(JZ)V
    .locals 5
    .param p1, "creationTime"    # J
    .param p3, "isPublish"    # Z

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 374
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramPublishDuration:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramSubscribeDuration:Landroid/util/SparseIntArray;

    :goto_0
    sget-object v4, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    .line 373
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 376
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordDiscoverySessionWithRanging(IZIILandroid/util/SparseArray;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "isSubscriberWithRanging"    # Z
    .param p3, "minRange"    # I
    .param p4, "maxRange"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZII",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p5, "clients":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareClientState;>;"
    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionInternal(ILandroid/util/SparseArray;ZII)V

    .line 264
    return-void
.end method

.method public recordDiscoveryStatus(IIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "status"    # I
    .param p3, "isPublish"    # Z

    .line 355
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    if-eqz p3, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mPublishStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mSubscribeStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 362
    :goto_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mAppsWithDiscoverySessionResourceFailure:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_1
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordEnableAware()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 181
    monitor-exit v0

    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    .line 184
    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareMs:J

    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableAwareInThisSampleWindowMs:J

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordEnableUsage()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "WifiAwareMetrics"

    const-string v2, "enableUsage: mLastEnableUsage*Ms initialized!?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    .line 150
    iget-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageMs:J

    iput-wide v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLastEnableUsageInThisSampleWindowMs:J

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordMatchIndicationForRangeEnabledSubscribe(Z)V
    .locals 1
    .param p1, "rangeProvided"    # Z

    .line 385
    if-eqz p1, :cond_0

    .line 386
    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithRanging:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithRanging:I

    goto :goto_0

    .line 388
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNumMatchesWithoutRangingForRangingEnabledSubscribes:I

    .line 390
    :goto_0
    return-void
.end method

.method public recordNdpCreation(ILjava/util/Map;)V
    .locals 17
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            ">;)V"
        }
    .end annotation

    .local p2, "networkRequestCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    move-object/from16 v1, p0

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "numNdpInApp":I
    const/4 v2, 0x0

    .line 400
    .local v2, "numSecureNdpInApp":I
    const/4 v3, 0x0

    .line 401
    .local v3, "numNdpInSystem":I
    const/4 v4, 0x0

    .line 403
    .local v4, "numSecureNdpInSystem":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v5, "ndpPerNdiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v6, "ndiInApp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v7, "ndiInSystem":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0    # "numNdpInApp":I
    .local v2, "numNdpInApp":I
    .local v3, "numSecureNdpInApp":I
    .local v4, "numNdpInSystem":I
    .local v9, "numSecureNdpInSystem":I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 409
    .local v0, "anri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    iget v10, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v11, 0x66

    if-eq v10, v11, :cond_0

    .line 412
    goto :goto_0

    .line 415
    :cond_0
    iget v10, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->uid:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v13, p1

    if-ne v10, v13, :cond_1

    move v10, v12

    goto :goto_1

    :cond_1
    move v10, v11

    .line 416
    .local v10, "sameUid":Z
    :goto_1
    iget-object v14, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v14, v14, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v14, v14, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-eqz v14, :cond_2

    iget-object v14, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v14, v14, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    array-length v14, v14

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v11, v12

    .line 420
    .local v11, "isSecure":Z
    :goto_3
    if-eqz v10, :cond_5

    .line 421
    add-int/lit8 v2, v2, 0x1

    .line 422
    if-eqz v11, :cond_4

    .line 423
    add-int/lit8 v3, v3, 0x1

    .line 426
    :cond_4
    iget-object v14, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 431
    if-eqz v11, :cond_6

    .line 432
    add-int/lit8 v9, v9, 0x1

    .line 436
    :cond_6
    iget-object v14, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 437
    .local v14, "ndpCount":Ljava/lang/Integer;
    if-nez v14, :cond_7

    .line 438
    iget-object v15, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 440
    :cond_7
    iget-object v15, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v12, v16, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :goto_4
    iget-object v12, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v0    # "anri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .end local v10    # "sameUid":Z
    .end local v11    # "isSecure":Z
    .end local v14    # "ndpCount":Ljava/lang/Integer;
    goto :goto_0

    .line 447
    :cond_8
    move/from16 v13, p1

    iget-object v8, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 448
    :try_start_0
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInApp:I

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInApp:I

    .line 449
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInApp:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInApp:I

    .line 450
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInApp:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInApp:I

    .line 451
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInSystem:I

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdiInSystem:I

    .line 452
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInSystem:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpInSystem:I

    .line 453
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInSystem:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxSecureNdpInSystem:I

    .line 454
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpPerNdi:I

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mMaxNdpPerNdi:I

    .line 455
    monitor-exit v8

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordNdpSessionDuration(J)V
    .locals 5
    .param p1, "creationTime"    # J

    .line 490
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mHistogramNdpDuration:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordNdpStatus(IZJ)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "isOutOfBand"    # Z
    .param p3, "startTimestamp"    # J

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    if-eqz p2, :cond_0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mInBandNdpStatusData:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mOutOfBandNdpStatusData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    :goto_0
    if-nez p1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    .line 473
    .local v1, "creationTime":J
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeDuration:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/android/server/wifi/aware/WifiAwareMetrics;->DURATION_LOG_HISTOGRAM:Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wifi/util/MetricsUtils;->addValueToLogHistogram(JLandroid/util/SparseIntArray;Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;)I

    .line 475
    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMin:J

    .line 477
    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMax:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeMax:J

    .line 478
    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSum:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSum:J

    .line 479
    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSumSq:J

    mul-long v5, v1, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeSumSq:J

    .line 480
    iget-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeNumSamples:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mNdpCreationTimeNumSamples:J

    .line 482
    .end local v1    # "creationTime":J
    :cond_2
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
