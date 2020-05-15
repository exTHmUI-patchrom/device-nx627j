.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiWakeStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;


# instance fields
.field public numIgnoredStarts:I

.field public numSessions:I

.field public numWakeups:I

.field public sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7307
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 7308
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 7309
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    .locals 2

    .line 7284
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-nez v0, :cond_1

    .line 7285
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7287
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-nez v1, :cond_0

    .line 7288
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 7290
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7292
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7429
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7423
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    .locals 2

    .line 7312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    .line 7313
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7314
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    .line 7315
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    .line 7316
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->cachedSize:I

    .line 7317
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 7345
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 7346
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    if-eqz v1, :cond_0

    .line 7347
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    .line 7348
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7350
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 7351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 7352
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    aget-object v2, v2, v1

    .line 7353
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    if-eqz v2, :cond_1

    .line 7354
    const/4 v3, 0x2

    .line 7355
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7351
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7359
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    if-eqz v1, :cond_3

    .line 7360
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    .line 7361
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7363
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    if-eqz v1, :cond_4

    .line 7364
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    .line 7365
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7367
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

    .line 6993
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7375
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7376
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 7380
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7381
    return-object p0

    .line 7414
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    .end local v0    # "tag":I
    goto :goto_3

    .line 7410
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    .line 7411
    goto :goto_3

    .line 7390
    :cond_2
    nop

    .line 7391
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 7392
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    array-length v2, v2

    .line 7393
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7395
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    if-eqz v2, :cond_4

    .line 7396
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7398
    :cond_4
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 7399
    new-instance v3, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v3}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    aput-object v3, v4, v2

    .line 7400
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7401
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7398
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7404
    :cond_5
    new-instance v3, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v3}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    aput-object v3, v4, v2

    .line 7405
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7406
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7407
    goto :goto_3

    .line 7386
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    .line 7387
    nop

    .line 7418
    .end local v0    # "tag":I
    :cond_7
    :goto_3
    goto :goto_0

    .line 7378
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7323
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    if-eqz v0, :cond_0

    .line 7324
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7326
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 7327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 7328
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    aget-object v1, v1, v0

    .line 7329
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    if-eqz v1, :cond_1

    .line 7330
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7327
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7334
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    if-eqz v0, :cond_3

    .line 7335
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7337
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    if-eqz v0, :cond_4

    .line 7338
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7340
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7341
    return-void
.end method
