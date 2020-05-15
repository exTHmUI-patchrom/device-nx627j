.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;


# instance fields
.field public allowedAuthAlgorithms:I

.field public allowedGroupCiphers:I

.field public allowedKeyManagement:I

.field public allowedPairwiseCiphers:I

.field public allowedProtocols:I

.field public hasEverConnected:Z

.field public hiddenSsid:Z

.field public isEphemeral:Z

.field public isPasspoint:Z

.field public scanFreq:I

.field public scanRssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4163
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 4164
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 4165
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 2

    .line 4119
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v0, :cond_1

    .line 4120
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4122
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v1, :cond_0

    .line 4123
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 4125
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4127
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4343
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4337
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 1

    .line 4168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    .line 4169
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    .line 4170
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    .line 4171
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    .line 4172
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    .line 4173
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    .line 4174
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    .line 4175
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    .line 4176
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    .line 4177
    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    .line 4178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    .line 4179
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->cachedSize:I

    .line 4180
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 4224
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 4225
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    if-eqz v1, :cond_0

    .line 4226
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    .line 4227
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4229
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    if-eqz v1, :cond_1

    .line 4230
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    .line 4231
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4233
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    if-eqz v1, :cond_2

    .line 4234
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    .line 4235
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4237
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    if-eqz v1, :cond_3

    .line 4238
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    .line 4239
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4241
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    if-eqz v1, :cond_4

    .line 4242
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    .line 4243
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4245
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    if-eqz v1, :cond_5

    .line 4246
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    .line 4247
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4249
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    if-eqz v1, :cond_6

    .line 4250
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    .line 4251
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4253
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    if-eqz v1, :cond_7

    .line 4254
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    .line 4255
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4257
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    if-eqz v1, :cond_8

    .line 4258
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    .line 4259
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4261
    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_9

    .line 4262
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    .line 4263
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4265
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 4266
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    .line 4267
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4269
    :cond_a
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4113
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4277
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4278
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4282
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4283
    return-object p0

    .line 4328
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 4324
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    .line 4325
    goto :goto_1

    .line 4320
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    .line 4321
    goto :goto_1

    .line 4316
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    .line 4317
    goto :goto_1

    .line 4312
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    .line 4313
    goto :goto_1

    .line 4308
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    .line 4309
    goto :goto_1

    .line 4304
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    .line 4305
    goto :goto_1

    .line 4300
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    .line 4301
    goto :goto_1

    .line 4296
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    .line 4297
    goto :goto_1

    .line 4292
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    .line 4293
    goto :goto_1

    .line 4288
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    .line 4289
    goto :goto_1

    .line 4280
    :sswitch_b
    return-object p0

    .line 4332
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4186
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    if-eqz v0, :cond_0

    .line 4187
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4189
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    if-eqz v0, :cond_1

    .line 4190
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4192
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    if-eqz v0, :cond_2

    .line 4193
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4195
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    if-eqz v0, :cond_3

    .line 4196
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4198
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    if-eqz v0, :cond_4

    .line 4199
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4201
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    if-eqz v0, :cond_5

    .line 4202
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4204
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    if-eqz v0, :cond_6

    .line 4205
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4207
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    if-eqz v0, :cond_7

    .line 4208
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4210
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    if-eqz v0, :cond_8

    .line 4211
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4213
    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_9

    .line 4214
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4216
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 4217
    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4219
    :cond_a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4220
    return-void
.end method
