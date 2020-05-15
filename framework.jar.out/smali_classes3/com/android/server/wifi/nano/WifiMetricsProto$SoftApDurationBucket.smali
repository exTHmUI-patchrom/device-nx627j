.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftApDurationBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;


# instance fields
.field public bucketSizeSec:I

.field public count:I

.field public durationSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3841
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3842
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 3843
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 2

    .line 3821
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v0, :cond_1

    .line 3822
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3824
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v1, :cond_0

    .line 3825
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 3827
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3829
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3925
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3919
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 1

    .line 3846
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    .line 3847
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    .line 3848
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    .line 3849
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->cachedSize:I

    .line 3850
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3870
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3871
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    if-eqz v1, :cond_0

    .line 3872
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    .line 3873
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3875
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    if-eqz v1, :cond_1

    .line 3876
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    .line 3877
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3879
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    if-eqz v1, :cond_2

    .line 3880
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    .line 3881
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3883
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

    .line 3815
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3891
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3892
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 3896
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3897
    return-object p0

    .line 3910
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 3906
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    .line 3907
    goto :goto_1

    .line 3902
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    .line 3903
    nop

    .line 3914
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 3894
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3856
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    if-eqz v0, :cond_0

    .line 3857
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3859
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    if-eqz v0, :cond_1

    .line 3860
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3862
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    if-eqz v0, :cond_2

    .line 3863
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3865
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3866
    return-void
.end method
