.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;


# instance fields
.field public callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

.field public endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

.field public events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

.field public eventsDropped:Z

.field public hardwareRevision:Ljava/lang/String;

.field public histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

.field public modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

.field public smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

.field public startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    .line 186
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 2

    .line 146
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    if-nez v1, :cond_0

    .line 150
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    .line 152
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 154
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 448
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 2

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 190
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 195
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 196
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 197
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->cachedSize:I

    .line 200
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 258
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 259
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 260
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    aget-object v3, v3, v0

    .line 262
    .local v3, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    if-eqz v3, :cond_0

    .line 263
    nop

    .line 264
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 260
    .end local v3    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_1
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 269
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    aget-object v3, v3, v0

    .line 271
    .local v3, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    if-eqz v3, :cond_3

    .line 272
    const/4 v4, 0x2

    .line 273
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 269
    .end local v3    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "i":I
    :cond_4
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 278
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    aget-object v3, v3, v0

    .line 280
    .local v3, "element":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    if-eqz v3, :cond_6

    .line 281
    const/4 v4, 0x3

    .line 282
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 278
    .end local v3    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 286
    .end local v0    # "i":I
    :cond_7
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 287
    nop

    .local v2, "i":I
    :goto_3
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    aget-object v2, v2, v1

    .line 289
    .local v2, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    if-eqz v2, :cond_9

    .line 290
    const/4 v3, 0x4

    .line 291
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 287
    .end local v2    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    :cond_9
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_3

    .line 295
    .end local v2    # "i":I
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    if-eqz v1, :cond_b

    .line 296
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 297
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v1, :cond_c

    .line 300
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 301
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v1, :cond_d

    .line 304
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 305
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-eqz v1, :cond_e

    .line 308
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 309
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 312
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 313
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_f
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 6
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 324
    .local v0, "tag":I
    if-eqz v0, :cond_19

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    const/16 v1, 0x12

    if-eq v0, v1, :cond_10

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x28

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 329
    return-object p0

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .end local v0    # "tag":I
    goto/16 :goto_9

    .line 432
    .restart local v0    # "tag":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v1, :cond_2

    .line 433
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 436
    goto/16 :goto_9

    .line 425
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v1, :cond_4

    .line 426
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 429
    goto/16 :goto_9

    .line 418
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v1, :cond_6

    .line 419
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 421
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 422
    goto/16 :goto_9

    .line 414
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 415
    goto/16 :goto_9

    .line 394
    :cond_8
    nop

    .line 395
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 396
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v3, v3

    .line 397
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 399
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_a

    .line 400
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_a
    :goto_2
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_b

    .line 403
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v2, v4, v3

    .line 404
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 405
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 408
    :cond_b
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v2, v4, v3

    .line 409
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 410
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 411
    goto/16 :goto_9

    .line 374
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    :cond_c
    nop

    .line 375
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 376
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_3

    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v3, v3

    .line 377
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 379
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    if-eqz v3, :cond_e

    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    :cond_e
    :goto_4
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_f

    .line 383
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    aput-object v2, v4, v3

    .line 384
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 388
    :cond_f
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    aput-object v2, v4, v3

    .line 389
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 390
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 391
    goto/16 :goto_9

    .line 354
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    :cond_10
    nop

    .line 355
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 356
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_5

    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v3, v3

    .line 357
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 359
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    if-eqz v3, :cond_12

    .line 360
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    :cond_12
    :goto_6
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_13

    .line 363
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v2, v4, v3

    .line 364
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 365
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 368
    :cond_13
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v2, v4, v3

    .line 369
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 370
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 371
    goto :goto_9

    .line 334
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    :cond_14
    nop

    .line 335
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 336
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v3, :cond_15

    move v3, v2

    goto :goto_7

    :cond_15
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v3, v3

    .line 337
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 339
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    if-eqz v3, :cond_16

    .line 340
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_16
    :goto_8
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_17

    .line 343
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v2, v4, v3

    .line 344
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 345
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 348
    :cond_17
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v2, v4, v3

    .line 349
    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 350
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 351
    nop

    .line 443
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    :cond_18
    :goto_9
    goto/16 :goto_0

    .line 326
    .restart local v0    # "tag":I
    :cond_19
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 207
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    aget-object v2, v2, v0

    .line 209
    .local v2, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    .line 210
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 207
    .end local v2    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 215
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    aget-object v2, v2, v0

    .line 217
    .local v2, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    if-eqz v2, :cond_2

    .line 218
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 215
    .end local v2    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 223
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    aget-object v2, v2, v0

    .line 225
    .local v2, "element":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    if-eqz v2, :cond_4

    .line 226
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 223
    .end local v2    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 230
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 231
    nop

    .local v1, "i":I
    :goto_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    aget-object v1, v1, v0

    .line 233
    .local v1, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    if-eqz v1, :cond_6

    .line 234
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 231
    .end local v1    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_3

    .line 238
    .end local v1    # "i":I
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    if-eqz v0, :cond_8

    .line 239
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v0, :cond_9

    .line 242
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v0, :cond_a

    .line 245
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-eqz v0, :cond_b

    .line 248
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 250
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 251
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 254
    return-void
.end method
