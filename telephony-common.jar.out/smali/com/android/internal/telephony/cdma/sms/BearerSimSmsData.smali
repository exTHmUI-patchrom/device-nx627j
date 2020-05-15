.class public final Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;
.super Ljava/lang/Object;
.source "BearerSimSmsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BearerSimSmsData"

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .line 168
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    .line 169
    .local v0, "septets":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    .line 170
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->get7bitTed(I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0

    .line 172
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->get16bitTed(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 174
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    return-object v1
.end method

.method private static convertToBCD(I)I
    .locals 4
    .param p0, "number"    # I

    .line 835
    move v0, p0

    .line 836
    .local v0, "result":I
    div-int/lit8 v1, p0, 0xa

    .line 837
    .local v1, "a":I
    rem-int/lit8 v2, p0, 0xa

    .line 838
    .local v2, "b":I
    mul-int/lit8 v3, v1, 0x10

    add-int/2addr v3, v2

    .line 839
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    .line 155
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 156
    .local v0, "msgLen":I
    if-eqz p1, :cond_0

    return v0

    .line 157
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 158
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 159
    return v4

    .line 157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 303
    .local v0, "payload":[B
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 304
    .local v1, "udhBytes":I
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 305
    .local v3, "udhCodeUnits":I
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 306
    .local v4, "payloadCodeUnits":I
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 307
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 308
    add-int v5, v3, v4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 309
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 310
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 311
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v7, v5, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 312
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 313
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 226
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 227
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .local v1, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 229
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 230
    .local v3, "charCode":I
    invoke-static {v3, p1, v0, p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->writeCharCodeForAscii(IZLcom/android/internal/util/BitwiseOutputStream;Ljava/lang/String;I)V

    .line 228
    .end local v3    # "charCode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 233
    .end local v0    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v1    # "msgLen":I
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 11
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 319
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 320
    .local v0, "udhBytes":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 321
    .local v2, "udhSeptets":I
    mul-int/lit8 v3, v2, 0x7

    mul-int/lit8 v4, v0, 0x8

    sub-int/2addr v3, v4

    .line 322
    .local v3, "paddingBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 324
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 325
    .local v5, "msgLen":I
    invoke-static {v5, v4, v3, p2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getStream(ILjava/lang/String;IZ)Lcom/android/internal/util/BitwiseOutputStream;

    move-result-object v6

    .line 327
    .local v6, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v6}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v7

    .line 328
    .local v7, "payload":[B
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 330
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 331
    array-length v8, v7

    add-int/2addr v8, v0

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 332
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v9, p1

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    .line 333
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v9, p1

    invoke-static {p1, v10, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v8, v7

    invoke-static {v7, v10, v1, v0, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "udhBytes":I
    .end local v2    # "udhSeptets":I
    .end local v3    # "paddingBits":I
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "msgLen":I
    .end local v6    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v7    # "payload":[B
    nop

    .line 338
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 288
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 289
    .local v0, "udhBytes":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 290
    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;

    move-result-object v3

    .line 291
    .local v3, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 292
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 293
    iget v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->septets:I

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 294
    iget-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 295
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 296
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 297
    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 273
    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    .line 275
    .local v0, "fullData":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$1;)V

    .line 276
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    .line 277
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 278
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return-object v2

    .line 280
    .end local v0    # "fullData":[B
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit GSM encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 552
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 553
    const/16 v1, 0x9

    .line 554
    .local v1, "paramBits":I
    const/4 v2, 0x0

    .line 555
    .local v2, "dataBits":I
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v3, v5, :cond_0

    .line 556
    add-int/lit8 v1, v1, 0x7

    .line 557
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v6

    .end local v2    # "dataBits":I
    .local v3, "dataBits":I
    :goto_0
    goto :goto_1

    .line 559
    .end local v3    # "dataBits":I
    .restart local v2    # "dataBits":I
    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v4

    goto :goto_0

    .line 561
    .end local v2    # "dataBits":I
    .restart local v3    # "dataBits":I
    :goto_1
    add-int/2addr v1, v3

    .line 562
    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v7, v1, 0x8

    const/4 v8, 0x0

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_2
    add-int/2addr v2, v7

    .line 563
    .local v2, "paramBytes":I
    mul-int/lit8 v7, v2, 0x8

    sub-int/2addr v7, v1

    .line 564
    .local v7, "paddingBits":I
    invoke-virtual {p1, v6, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 565
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v5, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 566
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v9, v5, :cond_2

    .line 567
    const/4 v5, 0x3

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 568
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 570
    :cond_2
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 571
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 572
    if-lez v7, :cond_3

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 573
    :cond_3
    return-void
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 535
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    const-string v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 545
    :goto_0
    return-void
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 621
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 622
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 623
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 624
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 516
    .local v0, "digits":I
    mul-int/lit8 v1, v0, 0x4

    .line 517
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 518
    .local v2, "dataBytes":I
    rem-int/lit8 v3, v1, 0x8

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v2, v3

    .line 519
    new-array v3, v2, [B

    .line 520
    .local v3, "rawData":[B
    nop

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 521
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 522
    .local v5, "c":C
    const/4 v6, 0x0

    .line 523
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v5, v7, :cond_1

    const/16 v7, 0x39

    if-gt v5, v7, :cond_1

    add-int/lit8 v6, v5, -0x30

    goto :goto_2

    .line 524
    :cond_1
    const/16 v7, 0x30

    if-ne v5, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 525
    :cond_2
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 526
    :cond_3
    const/16 v7, 0x23

    if-ne v5, v7, :cond_4

    const/16 v6, 0xc

    .line 528
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v3, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 520
    .end local v5    # "c":C
    .end local v6    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 527
    .restart local v5    # "c":C
    .restart local v6    # "val":I
    :cond_4
    const/4 v7, 0x0

    return-object v7

    .line 530
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v6    # "val":I
    :cond_5
    return-object v3
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 4
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 372
    .local v0, "headerData":[B
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v1, :cond_3

    .line 373
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 374
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 375
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 376
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 377
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 378
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported EMS user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    .line 390
    .end local v1    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    :goto_0
    return-void
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 613
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 614
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 615
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 147
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 148
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 149
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 150
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 152
    return-void
.end method

.method private static encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;J)V
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 798
    const/4 v0, 0x6

    .line 799
    .local v0, "timeStampLength":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 800
    invoke-static {p2, p3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getSimSmsTimeStamp(J)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;

    move-result-object v2

    .line 801
    .local v2, "ts":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 802
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->month:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 803
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->monthDay:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 804
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->hour:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 805
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 806
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->second:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 807
    return-void
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 588
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 589
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 590
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 639
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 640
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 641
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 642
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 579
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 580
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 581
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 582
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 630
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 631
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 632
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 633
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 604
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 605
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 606
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 607
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 506
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 507
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 508
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 509
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 510
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 511
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 512
    return-void
.end method

.method private static encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 650
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 651
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .line 652
    .local v4, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v5

    .line 653
    .local v5, "category":I
    shr-int/lit8 v6, v5, 0x8

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 654
    invoke-virtual {p1, v3, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 655
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 656
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 657
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 658
    .end local v4    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    .end local v5    # "category":I
    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method

.method private static encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 394
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeSimSms(Lcom/android/internal/telephony/cdma/sms/BearerData;J)[B
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "sendTime"    # J

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 716
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 717
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 718
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 719
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->setSmsNormalParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 720
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->setSmsSetParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 722
    const/16 v1, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 723
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 725
    :cond_1
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, p1, v3

    if-eqz v1, :cond_2

    .line 726
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 727
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;J)V

    .line 729
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 732
    .end local v0    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    const-string v1, "BearerSimSmsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    goto :goto_1

    .line 730
    :catch_1
    move-exception v0

    .line 731
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v1, "BearerSimSmsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v0    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    nop

    .line 735
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    const/16 v3, 0x8c

    if-gt v0, v3, :cond_7

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    const/16 v3, 0x8

    mul-int/2addr v0, v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int/2addr v0, v4

    .line 484
    .local v0, "dataBits":I
    add-int/lit8 v4, v0, 0xd

    .line 485
    .local v4, "paramBits":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v6, 0xa

    if-eq v5, v2, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v6, :cond_2

    .line 487
    :cond_1
    add-int/lit8 v4, v4, 0x8

    .line 489
    :cond_2
    div-int/lit8 v5, v4, 0x8

    rem-int/lit8 v7, v4, 0x8

    if-lez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    add-int/2addr v5, v7

    .line 490
    .local v5, "paramBytes":I
    mul-int/lit8 v7, v5, 0x8

    sub-int/2addr v7, v4

    .line 491
    .local v7, "paddingBits":I
    invoke-virtual {p1, v3, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 492
    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 493
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v8, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_5

    .line 495
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 497
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 499
    if-lez v7, :cond_6

    invoke-virtual {p1, v7, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 500
    :cond_6
    return-void

    .line 477
    .end local v0    # "dataBits":I
    .end local v4    # "paramBits":I
    .end local v5    # "paramBytes":I
    .end local v7    # "paddingBits":I
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded user data too large ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 1
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v0, :cond_0

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_1

    .line 409
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 410
    return-void

    .line 413
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v0, :cond_3

    .line 414
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_2

    .line 415
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getOCTData(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    goto :goto_0

    .line 417
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    goto :goto_0

    .line 420
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getNotEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 422
    :goto_0
    return-void
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 257
    :try_start_0
    const-string v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 596
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 597
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 598
    return-void
.end method

.method private static get16bitTed(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .line 188
    nop

    .line 189
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 191
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v2, :cond_1

    .line 193
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 194
    iget v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v1, v1, 0x2

    .line 195
    .local v1, "octets":I
    const/16 v3, 0x8c

    if-le v1, v3, :cond_0

    .line 196
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getLongSmsTed(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    goto :goto_0

    .line 198
    :cond_0
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 199
    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 202
    :goto_0
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 204
    .end local v1    # "octets":I
    :cond_1
    return-object v0
.end method

.method private static get7bitTed(I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "septets"    # I

    .line 178
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 179
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 180
    iput p0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 181
    rsub-int v2, p0, 0xa0

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 182
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 183
    return-object v0
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 685
    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 702
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :pswitch_0
    mul-int/lit8 v0, p1, 0x10

    return v0

    .line 696
    :pswitch_1
    mul-int/lit8 v0, p1, 0x7

    return v0

    .line 691
    :cond_0
    :pswitch_2
    mul-int/lit8 v0, p1, 0x8

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 3
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 438
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;

    move-result-object v0

    .line 440
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 441
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->septets:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 442
    .end local v0    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 445
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 448
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "languageValue"    # I

    .line 115
    packed-switch p0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_0
    const-string v0, "he"

    return-object v0

    .line 132
    :pswitch_1
    const-string v0, "zh"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "ko"

    return-object v0

    .line 126
    :pswitch_3
    const-string v0, "ja"

    return-object v0

    .line 123
    :pswitch_4
    const-string v0, "es"

    return-object v0

    .line 120
    :pswitch_5
    const-string v0, "fr"

    return-object v0

    .line 117
    :pswitch_6
    const-string v0, "en"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLongSmsTed(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .param p1, "octets"    # I

    .line 209
    const/16 v0, 0x86

    .line 211
    .local v0, "max_user_data_bytes_with_header":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/16 v1, 0x9

    add-int/lit8 v2, v0, -0x2

    mul-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    .line 213
    add-int/lit8 v0, v0, -0x2

    .line 215
    :cond_0
    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 217
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 219
    return-object p0
.end method

.method private static getNotEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 2
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 461
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 464
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 466
    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 468
    return-void
.end method

.method private static getOCTData(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 2
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 427
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 431
    :goto_0
    return-void
.end method

.method private static getSimSmsTimeStamp(J)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    .locals 9
    .param p0, "time"    # J

    .line 810
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 811
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 812
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 813
    .local v2, "year":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 814
    .local v3, "month":I
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 815
    .local v1, "monthDay":I
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 816
    .local v4, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 817
    .local v5, "minute":I
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 819
    .local v6, "second":I
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;-><init>()V

    .line 820
    .local v7, "ts":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    const/16 v8, 0x7d0

    if-lt v2, v8, :cond_0

    .line 821
    add-int/lit16 v8, v2, -0x7d0

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    goto :goto_0

    .line 823
    :cond_0
    add-int/lit16 v8, v2, -0x76c

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    .line 825
    :goto_0
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->month:I

    .line 826
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->monthDay:I

    .line 827
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->hour:I

    .line 828
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    .line 829
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    .line 830
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->second:I

    .line 831
    return-object v7
.end method

.method private static getStream(ILjava/lang/String;IZ)Lcom/android/internal/util/BitwiseOutputStream;
    .locals 5
    .param p0, "msgLen"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "paddingBits"    # I
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    .line 344
    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, p0

    invoke-direct {v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 345
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 346
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_1

    .line 347
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 348
    .local v2, "charCode":I
    invoke-static {v2, p1, v1, p3, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->writeCharCodeForEms(ILjava/lang/String;IZLcom/android/internal/util/BitwiseOutputStream;)V

    .line 346
    .end local v2    # "charCode":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 1
    .param p0, "category"    # I

    .line 708
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .param p0, "serviceCategory"    # I

    .line 662
    packed-switch p0, :pswitch_data_0

    .line 679
    const/4 v0, -0x1

    return v0

    .line 676
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 673
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 670
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 667
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 664
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setSmsNormalParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 743
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_1

    .line 746
    const/16 v0, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 747
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    .line 750
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 751
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 753
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v0, :cond_4

    .line 754
    const/16 v0, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 755
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 757
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v0, :cond_5

    .line 758
    const/4 v0, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 759
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 761
    :cond_5
    return-void
.end method

.method private static setSmsSetParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 765
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 767
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 769
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v0, :cond_1

    .line 770
    const/16 v0, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 771
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 773
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v0, :cond_2

    .line 774
    const/16 v0, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 775
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 777
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v0, :cond_3

    .line 778
    const/16 v0, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 779
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 781
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v0, :cond_4

    .line 782
    invoke-virtual {p1, v1, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 783
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 785
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v0, :cond_5

    .line 786
    const/16 v0, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 787
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 789
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v0, :cond_6

    .line 790
    const/16 v0, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 791
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 793
    :cond_6
    return-void
.end method

.method private static writeCharCodeForAscii(IZLcom/android/internal/util/BitwiseOutputStream;Ljava/lang/String;I)V
    .locals 3
    .param p0, "charCode"    # I
    .param p1, "force"    # Z
    .param p2, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x7

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 242
    if-eqz p1, :cond_0

    .line 243
    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot ASCII encode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    invoke-virtual {p2, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 251
    :goto_0
    return-void
.end method

.method private static writeCharCodeForEms(ILjava/lang/String;IZLcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "charCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "force"    # Z
    .param p4, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x7

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 357
    if-eqz p3, :cond_0

    .line 358
    const/16 v1, 0x20

    invoke-virtual {p4, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot ASCII encode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    invoke-virtual {p4, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 366
    :goto_0
    return-void
.end method
