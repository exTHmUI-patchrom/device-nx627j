.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertReasonCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;


# instance fields
.field public count:I

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3640
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3641
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 3642
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 2

    .line 3623
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v0, :cond_1

    .line 3624
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3626
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v1, :cond_0

    .line 3627
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 3629
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3631
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3712
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3706
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 1

    .line 3645
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 3646
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .line 3647
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->cachedSize:I

    .line 3648
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3665
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3666
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    if-eqz v1, :cond_0

    .line 3667
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 3668
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3670
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    if-eqz v1, :cond_1

    .line 3671
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .line 3672
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3674
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

    .line 3617
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3682
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3683
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 3687
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3688
    return-object p0

    .line 3697
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 3693
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 3694
    nop

    .line 3701
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 3685
    .restart local v0    # "tag":I
    :cond_3
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

    .line 3654
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    if-eqz v0, :cond_0

    .line 3655
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3657
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    if-eqz v0, :cond_1

    .line 3658
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3660
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3661
    return-void
.end method
