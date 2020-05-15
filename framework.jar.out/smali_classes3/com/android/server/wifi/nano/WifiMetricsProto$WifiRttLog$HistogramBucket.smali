.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistogramBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;


# instance fields
.field public count:I

.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7812
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 7813
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7814
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 2

    .line 7792
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v0, :cond_1

    .line 7793
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7795
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v1, :cond_0

    .line 7796
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    .line 7798
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7800
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7896
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7890
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 2

    .line 7817
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    .line 7818
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    .line 7819
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    .line 7820
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->cachedSize:I

    .line 7821
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 7841
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 7842
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 7843
    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    .line 7844
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7846
    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 7847
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    .line 7848
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7850
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    if-eqz v1, :cond_2

    .line 7851
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    .line 7852
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7854
    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7786
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7862
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7863
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 7867
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7868
    return-object p0

    .line 7881
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 7877
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    .line 7878
    goto :goto_1

    .line 7873
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    .line 7874
    nop

    .line 7885
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 7865
    .restart local v0    # "tag":I
    :cond_4
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

    .line 7827
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7828
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->start:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7830
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 7831
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->end:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7833
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    if-eqz v0, :cond_2

    .line 7834
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7836
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7837
    return-void
.end method
