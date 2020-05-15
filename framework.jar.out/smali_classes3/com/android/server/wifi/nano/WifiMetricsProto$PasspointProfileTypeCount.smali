.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PasspointProfileTypeCount"
.end annotation


# static fields
.field public static final TYPE_EAP_AKA:I = 0x4

.field public static final TYPE_EAP_AKA_PRIME:I = 0x5

.field public static final TYPE_EAP_SIM:I = 0x3

.field public static final TYPE_EAP_TLS:I = 0x1

.field public static final TYPE_EAP_TTLS:I = 0x2

.field public static final TYPE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;


# instance fields
.field public count:I

.field public eapMethodType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8322
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 8323
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    .line 8324
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    .locals 2

    .line 8305
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    if-nez v0, :cond_1

    .line 8306
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8308
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    if-nez v1, :cond_0

    .line 8309
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    .line 8311
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8313
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8404
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8398
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    .locals 1

    .line 8327
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    .line 8328
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    .line 8329
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->cachedSize:I

    .line 8330
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 8347
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 8348
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    if-eqz v1, :cond_0

    .line 8349
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    .line 8350
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8352
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    if-eqz v1, :cond_1

    .line 8353
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    .line 8354
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8356
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

    .line 8291
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8364
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8365
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 8369
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8370
    return-object p0

    .line 8389
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    .end local v0    # "tag":I
    goto :goto_2

    .line 8375
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 8376
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 8383
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    .line 8386
    :goto_1
    nop

    .line 8393
    .end local v0    # "tag":I
    .end local v1    # "value":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 8367
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

    .line 8336
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    if-eqz v0, :cond_0

    .line 8337
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->eapMethodType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8339
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    if-eqz v0, :cond_1

    .line 8340
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8342
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8343
    return-void
.end method
