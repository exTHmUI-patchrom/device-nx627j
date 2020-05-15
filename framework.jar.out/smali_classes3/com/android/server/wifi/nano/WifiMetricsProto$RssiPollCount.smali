.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RssiPollCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;


# instance fields
.field public count:I

.field public frequency:I

.field public rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3529
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3530
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 3531
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 2

    .line 3509
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v0, :cond_1

    .line 3510
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3512
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v1, :cond_0

    .line 3513
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 3515
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3517
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3613
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3607
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 1

    .line 3534
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 3535
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    .line 3536
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    .line 3537
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->cachedSize:I

    .line 3538
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3558
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3559
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    if-eqz v1, :cond_0

    .line 3560
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 3561
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3563
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    if-eqz v1, :cond_1

    .line 3564
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    .line 3565
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3567
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    if-eqz v1, :cond_2

    .line 3568
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    .line 3569
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3571
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

    .line 3503
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3579
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3580
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 3584
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3585
    return-object p0

    .line 3598
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 3594
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    .line 3595
    goto :goto_1

    .line 3590
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 3591
    nop

    .line 3602
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 3582
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

    .line 3544
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    if-eqz v0, :cond_0

    .line 3545
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3547
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    if-eqz v0, :cond_1

    .line 3548
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3550
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    if-eqz v0, :cond_2

    .line 3551
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->frequency:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3553
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3554
    return-void
.end method
