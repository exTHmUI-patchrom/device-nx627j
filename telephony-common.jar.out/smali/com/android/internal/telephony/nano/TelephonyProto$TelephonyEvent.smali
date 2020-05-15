.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# instance fields
.field public carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

.field public carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

.field public dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public dataStallAction:I

.field public deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

.field public error:I

.field public imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

.field public nitzTimestampMillis:J

.field public phoneId:I

.field public serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

.field public setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

.field public timestampMillis:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3166
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3167
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 3168
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 2

    .line 3104
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v0, :cond_1

    .line 3105
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3107
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v1, :cond_0

    .line 3108
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 3110
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3112
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3569
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3563
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 5

    .line 3171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    .line 3172
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    .line 3173
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 3174
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 3175
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 3176
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 3177
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 3178
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 3179
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    .line 3180
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 3181
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 3182
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 3183
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    .line 3184
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 3185
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    .line 3186
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 3187
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 3188
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 3189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->cachedSize:I

    .line 3190
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 3257
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3258
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3259
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    .line 3260
    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3262
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    if-eqz v1, :cond_1

    .line 3263
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    .line 3264
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3266
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-eqz v1, :cond_2

    .line 3267
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 3268
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3270
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_3

    .line 3271
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 3272
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3274
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_4

    .line 3275
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 3276
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3278
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_5

    .line 3279
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 3280
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3282
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_6

    .line 3283
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 3284
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3286
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 3287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 3288
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    aget-object v2, v2, v1

    .line 3289
    .local v2, "element":Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    if-eqz v2, :cond_7

    .line 3290
    const/16 v5, 0x8

    .line 3291
    invoke-static {v5, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 3287
    .end local v2    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3295
    .end local v1    # "i":I
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    if-eqz v1, :cond_9

    .line 3296
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    .line 3297
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3299
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v1, :cond_a

    .line 3300
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 3301
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3303
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v1, :cond_b

    .line 3304
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 3305
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3307
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v1, :cond_c

    .line 3308
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 3309
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3311
    :cond_c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    if-eqz v1, :cond_d

    .line 3312
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    .line 3313
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3315
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v1, :cond_e

    .line 3316
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 3317
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3319
    :cond_e
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    .line 3320
    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    .line 3321
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3323
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-eqz v1, :cond_10

    .line 3324
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 3325
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3327
    :cond_10
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-eqz v1, :cond_11

    .line 3328
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 3329
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3331
    :cond_11
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 6
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3339
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3340
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3344
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3345
    return-object p0

    .line 3551
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v1, :cond_0

    .line 3552
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 3554
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto/16 :goto_3

    .line 3544
    .restart local v0    # "tag":I
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-nez v1, :cond_1

    .line 3545
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 3547
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3548
    goto/16 :goto_3

    .line 3540
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    .line 3541
    goto/16 :goto_3

    .line 3533
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-nez v1, :cond_2

    .line 3534
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 3536
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3537
    goto/16 :goto_3

    .line 3529
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    .line 3530
    goto/16 :goto_3

    .line 3522
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-nez v1, :cond_3

    .line 3523
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 3525
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3526
    goto/16 :goto_3

    .line 3515
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-nez v1, :cond_4

    .line 3516
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 3518
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3519
    goto/16 :goto_3

    .line 3508
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-nez v1, :cond_5

    .line 3509
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 3511
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3512
    goto/16 :goto_3

    .line 3434
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 3435
    .local v1, "initialPos":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 3436
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 3501
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3502
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    .line 3503
    goto/16 :goto_3

    .line 3498
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    .line 3499
    goto/16 :goto_3

    .line 3414
    .end local v1    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_9
    const/16 v1, 0x42

    .line 3415
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 3416
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v3, 0x0

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v2, v2

    .line 3417
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 3419
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    if-eqz v2, :cond_7

    .line 3420
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3422
    :cond_7
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_8

    .line 3423
    new-instance v3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v3, v4, v2

    .line 3424
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3425
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3422
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3428
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v3, v4, v2

    .line 3429
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3430
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 3431
    goto :goto_3

    .line 3407
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v1, :cond_9

    .line 3408
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 3410
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3411
    goto :goto_3

    .line 3400
    :sswitch_b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v1, :cond_a

    .line 3401
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 3403
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3404
    goto :goto_3

    .line 3393
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v1, :cond_b

    .line 3394
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 3396
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3397
    goto :goto_3

    .line 3386
    :sswitch_d
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v1, :cond_c

    .line 3387
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 3389
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3390
    goto :goto_3

    .line 3358
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 3359
    .local v1, "initialPos":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 3360
    .local v2, "value":I
    packed-switch v2, :pswitch_data_2

    .line 3379
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3380
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    .line 3381
    goto :goto_3

    .line 3376
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 3377
    goto :goto_3

    .line 3354
    .end local v1    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    .line 3355
    goto :goto_3

    .line 3350
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    .line 3351
    goto :goto_3

    .line 3342
    :sswitch_11
    return-object p0

    .line 3558
    .end local v0    # "tag":I
    :cond_d
    :goto_3
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x18 -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x48 -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x68 -> :sswitch_4
        0x72 -> :sswitch_3
        0x78 -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2063
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3196
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3197
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3199
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    if-eqz v0, :cond_1

    .line 3200
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3202
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-eqz v0, :cond_2

    .line 3203
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3205
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_3

    .line 3206
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3208
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_4

    .line 3209
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3211
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_5

    .line 3212
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3214
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_6

    .line 3215
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3217
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 3218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 3219
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    aget-object v1, v1, v0

    .line 3220
    .local v1, "element":Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_7

    .line 3221
    const/16 v4, 0x8

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3218
    .end local v1    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3225
    .end local v0    # "i":I
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    if-eqz v0, :cond_9

    .line 3226
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3228
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v0, :cond_a

    .line 3229
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3231
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v0, :cond_b

    .line 3232
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3234
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v0, :cond_c

    .line 3235
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3237
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    if-eqz v0, :cond_d

    .line 3238
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3240
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v0, :cond_e

    .line 3241
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3243
    :cond_e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 3244
    const/16 v0, 0xf

    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3246
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-eqz v0, :cond_10

    .line 3247
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3249
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-eqz v0, :cond_11

    .line 3250
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 3252
    :cond_11
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3253
    return-void
.end method
