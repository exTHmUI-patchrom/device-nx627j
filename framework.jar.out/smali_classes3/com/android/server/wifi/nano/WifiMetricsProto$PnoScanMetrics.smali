.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PnoScanMetrics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;


# instance fields
.field public numPnoFoundNetworkEvents:I

.field public numPnoScanAttempts:I

.field public numPnoScanFailed:I

.field public numPnoScanFailedOverOffload:I

.field public numPnoScanStartedOverOffload:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6199
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 6200
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 6201
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;
    .locals 2

    .line 6173
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-nez v0, :cond_1

    .line 6174
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6176
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-nez v1, :cond_0

    .line 6177
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 6179
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6181
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6307
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6301
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;
    .locals 1

    .line 6204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    .line 6205
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    .line 6206
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    .line 6207
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    .line 6208
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    .line 6209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->cachedSize:I

    .line 6210
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 6236
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 6237
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    if-eqz v1, :cond_0

    .line 6238
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    .line 6239
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6241
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    if-eqz v1, :cond_1

    .line 6242
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    .line 6243
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6245
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    if-eqz v1, :cond_2

    .line 6246
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    .line 6247
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6249
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    if-eqz v1, :cond_3

    .line 6250
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    .line 6251
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6253
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    if-eqz v1, :cond_4

    .line 6254
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    .line 6255
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6257
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

    .line 6167
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6265
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6266
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

    .line 6270
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6271
    return-object p0

    .line 6292
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 6288
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    .line 6289
    goto :goto_1

    .line 6284
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    .line 6285
    goto :goto_1

    .line 6280
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    .line 6281
    goto :goto_1

    .line 6276
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    .line 6277
    nop

    .line 6296
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 6268
    .restart local v0    # "tag":I
    :cond_6
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

    .line 6216
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    if-eqz v0, :cond_0

    .line 6217
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanAttempts:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6219
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    if-eqz v0, :cond_1

    .line 6220
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailed:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6222
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    if-eqz v0, :cond_2

    .line 6223
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanStartedOverOffload:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6225
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    if-eqz v0, :cond_3

    .line 6226
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoScanFailedOverOffload:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6228
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    if-eqz v0, :cond_4

    .line 6229
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;->numPnoFoundNetworkEvents:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6231
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6232
    return-void
.end method
