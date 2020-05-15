.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;


# instance fields
.field public initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

.field public lockedNetworksAtInitialize:I

.field public lockedNetworksAtStart:I

.field public resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

.field public startTimeMillis:J

.field public unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

.field public wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7133
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 7134
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7135
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 2

    .line 7101
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-nez v0, :cond_1

    .line 7102
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7104
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-nez v1, :cond_0

    .line 7105
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7107
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7109
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7277
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7271
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 2

    .line 7138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 7139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 7140
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 7141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7142
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7143
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7144
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->cachedSize:I

    .line 7146
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 7178
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 7179
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 7180
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 7181
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7183
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    if-eqz v1, :cond_1

    .line 7184
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 7185
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7187
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_2

    .line 7188
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7189
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7191
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_3

    .line 7192
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7193
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7195
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_4

    .line 7196
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7197
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7199
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    if-eqz v1, :cond_5

    .line 7200
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 7201
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7203
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_6

    .line 7204
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7205
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7207
    :cond_6
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6996
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7215
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7216
    .local v0, "tag":I
    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 7220
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 7221
    return-object p0

    .line 7259
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_1

    .line 7260
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7262
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_1

    .line 7255
    .restart local v0    # "tag":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 7256
    goto :goto_1

    .line 7248
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_4

    .line 7249
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7251
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7252
    goto :goto_1

    .line 7241
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_6

    .line 7242
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7244
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7245
    goto :goto_1

    .line 7234
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_8

    .line 7235
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7237
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7238
    goto :goto_1

    .line 7230
    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 7231
    goto :goto_1

    .line 7226
    :cond_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 7227
    nop

    .line 7266
    .end local v0    # "tag":I
    :cond_b
    :goto_1
    goto/16 :goto_0

    .line 7218
    .restart local v0    # "tag":I
    :cond_c
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7152
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7153
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7155
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    if-eqz v0, :cond_1

    .line 7156
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7158
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_2

    .line 7159
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7161
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_3

    .line 7162
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7164
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_4

    .line 7165
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7167
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    if-eqz v0, :cond_5

    .line 7168
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7170
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_6

    .line 7171
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7173
    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7174
    return-void
.end method
