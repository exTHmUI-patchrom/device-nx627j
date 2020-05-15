.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLinkLayerUsageStats"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;


# instance fields
.field public loggingDurationMs:J

.field public radioOnTimeMs:J

.field public radioRxTimeMs:J

.field public radioScanTimeMs:J

.field public radioTxTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8440
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 8441
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 8442
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;
    .locals 2

    .line 8414
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    if-nez v0, :cond_1

    .line 8415
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8417
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    if-nez v1, :cond_0

    .line 8418
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 8420
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8422
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8548
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8542
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;
    .locals 2

    .line 8445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    .line 8446
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    .line 8447
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    .line 8448
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    .line 8449
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    .line 8450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->cachedSize:I

    .line 8451
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 8477
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 8478
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 8479
    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    .line 8480
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8482
    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 8483
    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    .line 8484
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8486
    :cond_1
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 8487
    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    .line 8488
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8490
    :cond_2
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 8491
    const/4 v1, 0x4

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    .line 8492
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8494
    :cond_3
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 8495
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    .line 8496
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8498
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

    .line 8408
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8506
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8507
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 8511
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 8512
    return-object p0

    .line 8533
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    .end local v0    # "tag":I
    goto :goto_1

    .line 8529
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    .line 8530
    goto :goto_1

    .line 8525
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    .line 8526
    goto :goto_1

    .line 8521
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    .line 8522
    goto :goto_1

    .line 8517
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    .line 8518
    nop

    .line 8537
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 8509
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8457
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 8458
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->loggingDurationMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8460
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 8461
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioOnTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8463
    :cond_1
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 8464
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioTxTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8466
    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 8467
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioRxTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8469
    :cond_3
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 8470
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;->radioScanTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8472
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8473
    return-void
.end method
