.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 60
    const-string v1, "CdmaInboundSmsHandler"

    .line 61
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    .line 60
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 62
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 63
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 65
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 5
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .line 336
    add-int/lit8 p1, p1, 0x4

    .line 337
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 338
    .local v0, "omaPdu":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 340
    new-instance v1, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 341
    .local v1, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 344
    .local v3, "wspIndex":I
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    return v2

    .line 348
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/2addr v3, v4

    .line 351
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 352
    return v2

    .line 355
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 3
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v0

    .line 248
    .local v0, "voicemailCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voicemail count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 251
    if-gez v0, :cond_0

    .line 252
    const/4 v0, -0x1

    goto :goto_0

    .line 253
    :cond_0
    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 256
    const/16 v0, 0x63

    .line 259
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 260
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 87
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    .line 88
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I
    .locals 22
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "dispAddr"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    const/4 v2, 0x0

    .line 276
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "index":I
    aget-byte v2, v1, v2

    .end local v2    # "index":I
    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 277
    .local v2, "msgType":I
    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 278
    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 279
    return v5

    .line 281
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .local v6, "index":I
    aget-byte v3, v1, v3

    .end local v3    # "index":I
    and-int/2addr v3, v4

    .line 282
    .local v3, "totalSegments":I
    add-int/lit8 v7, v6, 0x1

    .local v7, "index":I
    aget-byte v6, v1, v6

    .end local v6    # "index":I
    and-int/2addr v6, v4

    .line 284
    .local v6, "segment":I
    if-lt v6, v3, :cond_1

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WDP bad segment #"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " expecting 0-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 286
    return v5

    .line 290
    :cond_1
    const/4 v5, 0x0

    .line 291
    .local v5, "sourcePort":I
    const/4 v8, 0x0

    .line 292
    .local v8, "destinationPort":I
    if-nez v6, :cond_3

    .line 294
    add-int/lit8 v9, v7, 0x1

    .local v9, "index":I
    aget-byte v7, v1, v7

    .end local v7    # "index":I
    and-int/2addr v7, v4

    shl-int/lit8 v5, v7, 0x8

    .line 295
    add-int/lit8 v7, v9, 0x1

    .restart local v7    # "index":I
    aget-byte v9, v1, v9

    .end local v9    # "index":I
    and-int/2addr v9, v4

    or-int/2addr v5, v9

    .line 296
    add-int/lit8 v9, v7, 0x1

    .restart local v9    # "index":I
    aget-byte v7, v1, v7

    .end local v7    # "index":I
    and-int/2addr v7, v4

    shl-int/lit8 v7, v7, 0x8

    .line 297
    .end local v8    # "destinationPort":I
    .local v7, "destinationPort":I
    add-int/lit8 v8, v9, 0x1

    .local v8, "index":I
    aget-byte v9, v1, v9

    .end local v9    # "index":I
    and-int/2addr v4, v9

    or-int/2addr v4, v7

    .line 300
    .end local v7    # "destinationPort":I
    .local v4, "destinationPort":I
    iget-boolean v7, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v7, :cond_2

    .line 301
    invoke-static {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 302
    add-int/lit8 v7, v8, 0x4

    .line 308
    .end local v8    # "index":I
    .local v7, "index":I
    move v15, v7

    goto :goto_0

    .end local v7    # "index":I
    .restart local v8    # "index":I
    :cond_2
    move v15, v8

    goto :goto_0

    .end local v4    # "destinationPort":I
    .restart local v7    # "index":I
    .local v8, "destinationPort":I
    :cond_3
    move v15, v7

    move v4, v8

    .end local v7    # "index":I
    .end local v8    # "destinationPort":I
    .restart local v4    # "destinationPort":I
    .local v15, "index":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received WAP PDU. Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", originator = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", src-port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", dst-port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", segment# = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 313
    array-length v7, v1

    sub-int/2addr v7, v15

    new-array v12, v7, [B

    .line 314
    .local v12, "userData":[B
    array-length v7, v1

    sub-int/2addr v7, v15

    const/4 v11, 0x0

    invoke-static {v1, v15, v12, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v7

    const/16 v16, 0x1

    const/16 v18, 0x1

    .line 318
    invoke-static {v12}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    .line 316
    move-object v8, v12

    move-wide/from16 v9, p5

    move v1, v11

    move v11, v4

    move-object/from16 v20, v12

    move/from16 v12, v16

    .end local v12    # "userData":[B
    .local v20, "userData":[B
    move-object v13, v14

    move-object/from16 v14, p4

    move/from16 v21, v15

    move/from16 v15, p2

    .end local v15    # "index":I
    .local v21, "index":I
    move/from16 v16, v6

    move/from16 v17, v3

    invoke-virtual/range {v7 .. v19}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v7

    .line 321
    .local v7, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .line 227
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 238
    const/16 v0, 0x27

    return v0

    .line 235
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 233
    :pswitch_1
    const/16 v0, 0x23

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 199
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 200
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 202
    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 205
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 206
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 13
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 108
    .local v0, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "isBroadcastType":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 112
    const-string v3, "Broadcast type message"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v3

    .line 114
    .local v3, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v3, :cond_1

    .line 115
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    :cond_1
    const-string v4, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 119
    :goto_1
    return v2

    .line 123
    .end local v3    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 125
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    return v2

    .line 130
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v3

    .line 133
    .local v3, "teleService":I
    const v4, 0xfdea

    if-eq v3, v4, :cond_5

    const/high16 v5, 0x40000

    if-eq v3, v5, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported teleservice 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x4

    return v2

    .line 149
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 150
    return v2

    .line 154
    :pswitch_1
    goto :goto_2

    .line 142
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 143
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 144
    return v2

    .line 137
    :cond_4
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 138
    return v2

    .line 158
    :cond_5
    nop

    .line 165
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v5

    if-nez v5, :cond_7

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v5, v6, :cond_7

    .line 170
    const/4 v2, 0x3

    return v2

    .line 173
    :cond_7
    const/16 v5, 0x1004

    if-ne v5, v3, :cond_8

    .line 174
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 175
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v11

    .line 174
    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I

    move-result v2

    return v2

    .line 177
    :cond_8
    if-ne v4, v3, :cond_a

    .line 180
    invoke-virtual {v0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 181
    return v2

    .line 183
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    iget v7, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 184
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 185
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v10

    .line 183
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I

    move-result v2

    return v2

    .line 188
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected is3gpp2()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 76
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 78
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 217
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 219
    return-void
.end method
