.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    }
.end annotation


# static fields
.field public static final AUTH_FAILURE_EAP_FAILURE:I = 0x4

.field public static final AUTH_FAILURE_NONE:I = 0x1

.field public static final AUTH_FAILURE_TIMEOUT:I = 0x2

.field public static final AUTH_FAILURE_UNKNOWN:I = 0x0

.field public static final AUTH_FAILURE_WRONG_PSWD:I = 0x3

.field public static final DISCONNECT_API:I = 0x1

.field public static final DISCONNECT_GENERIC:I = 0x2

.field public static final DISCONNECT_P2P_DISCONNECT_WIFI_REQUEST:I = 0x5

.field public static final DISCONNECT_RESET_SIM_NETWORKS:I = 0x6

.field public static final DISCONNECT_ROAM_WATCHDOG_TIMER:I = 0x4

.field public static final DISCONNECT_UNKNOWN:I = 0x0

.field public static final DISCONNECT_UNWANTED:I = 0x3

.field public static final STATE_ASSOCIATED:I = 0x6

.field public static final STATE_ASSOCIATING:I = 0x5

.field public static final STATE_AUTHENTICATING:I = 0x4

.field public static final STATE_COMPLETED:I = 0x9

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DORMANT:I = 0xa

.field public static final STATE_FOUR_WAY_HANDSHAKE:I = 0x7

.field public static final STATE_GROUP_HANDSHAKE:I = 0x8

.field public static final STATE_INACTIVE:I = 0x2

.field public static final STATE_INTERFACE_DISABLED:I = 0x1

.field public static final STATE_INVALID:I = 0xc

.field public static final STATE_SCANNING:I = 0x3

.field public static final STATE_UNINITIALIZED:I = 0xb

.field public static final TYPE_ASSOCIATION_REJECTION_EVENT:I = 0x1

.field public static final TYPE_AUTHENTICATION_FAILURE_EVENT:I = 0x2

.field public static final TYPE_CMD_ASSOCIATED_BSSID:I = 0x6

.field public static final TYPE_CMD_IP_CONFIGURATION_LOST:I = 0x8

.field public static final TYPE_CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x7

.field public static final TYPE_CMD_IP_REACHABILITY_LOST:I = 0x9

.field public static final TYPE_CMD_START_CONNECT:I = 0xb

.field public static final TYPE_CMD_START_ROAM:I = 0xc

.field public static final TYPE_CMD_TARGET_BSSID:I = 0xa

.field public static final TYPE_CONNECT_NETWORK:I = 0xd

.field public static final TYPE_FRAMEWORK_DISCONNECT:I = 0xf

.field public static final TYPE_MAC_CHANGE:I = 0x11

.field public static final TYPE_NETWORK_AGENT_VALID_NETWORK:I = 0xe

.field public static final TYPE_NETWORK_CONNECTION_EVENT:I = 0x3

.field public static final TYPE_NETWORK_DISCONNECTION_EVENT:I = 0x4

.field public static final TYPE_SCORE_BREACH:I = 0x10

.field public static final TYPE_SUPPLICANT_STATE_CHANGE_EVENT:I = 0x5

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WIFI_DISABLED:I = 0x13

.field public static final TYPE_WIFI_ENABLED:I = 0x12

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;


# instance fields
.field public associationTimedOut:Z

.field public authFailureReason:I

.field public configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

.field public frameworkDisconnectReason:I

.field public lastFreq:I

.field public lastLinkSpeed:I

.field public lastRssi:I

.field public lastScore:I

.field public localGen:Z

.field public reason:I

.field public startTimeMillis:J

.field public status:I

.field public supplicantStateChangesBitmask:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4403
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 4404
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 4405
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .locals 2

    .line 4350
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v0, :cond_1

    .line 4351
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4353
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v1, :cond_0

    .line 4354
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 4356
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4358
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4666
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4660
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .locals 4

    .line 4408
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 4409
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    .line 4410
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    .line 4411
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    .line 4412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 4413
    const/16 v2, -0x7f

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    .line 4414
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    .line 4415
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    .line 4416
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    .line 4417
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    .line 4418
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    .line 4419
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    .line 4420
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 4421
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    .line 4422
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->cachedSize:I

    .line 4423
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 4476
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 4477
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    if-eqz v1, :cond_0

    .line 4478
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 4479
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4481
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4482
    const/4 v1, 0x2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    .line 4483
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4485
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    if-eq v1, v2, :cond_2

    .line 4486
    const/4 v1, 0x3

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    .line 4487
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4489
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    if-eqz v1, :cond_3

    .line 4490
    const/4 v1, 0x4

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    .line 4491
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4493
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-eqz v1, :cond_4

    .line 4494
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 4495
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4497
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/16 v3, -0x7f

    if-eq v1, v3, :cond_5

    .line 4498
    const/4 v1, 0x6

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    .line 4499
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4501
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    if-eq v1, v2, :cond_6

    .line 4502
    const/4 v1, 0x7

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    .line 4503
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4505
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    if-eq v1, v2, :cond_7

    .line 4506
    const/16 v1, 0x8

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    .line 4507
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4509
    :cond_7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    if-eqz v1, :cond_8

    .line 4510
    const/16 v1, 0x9

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    .line 4511
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4513
    :cond_8
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    .line 4514
    const/16 v1, 0xa

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    .line 4515
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4517
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    if-eqz v1, :cond_a

    .line 4518
    const/16 v1, 0xb

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    .line 4519
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4521
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    if-eqz v1, :cond_b

    .line 4522
    const/16 v1, 0xc

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    .line 4523
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4525
    :cond_b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    if-eqz v1, :cond_c

    .line 4526
    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 4527
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4529
    :cond_c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    if-eq v1, v2, :cond_d

    .line 4530
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    .line 4531
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4533
    :cond_d
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4057
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4541
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4542
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4546
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4547
    return-object p0

    .line 4651
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    .end local v0    # "tag":I
    goto/16 :goto_4

    .line 4638
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 4639
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4645
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    .line 4648
    :goto_1
    goto/16 :goto_4

    .line 4634
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    .line 4635
    goto :goto_4

    .line 4619
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 4620
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 4628
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    .line 4631
    :goto_2
    goto :goto_4

    .line 4615
    .end local v1    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    .line 4616
    goto :goto_4

    .line 4611
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    .line 4612
    goto :goto_4

    .line 4607
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    .line 4608
    goto :goto_4

    .line 4603
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    .line 4604
    goto :goto_4

    .line 4599
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    .line 4600
    goto :goto_4

    .line 4592
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v1, :cond_0

    .line 4593
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    .line 4595
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4596
    goto :goto_4

    .line 4588
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    .line 4589
    goto :goto_4

    .line 4584
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    .line 4585
    goto :goto_4

    .line 4580
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    .line 4581
    goto :goto_4

    .line 4552
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 4553
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_2

    goto :goto_3

    .line 4574
    :pswitch_2
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    .line 4577
    :goto_3
    goto :goto_4

    .line 4544
    .end local v1    # "value":I
    :sswitch_e
    return-object p0

    .line 4655
    .end local v0    # "tag":I
    :cond_1
    :goto_4
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4429
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    if-eqz v0, :cond_0

    .line 4430
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4432
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4433
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4435
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    if-eq v0, v1, :cond_2

    .line 4436
    const/4 v0, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4438
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    if-eqz v0, :cond_3

    .line 4439
    const/4 v0, 0x4

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4441
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-eqz v0, :cond_4

    .line 4442
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4444
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/16 v2, -0x7f

    if-eq v0, v2, :cond_5

    .line 4445
    const/4 v0, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4447
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    if-eq v0, v1, :cond_6

    .line 4448
    const/4 v0, 0x7

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4450
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    if-eq v0, v1, :cond_7

    .line 4451
    const/16 v0, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4453
    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    if-eqz v0, :cond_8

    .line 4454
    const/16 v0, 0x9

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4456
    :cond_8
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 4457
    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4459
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    if-eqz v0, :cond_a

    .line 4460
    const/16 v0, 0xb

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4462
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    if-eqz v0, :cond_b

    .line 4463
    const/16 v0, 0xc

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4465
    :cond_b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    if-eqz v0, :cond_c

    .line 4466
    const/16 v0, 0xd

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4468
    :cond_c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    if-eq v0, v1, :cond_d

    .line 4469
    const/16 v0, 0xe

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastScore:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4471
    :cond_d
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4472
    return-void
.end method
