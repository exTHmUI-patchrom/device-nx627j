.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumConnectableNetworksBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;


# instance fields
.field public count:I

.field public numConnectableNetworks:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6091
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 6092
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 6093
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .locals 2

    .line 6074
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v0, :cond_1

    .line 6075
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6077
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v1, :cond_0

    .line 6078
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 6080
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6082
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6163
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6157
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .locals 1

    .line 6096
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    .line 6097
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    .line 6098
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->cachedSize:I

    .line 6099
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 6116
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 6117
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    if-eqz v1, :cond_0

    .line 6118
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    .line 6119
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6121
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    if-eqz v1, :cond_1

    .line 6122
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    .line 6123
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6125
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

    .line 6068
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6133
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6134
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 6138
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6139
    return-object p0

    .line 6148
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 6144
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    .line 6145
    nop

    .line 6152
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 6136
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

    .line 6105
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    if-eqz v0, :cond_0

    .line 6106
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6108
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    if-eqz v0, :cond_1

    .line 6109
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6111
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6112
    return-void
.end method
