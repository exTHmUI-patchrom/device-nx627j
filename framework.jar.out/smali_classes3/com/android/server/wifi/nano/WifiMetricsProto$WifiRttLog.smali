.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiRttLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    }
.end annotation


# static fields
.field public static final ABORTED:I = 0x9

.field public static final FAILURE:I = 0x2

.field public static final FAIL_AP_ON_DIFF_CHANNEL:I = 0x7

.field public static final FAIL_BUSY_TRY_LATER:I = 0xd

.field public static final FAIL_FTM_PARAM_OVERRIDE:I = 0x10

.field public static final FAIL_INVALID_TS:I = 0xa

.field public static final FAIL_NOT_SCHEDULED_YET:I = 0x5

.field public static final FAIL_NO_CAPABILITY:I = 0x8

.field public static final FAIL_NO_RSP:I = 0x3

.field public static final FAIL_PROTOCOL:I = 0xb

.field public static final FAIL_REJECTED:I = 0x4

.field public static final FAIL_SCHEDULE:I = 0xc

.field public static final FAIL_TM_TIMEOUT:I = 0x6

.field public static final INVALID_REQ:I = 0xe

.field public static final MISSING_RESULT:I = 0x11

.field public static final NO_WIFI:I = 0xf

.field public static final OVERALL_AWARE_TRANSLATION_FAILURE:I = 0x7

.field public static final OVERALL_FAIL:I = 0x2

.field public static final OVERALL_HAL_FAILURE:I = 0x6

.field public static final OVERALL_LOCATION_PERMISSION_MISSING:I = 0x8

.field public static final OVERALL_RTT_NOT_AVAILABLE:I = 0x3

.field public static final OVERALL_SUCCESS:I = 0x1

.field public static final OVERALL_THROTTLE:I = 0x5

.field public static final OVERALL_TIMEOUT:I = 0x4

.field public static final OVERALL_UNKNOWN:I = 0x0

.field public static final SUCCESS:I = 0x1

.field public static final UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;


# instance fields
.field public histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

.field public numRequests:I

.field public rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

.field public rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8159
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 8160
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 8161
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    .locals 2

    .line 8136
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-nez v0, :cond_1

    .line 8137
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8139
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-nez v1, :cond_0

    .line 8140
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 8142
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8144
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8287
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8281
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    .locals 1

    .line 8164
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    .line 8165
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    .line 8166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 8167
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 8168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->cachedSize:I

    .line 8169
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 8197
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 8198
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    if-eqz v1, :cond_0

    .line 8199
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    .line 8200
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8202
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 8203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 8204
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    aget-object v2, v2, v1

    .line 8205
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    if-eqz v2, :cond_1

    .line 8206
    const/4 v3, 0x2

    .line 8207
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8203
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8211
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-eqz v1, :cond_3

    .line 8212
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 8213
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8215
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-eqz v1, :cond_4

    .line 8216
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 8217
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8219
    :cond_4
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7433
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8227
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8228
    .local v0, "tag":I
    if-eqz v0, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 8232
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 8233
    return-object p0

    .line 8269
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-nez v1, :cond_1

    .line 8270
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 8272
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_3

    .line 8262
    .restart local v0    # "tag":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-nez v1, :cond_3

    .line 8263
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 8265
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 8266
    goto :goto_3

    .line 8242
    :cond_4
    nop

    .line 8243
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 8244
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    array-length v2, v2

    .line 8245
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    .line 8247
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    if-eqz v2, :cond_6

    .line 8248
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8250
    :cond_6
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    .line 8251
    new-instance v3, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    invoke-direct {v3}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;-><init>()V

    aput-object v3, v4, v2

    .line 8252
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 8253
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8250
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8256
    :cond_7
    new-instance v3, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    invoke-direct {v3}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;-><init>()V

    aput-object v3, v4, v2

    .line 8257
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 8258
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    .line 8259
    goto :goto_3

    .line 8238
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    .line 8239
    nop

    .line 8276
    .end local v0    # "tag":I
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 8230
    .restart local v0    # "tag":I
    :cond_a
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8175
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    if-eqz v0, :cond_0

    .line 8176
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->numRequests:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8178
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 8179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 8180
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->histogramOverallStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;

    aget-object v1, v1, v0

    .line 8181
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    if-eqz v1, :cond_1

    .line 8182
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 8179
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttOverallStatusHistogramBucket;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8186
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-eqz v0, :cond_3

    .line 8187
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAp:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 8189
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-eqz v0, :cond_4

    .line 8190
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;->rttToAware:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 8192
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8193
    return-void
.end method
