.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiAwareLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    }
.end annotation


# static fields
.field public static final ALREADY_ENABLED:I = 0xb

.field public static final FOLLOWUP_TX_QUEUE_FULL:I = 0xc

.field public static final INTERNAL_FAILURE:I = 0x2

.field public static final INVALID_ARGS:I = 0x6

.field public static final INVALID_NDP_ID:I = 0x8

.field public static final INVALID_PEER_ID:I = 0x7

.field public static final INVALID_SESSION_ID:I = 0x4

.field public static final NAN_NOT_ALLOWED:I = 0x9

.field public static final NO_OTA_ACK:I = 0xa

.field public static final NO_RESOURCES_AVAILABLE:I = 0x5

.field public static final PROTOCOL_FAILURE:I = 0x3

.field public static final SUCCESS:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_HAL_STATUS:I = 0xe

.field public static final UNSUPPORTED_CONCURRENCY_NAN_DISABLED:I = 0xd

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;


# instance fields
.field public availableTimeMs:J

.field public enabledTimeMs:J

.field public histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public maxConcurrentAttachSessionsInApp:I

.field public maxConcurrentDiscoverySessionsInApp:I

.field public maxConcurrentDiscoverySessionsInSystem:I

.field public maxConcurrentNdiInApp:I

.field public maxConcurrentNdiInSystem:I

.field public maxConcurrentNdpInApp:I

.field public maxConcurrentNdpInSystem:I

.field public maxConcurrentNdpPerNdi:I

.field public maxConcurrentPublishInApp:I

.field public maxConcurrentPublishInSystem:I

.field public maxConcurrentPublishWithRangingInApp:I

.field public maxConcurrentPublishWithRangingInSystem:I

.field public maxConcurrentSecureNdpInApp:I

.field public maxConcurrentSecureNdpInSystem:I

.field public maxConcurrentSubscribeInApp:I

.field public maxConcurrentSubscribeInSystem:I

.field public maxConcurrentSubscribeWithRangingInApp:I

.field public maxConcurrentSubscribeWithRangingInSystem:I

.field public ndpCreationTimeMsMax:J

.field public ndpCreationTimeMsMin:J

.field public ndpCreationTimeMsNumSamples:J

.field public ndpCreationTimeMsSum:J

.field public ndpCreationTimeMsSumOfSq:J

.field public numApps:I

.field public numAppsUsingIdentityCallback:I

.field public numAppsWithDiscoverySessionFailureOutOfResources:I

.field public numMatchesWithRanging:I

.field public numMatchesWithoutRangingForRangingEnabledSubscribes:I

.field public numSubscribesWithRanging:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5074
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 5075
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 5076
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 2

    .line 4925
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v0, :cond_1

    .line 4926
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4928
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v1, :cond_0

    .line 4929
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 4931
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4933
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6064
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6058
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 3

    .line 5079
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 5080
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 5081
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 5082
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5083
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 5084
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 5085
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 5086
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 5087
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 5088
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 5089
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5090
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5091
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 5092
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5093
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5094
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 5095
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 5096
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 5097
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 5098
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 5099
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 5100
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 5101
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5102
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5103
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5104
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5105
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5106
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5107
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5108
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5109
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 5110
    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 5111
    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 5112
    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 5113
    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 5114
    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 5115
    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 5116
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    .line 5117
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    .line 5118
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    .line 5119
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    .line 5120
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5121
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5122
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    .line 5123
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    .line 5124
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    .line 5125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->cachedSize:I

    .line 5126
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 5350
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 5351
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    if-eqz v1, :cond_0

    .line 5352
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 5353
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5355
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    if-eqz v1, :cond_1

    .line 5356
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 5357
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5359
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    if-eqz v1, :cond_2

    .line 5360
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 5361
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5363
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 5364
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 5365
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    .line 5366
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_3

    .line 5367
    const/4 v4, 0x4

    .line 5368
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5364
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5372
    .end local v0    # "i":I
    :cond_4
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    if-eqz v1, :cond_6

    .line 5373
    const/4 v1, 0x5

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 5374
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5376
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    if-eqz v1, :cond_7

    .line 5377
    const/4 v1, 0x6

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 5378
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5380
    :cond_7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    if-eqz v1, :cond_8

    .line 5381
    const/4 v1, 0x7

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 5382
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5384
    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    if-eqz v1, :cond_9

    .line 5385
    const/16 v1, 0x8

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 5386
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5388
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    if-eqz v1, :cond_a

    .line 5389
    const/16 v1, 0x9

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 5390
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5392
    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    if-eqz v1, :cond_b

    .line 5393
    const/16 v1, 0xa

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 5394
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5396
    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 5397
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    .line 5398
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    .line 5399
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_c

    .line 5400
    const/16 v4, 0xb

    .line 5401
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5397
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5405
    .end local v0    # "i":I
    :cond_d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_11

    .line 5406
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 5407
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    .line 5408
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_f

    .line 5409
    const/16 v4, 0xc

    .line 5410
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5406
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5414
    .end local v0    # "i":I
    :cond_10
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_11
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    if-eqz v1, :cond_12

    .line 5415
    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 5416
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5418
    :cond_12
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_15

    .line 5419
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_14

    .line 5420
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    .line 5421
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_13

    .line 5422
    const/16 v4, 0xe

    .line 5423
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5419
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5427
    .end local v0    # "i":I
    :cond_14
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_15
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_18

    .line 5428
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_17

    .line 5429
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    .line 5430
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_16

    .line 5431
    const/16 v4, 0xf

    .line 5432
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5428
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5436
    .end local v0    # "i":I
    :cond_17
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_18
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    if-eqz v1, :cond_19

    .line 5437
    const/16 v1, 0x13

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 5438
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5440
    :cond_19
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    if-eqz v1, :cond_1a

    .line 5441
    const/16 v1, 0x14

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 5442
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5444
    :cond_1a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    if-eqz v1, :cond_1b

    .line 5445
    const/16 v1, 0x15

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 5446
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5448
    :cond_1b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    if-eqz v1, :cond_1c

    .line 5449
    const/16 v1, 0x16

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 5450
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5452
    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    if-eqz v1, :cond_1d

    .line 5453
    const/16 v1, 0x17

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 5454
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5456
    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    if-eqz v1, :cond_1e

    .line 5457
    const/16 v1, 0x18

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 5458
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5460
    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    if-eqz v1, :cond_1f

    .line 5461
    const/16 v1, 0x19

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 5462
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5464
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_22

    .line 5465
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_21

    .line 5466
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5467
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_20

    .line 5468
    const/16 v4, 0x1a

    .line 5469
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5465
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5473
    .end local v0    # "i":I
    :cond_21
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_25

    .line 5474
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_24

    .line 5475
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5476
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_23

    .line 5477
    const/16 v4, 0x1b

    .line 5478
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5474
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5482
    .end local v0    # "i":I
    :cond_24
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_25
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_28

    .line 5483
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_27

    .line 5484
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5485
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_26

    .line 5486
    const/16 v4, 0x1c

    .line 5487
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5483
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5491
    .end local v0    # "i":I
    :cond_27
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_2b

    .line 5492
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_2a

    .line 5493
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5494
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_29

    .line 5495
    const/16 v4, 0x1d

    .line 5496
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5492
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5500
    .end local v0    # "i":I
    :cond_2a
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_2e

    .line 5501
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    .line 5502
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5503
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_2c

    .line 5504
    const/16 v4, 0x1e

    .line 5505
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5501
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5509
    .end local v0    # "i":I
    :cond_2d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_31

    .line 5510
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_30

    .line 5511
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5512
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_2f

    .line 5513
    const/16 v4, 0x1f

    .line 5514
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5510
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5518
    .end local v0    # "i":I
    :cond_30
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_31
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_34

    .line 5519
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_33

    .line 5520
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5521
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_32

    .line 5522
    const/16 v4, 0x20

    .line 5523
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5519
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5527
    .end local v0    # "i":I
    :cond_33
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_34
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_37

    .line 5528
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_36

    .line 5529
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5530
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_35

    .line 5531
    const/16 v4, 0x21

    .line 5532
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5528
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 5536
    .end local v0    # "i":I
    :cond_36
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_37
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_38

    .line 5537
    const/16 v1, 0x22

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 5538
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5540
    :cond_38
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    .line 5541
    const/16 v1, 0x23

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 5542
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5544
    :cond_39
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3a

    .line 5545
    const/16 v1, 0x24

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 5546
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5548
    :cond_3a
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3b

    .line 5549
    const/16 v1, 0x25

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 5550
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5552
    :cond_3b
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3c

    .line 5553
    const/16 v1, 0x26

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 5554
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5556
    :cond_3c
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3d

    .line 5557
    const/16 v1, 0x27

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 5558
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5560
    :cond_3d
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3e

    .line 5561
    const/16 v1, 0x28

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 5562
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5564
    :cond_3e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    if-eqz v1, :cond_3f

    .line 5565
    const/16 v1, 0x29

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    .line 5566
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5568
    :cond_3f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    if-eqz v1, :cond_40

    .line 5569
    const/16 v1, 0x2a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    .line 5570
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5572
    :cond_40
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    if-eqz v1, :cond_41

    .line 5573
    const/16 v1, 0x2b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    .line 5574
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5576
    :cond_41
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    if-eqz v1, :cond_42

    .line 5577
    const/16 v1, 0x2c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    .line 5578
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5580
    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_45

    .line 5581
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    .line 5582
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 5583
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_43

    .line 5584
    const/16 v4, 0x2d

    .line 5585
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 5581
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 5589
    .end local v0    # "i":I
    :cond_44
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_45
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_47

    .line 5590
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    .line 5591
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v1

    .line 5592
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_46

    .line 5593
    const/16 v3, 0x2e

    .line 5594
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 5590
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_46
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_e

    .line 5598
    .end local v2    # "i":I
    :cond_47
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    if-eqz v1, :cond_48

    .line 5599
    const/16 v1, 0x2f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    .line 5600
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5602
    :cond_48
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    if-eqz v1, :cond_49

    .line 5603
    const/16 v1, 0x30

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    .line 5604
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5606
    :cond_49
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    if-eqz v1, :cond_4a

    .line 5607
    const/16 v1, 0x31

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    .line 5608
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5610
    :cond_4a
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4670
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5618
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5619
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 5623
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 5624
    return-object p0

    .line 6049
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    .end local v0    # "tag":I
    goto/16 :goto_1f

    .line 6045
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    .line 6046
    goto/16 :goto_1f

    .line 6041
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    .line 6042
    goto/16 :goto_1f

    .line 6021
    :sswitch_3
    const/16 v2, 0x172

    .line 6022
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6023
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 6024
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 6026
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_1

    .line 6027
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6029
    :cond_1
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    .line 6030
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 6031
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6032
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6029
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6035
    :cond_2
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 6036
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6037
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 6038
    goto/16 :goto_1f

    .line 6001
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_4
    const/16 v2, 0x16a

    .line 6002
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6003
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 6004
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 6006
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_4

    .line 6007
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6009
    :cond_4
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    .line 6010
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 6011
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6012
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6009
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 6015
    :cond_5
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 6016
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6017
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 6018
    goto/16 :goto_1f

    .line 5997
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    .line 5998
    goto/16 :goto_1f

    .line 5993
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    .line 5994
    goto/16 :goto_1f

    .line 5989
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    .line 5990
    goto/16 :goto_1f

    .line 5985
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    .line 5986
    goto/16 :goto_1f

    .line 5981
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 5982
    goto/16 :goto_1f

    .line 5977
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 5978
    goto/16 :goto_1f

    .line 5973
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 5974
    goto/16 :goto_1f

    .line 5969
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 5970
    goto/16 :goto_1f

    .line 5965
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 5966
    goto/16 :goto_1f

    .line 5961
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 5962
    goto/16 :goto_1f

    .line 5957
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 5958
    goto/16 :goto_1f

    .line 5937
    :sswitch_10
    const/16 v2, 0x10a

    .line 5938
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5939
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5940
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5942
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_7

    .line 5943
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5945
    :cond_7
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    .line 5946
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5947
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5948
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5945
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 5951
    :cond_8
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5952
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5953
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5954
    goto/16 :goto_1f

    .line 5917
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_11
    const/16 v2, 0x102

    .line 5918
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5919
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5920
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5922
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_a

    .line 5923
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5925
    :cond_a
    :goto_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_b

    .line 5926
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5927
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5928
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5925
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 5931
    :cond_b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5932
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5933
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5934
    goto/16 :goto_1f

    .line 5897
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_12
    const/16 v2, 0xfa

    .line 5898
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5899
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_9

    :cond_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5900
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5902
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_d

    .line 5903
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5905
    :cond_d
    :goto_a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_e

    .line 5906
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5907
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5908
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5905
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 5911
    :cond_e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5912
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5913
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5914
    goto/16 :goto_1f

    .line 5877
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_13
    const/16 v2, 0xf2

    .line 5878
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5879
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_b

    :cond_f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5880
    .restart local v3    # "i":I
    :goto_b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5882
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_10

    .line 5883
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5885
    :cond_10
    :goto_c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_11

    .line 5886
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5887
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5888
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5885
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 5891
    :cond_11
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5892
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5893
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5894
    goto/16 :goto_1f

    .line 5857
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_14
    const/16 v2, 0xea

    .line 5858
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5859
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_12

    move v3, v1

    goto :goto_d

    :cond_12
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5860
    .restart local v3    # "i":I
    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5862
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_13

    .line 5863
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5865
    :cond_13
    :goto_e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_14

    .line 5866
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5867
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5868
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5865
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 5871
    :cond_14
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5872
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5873
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5874
    goto/16 :goto_1f

    .line 5837
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_15
    const/16 v2, 0xe2

    .line 5838
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5839
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_f

    :cond_15
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5840
    .restart local v3    # "i":I
    :goto_f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5842
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_16

    .line 5843
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5845
    :cond_16
    :goto_10
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_17

    .line 5846
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5847
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5848
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5845
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 5851
    :cond_17
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5852
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5853
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5854
    goto/16 :goto_1f

    .line 5817
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_16
    const/16 v2, 0xda

    .line 5818
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5819
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_18

    move v3, v1

    goto :goto_11

    :cond_18
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5820
    .restart local v3    # "i":I
    :goto_11
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5822
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_19

    .line 5823
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5825
    :cond_19
    :goto_12
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1a

    .line 5826
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5827
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5828
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5825
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 5831
    :cond_1a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5832
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5833
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5834
    goto/16 :goto_1f

    .line 5797
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_17
    const/16 v2, 0xd2

    .line 5798
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5799
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_1b

    move v3, v1

    goto :goto_13

    :cond_1b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    .line 5800
    .restart local v3    # "i":I
    :goto_13
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5802
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v3, :cond_1c

    .line 5803
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5805
    :cond_1c
    :goto_14
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1d

    .line 5806
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5807
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5808
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5805
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5811
    :cond_1d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5812
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5813
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 5814
    goto/16 :goto_1f

    .line 5793
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 5794
    goto/16 :goto_1f

    .line 5789
    :sswitch_19
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 5790
    goto/16 :goto_1f

    .line 5785
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 5786
    goto/16 :goto_1f

    .line 5781
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 5782
    goto/16 :goto_1f

    .line 5777
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 5778
    goto/16 :goto_1f

    .line 5773
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 5774
    goto/16 :goto_1f

    .line 5769
    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 5770
    goto/16 :goto_1f

    .line 5749
    :sswitch_1f
    const/16 v2, 0x7a

    .line 5750
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5751
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_1e

    move v3, v1

    goto :goto_15

    :cond_1e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    .line 5752
    .restart local v3    # "i":I
    :goto_15
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5754
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_1f

    .line 5755
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5757
    :cond_1f
    :goto_16
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_20

    .line 5758
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5759
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5760
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5757
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 5763
    :cond_20
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5764
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5765
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5766
    goto/16 :goto_1f

    .line 5729
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :sswitch_20
    const/16 v2, 0x72

    .line 5730
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5731
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_21

    move v3, v1

    goto :goto_17

    :cond_21
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    .line 5732
    .restart local v3    # "i":I
    :goto_17
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5734
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_22

    .line 5735
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5737
    :cond_22
    :goto_18
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_23

    .line 5738
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5739
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5740
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5737
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 5743
    :cond_23
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5744
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5745
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5746
    goto/16 :goto_1f

    .line 5725
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 5726
    goto/16 :goto_1f

    .line 5705
    :sswitch_22
    const/16 v2, 0x62

    .line 5706
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5707
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_24

    move v3, v1

    goto :goto_19

    :cond_24
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    .line 5708
    .restart local v3    # "i":I
    :goto_19
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5710
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_25

    .line 5711
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5713
    :cond_25
    :goto_1a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_26

    .line 5714
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5715
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5716
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5713
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 5719
    :cond_26
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5720
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5721
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5722
    goto/16 :goto_1f

    .line 5685
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :sswitch_23
    const/16 v2, 0x5a

    .line 5686
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5687
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_1b

    :cond_27
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    .line 5688
    .restart local v3    # "i":I
    :goto_1b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5690
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_28

    .line 5691
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5693
    :cond_28
    :goto_1c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_29

    .line 5694
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5695
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5696
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5693
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 5699
    :cond_29
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5700
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5701
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5702
    goto/16 :goto_1f

    .line 5681
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 5682
    goto/16 :goto_1f

    .line 5677
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 5678
    goto/16 :goto_1f

    .line 5673
    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 5674
    goto/16 :goto_1f

    .line 5669
    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 5670
    goto :goto_1f

    .line 5665
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 5666
    goto :goto_1f

    .line 5661
    :sswitch_29
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 5662
    goto :goto_1f

    .line 5641
    :sswitch_2a
    const/16 v2, 0x22

    .line 5642
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5643
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_2a

    move v3, v1

    goto :goto_1d

    :cond_2a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    .line 5644
    .restart local v3    # "i":I
    :goto_1d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5646
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v3, :cond_2b

    .line 5647
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5649
    :cond_2b
    :goto_1e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2c

    .line 5650
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5651
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5652
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5649
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 5655
    :cond_2c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 5656
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5657
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 5658
    goto :goto_1f

    .line 5637
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 5638
    goto :goto_1f

    .line 5633
    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 5634
    goto :goto_1f

    .line 5629
    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 5630
    goto :goto_1f

    .line 5621
    :sswitch_2e
    return-object p0

    .line 6053
    .end local v0    # "tag":I
    :cond_2d
    :goto_1f
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2e
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_2c
        0x18 -> :sswitch_2b
        0x22 -> :sswitch_2a
        0x28 -> :sswitch_29
        0x30 -> :sswitch_28
        0x38 -> :sswitch_27
        0x40 -> :sswitch_26
        0x48 -> :sswitch_25
        0x50 -> :sswitch_24
        0x5a -> :sswitch_23
        0x62 -> :sswitch_22
        0x68 -> :sswitch_21
        0x72 -> :sswitch_20
        0x7a -> :sswitch_1f
        0x98 -> :sswitch_1e
        0xa0 -> :sswitch_1d
        0xa8 -> :sswitch_1c
        0xb0 -> :sswitch_1b
        0xb8 -> :sswitch_1a
        0xc0 -> :sswitch_19
        0xc8 -> :sswitch_18
        0xd2 -> :sswitch_17
        0xda -> :sswitch_16
        0xe2 -> :sswitch_15
        0xea -> :sswitch_14
        0xf2 -> :sswitch_13
        0xfa -> :sswitch_12
        0x102 -> :sswitch_11
        0x10a -> :sswitch_10
        0x110 -> :sswitch_f
        0x118 -> :sswitch_e
        0x120 -> :sswitch_d
        0x128 -> :sswitch_c
        0x130 -> :sswitch_b
        0x138 -> :sswitch_a
        0x140 -> :sswitch_9
        0x148 -> :sswitch_8
        0x150 -> :sswitch_7
        0x158 -> :sswitch_6
        0x160 -> :sswitch_5
        0x16a -> :sswitch_4
        0x172 -> :sswitch_3
        0x178 -> :sswitch_2
        0x180 -> :sswitch_1
        0x188 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5132
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    if-eqz v0, :cond_0

    .line 5133
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5135
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    if-eqz v0, :cond_1

    .line 5136
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5138
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    if-eqz v0, :cond_2

    .line 5139
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5141
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 5142
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 5143
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    .line 5144
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v2, :cond_3

    .line 5145
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5142
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5149
    .end local v0    # "i":I
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    if-eqz v0, :cond_5

    .line 5150
    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5152
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    if-eqz v0, :cond_6

    .line 5153
    const/4 v0, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5155
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    if-eqz v0, :cond_7

    .line 5156
    const/4 v0, 0x7

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5158
    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    if-eqz v0, :cond_8

    .line 5159
    const/16 v0, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5161
    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    if-eqz v0, :cond_9

    .line 5162
    const/16 v0, 0x9

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5164
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    if-eqz v0, :cond_a

    .line 5165
    const/16 v0, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5167
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 5168
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 5169
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    .line 5170
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v2, :cond_b

    .line 5171
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5168
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5175
    .end local v0    # "i":I
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_e

    .line 5176
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 5177
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    .line 5178
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v2, :cond_d

    .line 5179
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5176
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5183
    .end local v0    # "i":I
    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    if-eqz v0, :cond_f

    .line 5184
    const/16 v0, 0xd

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5186
    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_11

    .line 5187
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 5188
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    .line 5189
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v2, :cond_10

    .line 5190
    const/16 v3, 0xe

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5187
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5194
    .end local v0    # "i":I
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 5195
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 5196
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    .line 5197
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    if-eqz v2, :cond_12

    .line 5198
    const/16 v3, 0xf

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5195
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5202
    .end local v0    # "i":I
    :cond_13
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    if-eqz v0, :cond_14

    .line 5203
    const/16 v0, 0x13

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5205
    :cond_14
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    if-eqz v0, :cond_15

    .line 5206
    const/16 v0, 0x14

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5208
    :cond_15
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    if-eqz v0, :cond_16

    .line 5209
    const/16 v0, 0x15

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5211
    :cond_16
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    if-eqz v0, :cond_17

    .line 5212
    const/16 v0, 0x16

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5214
    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    if-eqz v0, :cond_18

    .line 5215
    const/16 v0, 0x17

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5217
    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    if-eqz v0, :cond_19

    .line 5218
    const/16 v0, 0x18

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5220
    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    if-eqz v0, :cond_1a

    .line 5221
    const/16 v0, 0x19

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5223
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 5224
    move v0, v1

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 5225
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5226
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_1b

    .line 5227
    const/16 v3, 0x1a

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5224
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5231
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_1e

    .line 5232
    move v0, v1

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 5233
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5234
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_1d

    .line 5235
    const/16 v3, 0x1b

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5232
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5239
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_20

    .line 5240
    move v0, v1

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 5241
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5242
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_1f

    .line 5243
    const/16 v3, 0x1c

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5240
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5247
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_22

    .line 5248
    move v0, v1

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 5249
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5250
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_21

    .line 5251
    const/16 v3, 0x1d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5248
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5255
    .end local v0    # "i":I
    :cond_22
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_24

    .line 5256
    move v0, v1

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 5257
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5258
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_23

    .line 5259
    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5256
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5263
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_26

    .line 5264
    move v0, v1

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 5265
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5266
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_25

    .line 5267
    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5264
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5271
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_28

    .line 5272
    move v0, v1

    .restart local v0    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 5273
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5274
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_27

    .line 5275
    const/16 v3, 0x20

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5272
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5279
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_2a

    .line 5280
    move v0, v1

    .restart local v0    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 5281
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5282
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_29

    .line 5283
    const/16 v3, 0x21

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5280
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 5287
    .end local v0    # "i":I
    :cond_2a
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b

    .line 5288
    const/16 v0, 0x22

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5290
    :cond_2b
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2c

    .line 5291
    const/16 v0, 0x23

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5293
    :cond_2c
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2d

    .line 5294
    const/16 v0, 0x24

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5296
    :cond_2d
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2e

    .line 5297
    const/16 v0, 0x25

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5299
    :cond_2e
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2f

    .line 5300
    const/16 v0, 0x26

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5302
    :cond_2f
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_30

    .line 5303
    const/16 v0, 0x27

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5305
    :cond_30
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_31

    .line 5306
    const/16 v0, 0x28

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5308
    :cond_31
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    if-eqz v0, :cond_32

    .line 5309
    const/16 v0, 0x29

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5311
    :cond_32
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    if-eqz v0, :cond_33

    .line 5312
    const/16 v0, 0x2a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5314
    :cond_33
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    if-eqz v0, :cond_34

    .line 5315
    const/16 v0, 0x2b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5317
    :cond_34
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    if-eqz v0, :cond_35

    .line 5318
    const/16 v0, 0x2c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5320
    :cond_35
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_37

    .line 5321
    move v0, v1

    .restart local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    .line 5322
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 5323
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v2, :cond_36

    .line 5324
    const/16 v3, 0x2d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5321
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 5328
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_39

    .line 5329
    nop

    .local v1, "i":I
    :goto_e
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 5330
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v1, v1, v0

    .line 5331
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    if-eqz v1, :cond_38

    .line 5332
    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5329
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    :cond_38
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_e

    .line 5336
    .end local v1    # "i":I
    :cond_39
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    if-eqz v0, :cond_3a

    .line 5337
    const/16 v0, 0x2f

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5339
    :cond_3a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    if-eqz v0, :cond_3b

    .line 5340
    const/16 v0, 0x30

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5342
    :cond_3b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    if-eqz v0, :cond_3c

    .line 5343
    const/16 v0, 0x31

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5345
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5346
    return-void
.end method
