.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NanStatusHistogramBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;


# instance fields
.field public count:I

.field public nanStatusType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4827
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 4828
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 4829
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    .locals 2

    .line 4810
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v0, :cond_1

    .line 4811
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4813
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v1, :cond_0

    .line 4814
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 4816
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4818
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4918
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4912
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    .locals 1

    .line 4832
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    .line 4833
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    .line 4834
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->cachedSize:I

    .line 4835
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 4852
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 4853
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    if-eqz v1, :cond_0

    .line 4854
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    .line 4855
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4857
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    if-eqz v1, :cond_1

    .line 4858
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    .line 4859
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4861
    :cond_1
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4804
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4869
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4870
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 4874
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4875
    return-object p0

    .line 4903
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    .end local v0    # "tag":I
    goto :goto_2

    .line 4880
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 4881
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4897
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    .line 4900
    :goto_1
    nop

    .line 4907
    .end local v0    # "tag":I
    .end local v1    # "value":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 4872
    .restart local v0    # "tag":I
    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4841
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    if-eqz v0, :cond_0

    .line 4842
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->nanStatusType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4844
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    if-eqz v0, :cond_1

    .line 4845
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4847
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4848
    return-void
.end method
