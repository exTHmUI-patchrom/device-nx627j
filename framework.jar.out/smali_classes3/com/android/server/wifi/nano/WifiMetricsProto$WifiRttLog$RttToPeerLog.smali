.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttToPeerLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;


# instance fields
.field public histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

.field public histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public numApps:I

.field public numIndividualRequests:I

.field public numRequests:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7508
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 7509
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 7510
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 2

    .line 7473
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-nez v0, :cond_1

    .line 7474
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7476
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-nez v1, :cond_0

    .line 7477
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    .line 7479
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7481
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7782
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7776
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 1

    .line 7513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    .line 7514
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    .line 7515
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    .line 7516
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7517
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7518
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    .line 7519
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7520
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7521
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->cachedSize:I

    .line 7522
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 7582
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 7583
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    if-eqz v1, :cond_0

    .line 7584
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    .line 7585
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7587
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    if-eqz v1, :cond_1

    .line 7588
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    .line 7589
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7591
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    if-eqz v1, :cond_2

    .line 7592
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    .line 7593
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7595
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 7596
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 7597
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 7598
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_3

    .line 7599
    const/4 v4, 0x4

    .line 7600
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 7596
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7604
    .end local v0    # "i":I
    :cond_4
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 7605
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 7606
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 7607
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_6

    .line 7608
    const/4 v4, 0x5

    .line 7609
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 7605
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7613
    .end local v0    # "i":I
    :cond_7
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 7614
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 7615
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    aget-object v3, v3, v0

    .line 7616
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    if-eqz v3, :cond_9

    .line 7617
    const/4 v4, 0x6

    .line 7618
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 7614
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7622
    .end local v0    # "i":I
    :cond_a
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 7623
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    .line 7624
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v3, v3, v0

    .line 7625
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_c

    .line 7626
    const/4 v4, 0x7

    .line 7627
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 7623
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7631
    .end local v0    # "i":I
    :cond_d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_10

    .line 7632
    nop

    .local v2, "i":I
    :goto_4
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 7633
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v1

    .line 7634
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v2, :cond_f

    .line 7635
    const/16 v3, 0x8

    .line 7636
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7632
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_f
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_4

    .line 7640
    .end local v2    # "i":I
    :cond_10
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7467
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7648
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7649
    .local v0, "tag":I
    if-eqz v0, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    const/16 v1, 0x18

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 7653
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 7654
    return-object p0

    .line 7751
    :cond_0
    nop

    .line 7752
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 7753
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    .line 7754
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7756
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_2

    .line 7757
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7759
    :cond_2
    :goto_2
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_3

    .line 7760
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7761
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7762
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7759
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7765
    :cond_3
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7766
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7767
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7768
    goto/16 :goto_b

    .line 7731
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_4
    nop

    .line 7732
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 7733
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    .line 7734
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7736
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_6

    .line 7737
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7739
    :cond_6
    :goto_4
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_7

    .line 7740
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7741
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7742
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7739
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 7745
    :cond_7
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7746
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7747
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7748
    goto/16 :goto_b

    .line 7711
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_8
    nop

    .line 7712
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 7713
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v3, v3

    .line 7714
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    .line 7716
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    if-eqz v3, :cond_a

    .line 7717
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7719
    :cond_a
    :goto_6
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_b

    .line 7720
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7721
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7722
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7719
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 7725
    :cond_b
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7726
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7727
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    .line 7728
    goto/16 :goto_b

    .line 7691
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    :cond_c
    nop

    .line 7692
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 7693
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    .line 7694
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7696
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_e

    .line 7697
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7699
    :cond_e
    :goto_8
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_f

    .line 7700
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7701
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7702
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7699
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 7705
    :cond_f
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7706
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7707
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7708
    goto :goto_b

    .line 7671
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_10
    nop

    .line 7672
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 7673
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    .line 7674
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7676
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v3, :cond_12

    .line 7677
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7679
    :cond_12
    :goto_a
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_13

    .line 7680
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7681
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7682
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7679
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 7685
    :cond_13
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    .line 7686
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7687
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7688
    goto :goto_b

    .line 7667
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    .line 7668
    goto :goto_b

    .line 7663
    :cond_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    .line 7664
    goto :goto_b

    .line 7659
    :cond_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    .line 7660
    nop

    .line 7771
    .end local v0    # "tag":I
    :cond_17
    :goto_b
    goto/16 :goto_0

    .line 7651
    .restart local v0    # "tag":I
    :cond_18
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7528
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    if-eqz v0, :cond_0

    .line 7529
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7531
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    if-eqz v0, :cond_1

    .line 7532
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7534
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    if-eqz v0, :cond_2

    .line 7535
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7537
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 7538
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 7539
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 7540
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v2, :cond_3

    .line 7541
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7538
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7545
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 7546
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 7547
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 7548
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v2, :cond_5

    .line 7549
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7546
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7553
    .end local v0    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 7554
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 7555
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    aget-object v2, v2, v0

    .line 7556
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    if-eqz v2, :cond_7

    .line 7557
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7554
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7561
    .end local v0    # "i":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 7562
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 7563
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v0

    .line 7564
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v2, :cond_9

    .line 7565
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7562
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7569
    .end local v0    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 7570
    nop

    .local v1, "i":I
    :goto_4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 7571
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v1, v1, v0

    .line 7572
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    if-eqz v1, :cond_b

    .line 7573
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7570
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    :cond_b
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_4

    .line 7577
    .end local v1    # "i":I
    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7578
    return-void
.end method
