.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mDataCodingScheme:I

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mFormat:I

.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mNrOfPages:I

.field private final mPageIndex:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 18
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 93
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz v1, :cond_a

    array-length v2, v1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_a

    .line 98
    array-length v2, v1

    const/16 v4, 0x58

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gt v2, v4, :cond_6

    .line 103
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xc0

    ushr-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 104
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v4, v1, v11

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 105
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    array-length v2, v1

    const/16 v4, 0x38

    if-gt v2, v4, :cond_3

    .line 107
    iput v7, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 108
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 109
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 110
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 111
    aget-byte v2, v1, v8

    and-int/2addr v2, v11

    if-eqz v2, :cond_0

    move v14, v11

    goto :goto_0

    :cond_0
    move v14, v9

    .line 112
    .local v14, "emergencyUserAlert":Z
    :goto_0
    aget-byte v2, v1, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v9

    .line 113
    .local v15, "activatePopup":Z
    :goto_1
    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xfe

    ushr-int/2addr v2, v11

    .line 116
    .local v2, "warningType":I
    array-length v4, v1

    if-le v4, v3, :cond_2

    .line 117
    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 119
    .local v3, "warningSecurityInfo":[B
    move-object/from16 v17, v3

    goto :goto_2

    .end local v3    # "warningSecurityInfo":[B
    :cond_2
    move-object/from16 v17, v10

    .line 121
    .local v17, "warningSecurityInfo":[B
    :goto_2
    new-instance v3, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v16, 0x1

    move-object v12, v3

    move v13, v2

    invoke-direct/range {v12 .. v17}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 123
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 124
    return-void

    .line 127
    .end local v2    # "warningType":I
    .end local v14    # "emergencyUserAlert":Z
    .end local v15    # "activatePopup":Z
    .end local v17    # "warningSecurityInfo":[B
    :cond_3
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 128
    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 131
    aget-byte v2, v1, v6

    and-int/lit16 v2, v2, 0xf0

    ushr-int/2addr v2, v8

    .line 132
    .local v2, "pageIndex":I
    aget-byte v3, v1, v6

    and-int/lit8 v3, v3, 0xf

    .line 134
    .local v3, "nrOfPages":I
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-le v2, v3, :cond_5

    .line 135
    :cond_4
    const/4 v2, 0x1

    .line 136
    const/4 v3, 0x1

    .line 139
    :cond_5
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 140
    iput v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 141
    .end local v2    # "pageIndex":I
    .end local v3    # "nrOfPages":I
    goto :goto_3

    .line 145
    :cond_6
    iput v5, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 147
    aget-byte v2, v1, v9

    .line 149
    .local v2, "messageType":I
    if-ne v2, v11, :cond_9

    .line 153
    aget-byte v4, v1, v11

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 154
    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xc0

    ushr-int/lit8 v3, v4, 0x6

    iput v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 155
    aget-byte v3, v1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v1, v8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 156
    aget-byte v3, v1, v6

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 161
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 162
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 165
    .end local v2    # "messageType":I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    move-result v2

    .line 167
    .local v2, "emergencyUserAlert":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    move-result v9

    .line 168
    .local v9, "activatePopup":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    move-result v11

    .line 169
    .local v11, "warningType":I
    new-instance v12, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v12

    move v4, v11

    move v5, v2

    move v6, v9

    invoke-direct/range {v3 .. v8}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 171
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 172
    .end local v2    # "emergencyUserAlert":Z
    .end local v9    # "activatePopup":Z
    .end local v11    # "warningType":I
    goto :goto_4

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    move-result v2

    .line 174
    .local v2, "messageClass":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    move-result v11

    .line 175
    .local v11, "severity":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    move-result v12

    .line 176
    .local v12, "urgency":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    move-result v13

    .line 177
    .local v13, "certainty":I
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 178
    new-instance v10, Landroid/telephony/SmsCbCmasInfo;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v3, v10

    move v4, v2

    move v7, v11

    move v8, v12

    move v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 180
    .end local v2    # "messageClass":I
    .end local v11    # "severity":I
    .end local v12    # "urgency":I
    .end local v13    # "certainty":I
    goto :goto_4

    .line 181
    :cond_8
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 182
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 184
    :goto_4
    return-void

    .line 150
    .local v2, "messageType":I
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v2    # "messageType":I
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal PDU"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getCmasCertainty()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 438
    const/4 v0, -0x1

    return v0

    .line 435
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 425
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1120
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 339
    const/4 v0, -0x1

    return v0

    .line 336
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 332
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 328
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 324
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 320
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 306
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 300
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 372
    const/4 v0, -0x1

    return v0

    .line 369
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 359
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1120
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 405
    const/4 v0, -0x1

    return v0

    .line 402
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 392
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1120
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .locals 2

    .line 257
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v1, 0x1112

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v1, 0x112f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 1

    .line 278
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEtwsMessage()Z
    .locals 2

    .line 232
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEtwsPopupAlert()Z
    .locals 1

    .line 268
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method getDataCodingScheme()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method getGeographicalScope()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    return v0
.end method

.method getNumberOfPages()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    return v0
.end method

.method getPageIndex()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    return v0
.end method

.method getSerialNumber()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    return v0
.end method

.method getServiceCategory()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    return v0
.end method

.method isEmergencyMessage()Z
    .locals 2

    .line 223
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v1, 0x1100

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v1, 0x18ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    .line 241
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUmtsFormat()Z
    .locals 2

    .line 249
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serialNumber=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 445
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    return-object v0
.end method
