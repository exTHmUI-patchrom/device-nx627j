.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiSystemStateEntry"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# instance fields
.field public isScreenOn:Z

.field public wifiState:I

.field public wifiStateCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 160
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 2

    .line 138
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v1, :cond_0

    .line 142
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 144
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 146
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 244
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 1

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    .line 164
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    .line 165
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->cachedSize:I

    .line 167
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 187
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 188
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    .line 190
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    if-eqz v1, :cond_1

    .line 193
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    .line 194
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    if-eqz v1, :cond_2

    .line 197
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    .line 198
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
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

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 209
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 213
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    .end local v0    # "tag":I
    goto :goto_2

    .line 231
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    .line 232
    goto :goto_2

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 220
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 225
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    .line 228
    :goto_1
    nop

    .line 239
    .end local v0    # "tag":I
    .end local v1    # "value":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 211
    .restart local v0    # "tag":I
    :cond_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 173
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 176
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 179
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 182
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 183
    return-void
.end method
