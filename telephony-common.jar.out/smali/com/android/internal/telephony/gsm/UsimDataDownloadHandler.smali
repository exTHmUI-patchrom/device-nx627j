.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# static fields
.field private static final BER_SMS_PP_DOWNLOAD_TAG:I = 0xd1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_UICC:I = 0x81

.field private static final EVENT_SEND_ENVELOPE_RESPONSE:I = 0x2

.field private static final EVENT_START_DATA_DOWNLOAD:I = 0x1

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UsimDataDownloadHandler"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 63
    return-void
.end method

.method private acknowledgeSmsWithError(I)V
    .locals 3
    .param p1, "cause"    # I

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 262
    return-void
.end method

.method private static getEnvelopeBodyLength(II)I
    .locals 2
    .param p0, "scAddressLength"    # I
    .param p1, "tpduLength"    # I

    .line 184
    add-int/lit8 v0, p1, 0x5

    .line 186
    .local v0, "length":I
    const/16 v1, 0x7f

    if-le p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 188
    if-eqz p0, :cond_1

    .line 189
    add-int/lit8 v1, v0, 0x2

    add-int v0, v1, p0

    .line 191
    :cond_1
    return v0
.end method

.method private handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 19
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object/from16 v0, p0

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v1

    .line 115
    .local v1, "dcs":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    .line 116
    .local v2, "pid":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v3

    .line 118
    .local v3, "pdu":[B
    const/4 v4, 0x0

    aget-byte v5, v3, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    .line 119
    .local v5, "scAddressLength":I
    add-int/lit8 v7, v5, 0x1

    .line 120
    .local v7, "tpduIndex":I
    array-length v8, v3

    sub-int/2addr v8, v7

    .line 122
    .local v8, "tpduLength":I
    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v9

    .line 126
    .local v9, "bodyLength":I
    add-int/lit8 v10, v9, 0x1

    const/16 v11, 0x7f

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-le v9, v11, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    add-int/2addr v10, v14

    .line 128
    .local v10, "totalLength":I
    new-array v14, v10, [B

    .line 129
    .local v14, "envelope":[B
    const/4 v15, 0x0

    .line 132
    .local v15, "index":I
    add-int/lit8 v16, v15, 0x1

    .local v16, "index":I
    const/16 v17, -0x2f

    aput-byte v17, v14, v15

    .line 133
    .end local v15    # "index":I
    const/16 v15, -0x7f

    if-le v9, v11, :cond_1

    .line 134
    add-int/lit8 v17, v16, 0x1

    .local v17, "index":I
    aput-byte v15, v14, v16

    .line 136
    .end local v16    # "index":I
    move/from16 v16, v17

    .end local v17    # "index":I
    .restart local v16    # "index":I
    :cond_1
    add-int/lit8 v17, v16, 0x1

    .restart local v17    # "index":I
    int-to-byte v4, v9

    aput-byte v4, v14, v16

    .line 139
    .end local v16    # "index":I
    add-int/lit8 v4, v17, 0x1

    .local v4, "index":I
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    const/16 v16, 0x80

    or-int v6, v16, v6

    int-to-byte v6, v6

    aput-byte v6, v14, v17

    .line 140
    .end local v17    # "index":I
    add-int/lit8 v6, v4, 0x1

    .local v6, "index":I
    aput-byte v12, v14, v4

    .line 141
    .end local v4    # "index":I
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "index":I
    const/16 v17, -0x7d

    aput-byte v17, v14, v6

    .line 142
    .end local v6    # "index":I
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "index":I
    aput-byte v15, v14, v4

    .line 145
    .end local v4    # "index":I
    if-eqz v5, :cond_2

    .line 146
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v14, v6

    .line 147
    .end local v6    # "index":I
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "index":I
    int-to-byte v12, v5

    aput-byte v12, v14, v4

    .line 148
    .end local v4    # "index":I
    invoke-static {v3, v13, v14, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 149
    add-int/2addr v6, v5

    .line 153
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int v12, v16, v12

    int-to-byte v12, v12

    aput-byte v12, v14, v6

    .line 154
    .end local v6    # "index":I
    if-le v8, v11, :cond_3

    .line 155
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "index":I
    aput-byte v15, v14, v4

    .line 157
    .end local v4    # "index":I
    move v4, v6

    .end local v6    # "index":I
    .restart local v4    # "index":I
    :cond_3
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "index":I
    int-to-byte v11, v8

    aput-byte v11, v14, v4

    .line 158
    .end local v4    # "index":I
    invoke-static {v3, v7, v14, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 159
    add-int/2addr v6, v8

    .line 162
    array-length v4, v14

    if-eq v6, v4, :cond_4

    .line 163
    const-string v4, "UsimDataDownloadHandler"

    const-string v11, "startDataDownload() calculated incorrect envelope length, aborting."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v4, 0xff

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 165
    return-void

    .line 168
    :cond_4
    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "encodedEnvelope":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x2

    new-array v15, v12, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    aput v2, v15, v13

    invoke-virtual {v0, v12, v15}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 171
    return-void
.end method

.method private static is7bitDcs(I)Z
    .locals 2
    .param p0, "dcs"    # I

    .line 272
    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_1

    and-int/lit16 v0, p0, 0xf4

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V
    .locals 11
    .param p1, "response"    # Lcom/android/internal/telephony/uicc/IccIoResult;
    .param p2, "dcs"    # I
    .param p3, "pid"    # I

    .line 200
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 201
    .local v0, "sw1":I
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 204
    .local v1, "sw2":I
    const/4 v2, 0x0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/16 v3, 0x91

    if-ne v0, v3, :cond_2

    .line 205
    :cond_1
    const-string v3, "UsimDataDownloadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USIM data download succeeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v3, 0x1

    .local v3, "success":Z
    :goto_0
    goto :goto_2

    .line 207
    .end local v3    # "success":Z
    :cond_2
    const/16 v3, 0x93

    if-ne v0, v3, :cond_3

    if-nez v1, :cond_3

    .line 208
    const-string v2, "UsimDataDownloadHandler"

    const-string v3, "USIM data download failed: Toolkit busy"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v2, 0xd4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 210
    return-void

    .line 211
    :cond_3
    const/16 v3, 0x62

    if-eq v0, v3, :cond_5

    const/16 v3, 0x63

    if-ne v0, v3, :cond_4

    goto :goto_1

    .line 215
    :cond_4
    const-string v3, "UsimDataDownloadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move v3, v2

    goto :goto_2

    .line 212
    :cond_5
    :goto_1
    const-string v3, "UsimDataDownloadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USIM data download failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    .restart local v3    # "success":Z
    :goto_2
    nop

    .line 219
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 220
    .local v4, "responseBytes":[B
    const/4 v5, 0x0

    if-eqz v4, :cond_9

    array-length v6, v4

    if-nez v6, :cond_6

    goto :goto_5

    .line 231
    :cond_6
    const/4 v6, 0x0

    .line 232
    .local v6, "index":I
    const/4 v7, 0x7

    if-eqz v3, :cond_7

    .line 233
    array-length v8, v4

    add-int/lit8 v8, v8, 0x5

    new-array v8, v8, [B

    .line 234
    .local v8, "smsAckPdu":[B
    add-int/lit8 v9, v6, 0x1

    .local v9, "index":I
    aput-byte v2, v8, v6

    .line 235
    .end local v6    # "index":I
    add-int/lit8 v6, v9, 0x1

    .restart local v6    # "index":I
    aput-byte v7, v8, v9

    .end local v9    # "index":I
    goto :goto_3

    .line 237
    .end local v8    # "smsAckPdu":[B
    :cond_7
    array-length v8, v4

    add-int/lit8 v8, v8, 0x6

    new-array v8, v8, [B

    .line 238
    .restart local v8    # "smsAckPdu":[B
    add-int/lit8 v9, v6, 0x1

    .restart local v9    # "index":I
    aput-byte v2, v8, v6

    .line 239
    .end local v6    # "index":I
    add-int/lit8 v6, v9, 0x1

    .restart local v6    # "index":I
    const/16 v10, -0x2b

    aput-byte v10, v8, v9

    .line 241
    .end local v9    # "index":I
    add-int/lit8 v9, v6, 0x1

    .restart local v9    # "index":I
    aput-byte v7, v8, v6

    .line 244
    .end local v6    # "index":I
    move v6, v9

    .end local v9    # "index":I
    .restart local v6    # "index":I
    :goto_3
    add-int/lit8 v9, v6, 0x1

    .restart local v9    # "index":I
    int-to-byte v10, p3

    aput-byte v10, v8, v6

    .line 245
    .end local v6    # "index":I
    add-int/lit8 v6, v9, 0x1

    .restart local v6    # "index":I
    int-to-byte v10, p2

    aput-byte v10, v8, v9

    .line 247
    .end local v9    # "index":I
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 248
    array-length v9, v4

    mul-int/lit8 v9, v9, 0x8

    div-int/2addr v9, v7

    .line 249
    .local v9, "septetCount":I
    add-int/lit8 v7, v6, 0x1

    .local v7, "index":I
    int-to-byte v10, v9

    aput-byte v10, v8, v6

    .line 250
    .end local v6    # "index":I
    .end local v9    # "septetCount":I
    goto :goto_4

    .line 251
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_8
    add-int/lit8 v7, v6, 0x1

    .restart local v7    # "index":I
    array-length v9, v4

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    .line 254
    .end local v6    # "index":I
    :goto_4
    array-length v6, v4

    invoke-static {v4, v2, v8, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 257
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-interface {v2, v3, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    .line 258
    return-void

    .line 221
    .end local v7    # "index":I
    .end local v8    # "smsAckPdu":[B
    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 222
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-interface {v6, v7, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_6

    .line 224
    :cond_a
    const/16 v2, 0xd5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 227
    :goto_6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 316
    const-string v0, "UsimDataDownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unexpected message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 305
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 306
    const-string v3, "UsimDataDownloadHandler"

    const-string v5, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 309
    :cond_0
    const-string v1, "UsimDataDownloadHandler"

    const-string v3, "Failed to write SMS-PP message to UICC"

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 313
    goto :goto_0

    .line 290
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 292
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 293
    const-string v1, "UsimDataDownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UICC Send Envelope failure, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v1, 0xd5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 296
    return-void

    .line 299
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, [I

    .line 300
    .local v3, "dcsPid":[I
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    aget v2, v3, v2

    aget v1, v3, v1

    invoke-direct {p0, v4, v2, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V

    .line 301
    goto :goto_0

    .line 286
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "dcsPid":[I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    .line 287
    nop

    .line 318
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 5
    .param p1, "ust"    # Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .param p2, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 80
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "UsimDataDownloadHandler"

    const-string v1, "Received SMS-PP data download, sending to UICC."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v0

    return v0

    .line 85
    :cond_0
    const-string v0, "UsimDataDownloadHandler"

    const-string v1, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    nop

    .line 88
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "smsc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 91
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 89
    invoke-interface {v1, v3, v0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 92
    const/4 v1, -0x1

    return v1
.end method

.method public startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 2
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, -0x1

    return v0

    .line 108
    :cond_0
    const-string v0, "UsimDataDownloadHandler"

    const-string v1, "startDataDownload failed to send message to start data download."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x2

    return v0
.end method
