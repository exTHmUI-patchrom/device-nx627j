.class public Lcom/android/internal/telephony/cdma/SmsMessageConverter;
.super Ljava/lang/Object;
.source "SmsMessageConverter.java"


# static fields
.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessageConverter"

.field private static final VDBG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCdmaSmsMessageFromRil(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 9
    .param p0, "cdmaSmsMessage"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 72
    .local v0, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 73
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 80
    .local v2, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 82
    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 83
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 86
    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v3, :cond_1

    .line 88
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 90
    :cond_1
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 93
    :goto_0
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 96
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 97
    .local v3, "addressDigitMode":I
    const/16 v5, 0xff

    and-int v6, v5, v3

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 98
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    and-int/2addr v6, v5

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 99
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 100
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    and-int/2addr v5, v6

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 101
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-byte v5, v5

    .line 102
    .local v5, "count":B
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 103
    new-array v6, v5, [B

    .line 104
    .local v6, "data":[B
    move v7, v4

    .local v7, "index":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 105
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    .line 108
    if-nez v3, :cond_2

    .line 109
    aget-byte v8, v6, v7

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v6, v7

    .line 104
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 113
    .end local v7    # "index":I
    :cond_3
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 115
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    iput v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 116
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-boolean v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    int-to-byte v7, v7

    iput-byte v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 117
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-byte v5, v7

    .line 119
    if-gez v5, :cond_4

    .line 120
    const/4 v5, 0x0

    .line 125
    :cond_4
    new-array v6, v5, [B

    .line 127
    move v7, v4

    .restart local v7    # "index":I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 128
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    .line 127
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 131
    .end local v7    # "index":I
    :cond_5
    iput-object v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 141
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 142
    .local v7, "countInt":I
    if-gez v7, :cond_6

    .line 143
    const/4 v7, 0x0

    .line 146
    :cond_6
    new-array v6, v7, [B

    .line 147
    nop

    .local v4, "index":I
    :goto_3
    if-ge v4, v7, :cond_7

    .line 148
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v4

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 151
    .end local v4    # "index":I
    :cond_7
    iput-object v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 154
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 155
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 157
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v4, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 159
    .local v4, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    return-object v4
.end method

.method public static newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 164
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newCdmaSmsMessageFromRil(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v0
.end method
