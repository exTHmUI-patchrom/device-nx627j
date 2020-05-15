.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 47
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 48
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 49
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 50
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 51
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Ljava/util/Locale;

    const-string v7, "es"

    invoke-direct {v2, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Ljava/util/Locale;

    const-string v8, "nl"

    invoke-direct {v2, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Ljava/util/Locale;

    const-string v9, "sv"

    invoke-direct {v2, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/Locale;

    const-string v10, "da"

    invoke-direct {v2, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Ljava/util/Locale;

    const-string v11, "pt"

    invoke-direct {v2, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Ljava/util/Locale;

    const-string v12, "fi"

    invoke-direct {v2, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Ljava/util/Locale;

    const-string v13, "nb"

    invoke-direct {v2, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Ljava/util/Locale;

    const-string v14, "el"

    invoke-direct {v2, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Ljava/util/Locale;

    const-string v15, "tr"

    invoke-direct {v2, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v1, v15

    new-instance v2, Ljava/util/Locale;

    const-string v15, "hu"

    invoke-direct {v2, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-instance v2, Ljava/util/Locale;

    const-string v15, "pl"

    invoke-direct {v2, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xe

    aput-object v2, v1, v15

    const/4 v2, 0x0

    const/16 v15, 0xf

    aput-object v2, v1, v15

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/util/Locale;

    const-string v15, "cs"

    invoke-direct {v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/Locale;

    const-string v3, "he"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/Locale;

    const-string v3, "ar"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/Locale;

    const-string v3, "is"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    aput-object v2, v0, v8

    aput-object v2, v0, v9

    aput-object v2, v0, v10

    aput-object v2, v0, v11

    aput-object v2, v0, v12

    aput-object v2, v0, v13

    aput-object v2, v0, v14

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p2, "location"    # Landroid/telephony/SmsCbLocation;
    .param p3, "pdus"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 119
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v4

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v7

    const/4 v8, 0x0

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    move-object/from16 v13, p0

    invoke-static {v13, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v11

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v12

    move-object v2, v1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    .line 124
    return-object v1

    .line 130
    :cond_0
    move-object/from16 v13, p0

    const/4 v1, 0x0

    .line 131
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    .end local v1    # "language":Ljava/lang/String;
    .local v5, "language":Ljava/lang/String;
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v0, v1

    .line 133
    .local v6, "pdu":[B
    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v8

    .line 134
    .local v8, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, Ljava/lang/String;

    .line 135
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v6    # "pdu":[B
    .end local v8    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    .line 138
    :goto_1
    move/from16 v22, v4

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 140
    .local v22, "priority":I
    :goto_2
    new-instance v1, Landroid/telephony/SmsCbMessage;

    const/4 v15, 0x1

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v17

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v19

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v24

    move-object v14, v1

    move-object/from16 v18, p2

    move-object/from16 v20, v5

    invoke-direct/range {v14 .. v24}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    .line 140
    return-object v1
.end method

.method private static getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 107
    const-string v1, ""

    return-object v1

    .line 105
    :pswitch_0
    const v1, 0x10401de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_1
    const v1, 0x10401df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :pswitch_2
    const v1, 0x10401dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    :pswitch_3
    const v1, 0x10401e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :pswitch_4
    const v1, 0x10401dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 17
    .param p0, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    move-object/from16 v8, p1

    const/4 v0, 0x0

    .line 159
    .local v0, "language":Ljava/lang/String;
    const/4 v1, 0x0

    .line 160
    .local v1, "hasLanguageIndicator":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    move-result v9

    .line 164
    .local v9, "dataCodingScheme":I
    and-int/lit16 v2, v9, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0x9

    if-eq v2, v3, :cond_6

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 226
    move v10, v1

    move v1, v3

    goto :goto_2

    .line 217
    :pswitch_0
    and-int/lit8 v2, v9, 0x4

    shr-int/lit8 v2, v2, 0x2

    if-ne v2, v3, :cond_0

    .line 218
    const/4 v2, 0x2

    goto :goto_0

    .line 220
    :cond_0
    const/4 v2, 0x1

    .line 222
    .local v2, "encoding":I
    goto :goto_1

    .line 190
    .end local v2    # "encoding":I
    :pswitch_1
    and-int/lit8 v2, v9, 0xc

    shr-int/lit8 v2, v2, 0x2

    packed-switch v2, :pswitch_data_2

    .line 201
    const/4 v2, 0x1

    .line 202
    .restart local v2    # "encoding":I
    goto :goto_1

    .line 196
    .end local v2    # "encoding":I
    :pswitch_2
    const/4 v2, 0x3

    .line 197
    .restart local v2    # "encoding":I
    goto :goto_1

    .line 192
    .end local v2    # "encoding":I
    :pswitch_3
    const/4 v2, 0x2

    .line 193
    .restart local v2    # "encoding":I
    goto :goto_1

    .line 185
    .end local v2    # "encoding":I
    :pswitch_4
    const/4 v2, 0x1

    .line 186
    .restart local v2    # "encoding":I
    goto :goto_1

    .line 180
    .end local v2    # "encoding":I
    :pswitch_5
    const/4 v2, 0x1

    .line 181
    .restart local v2    # "encoding":I
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v4, v9, 0xf

    aget-object v0, v3, v4

    .line 182
    goto :goto_1

    .line 171
    .end local v2    # "encoding":I
    :pswitch_6
    const/4 v1, 0x1

    .line 172
    and-int/lit8 v2, v9, 0xf

    if-ne v2, v3, :cond_1

    .line 173
    const/4 v2, 0x3

    .local v1, "encoding":I
    .restart local v2    # "encoding":I
    .local v10, "hasLanguageIndicator":Z
    :goto_0
    goto :goto_1

    .line 175
    .end local v2    # "encoding":I
    .end local v10    # "hasLanguageIndicator":Z
    .local v1, "hasLanguageIndicator":Z
    :cond_1
    const/4 v2, 0x1

    .line 177
    .restart local v2    # "encoding":I
    goto :goto_1

    .line 166
    .end local v2    # "encoding":I
    :pswitch_7
    const/4 v2, 0x1

    .line 167
    .restart local v2    # "encoding":I
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v4, v9, 0xf

    aget-object v0, v3, v4

    .line 168
    nop

    .line 226
    .end local v2    # "encoding":I
    .local v1, "encoding":I
    .restart local v10    # "hasLanguageIndicator":Z
    :goto_1
    move v10, v1

    move v1, v2

    .line 230
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    const/4 v2, 0x6

    aget-byte v6, v8, v2

    .line 234
    .local v6, "nrPages":I
    array-length v2, v8

    const/16 v7, 0x53

    mul-int v3, v7, v6

    const/4 v11, 0x7

    add-int/2addr v3, v11

    if-lt v2, v3, :cond_4

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    .line 242
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object v13, v0

    .end local v0    # "language":Ljava/lang/String;
    .local v2, "i":I
    .local v13, "language":Ljava/lang/String;
    :goto_3
    move v14, v2

    .end local v2    # "i":I
    .local v14, "i":I
    if-ge v14, v6, :cond_3

    .line 245
    mul-int v0, v7, v14

    add-int v15, v11, v0

    .line 246
    .local v15, "offset":I
    add-int/lit8 v0, v15, 0x52

    aget-byte v5, v8, v0

    .line 248
    .local v5, "length":I
    const/16 v0, 0x52

    if-gt v5, v0, :cond_2

    .line 253
    move-object v0, v8

    move v2, v15

    move v3, v5

    move v4, v10

    move v7, v5

    move-object v5, v13

    .end local v5    # "length":I
    .local v7, "length":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 255
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 256
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "length":I
    .end local v15    # "offset":I
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "i":I
    .restart local v2    # "i":I
    const/16 v7, 0x53

    goto :goto_3

    .line 249
    .end local v2    # "i":I
    .restart local v5    # "length":I
    .restart local v14    # "i":I
    .restart local v15    # "offset":I
    :cond_2
    move v7, v5

    .end local v5    # "length":I
    .restart local v7    # "length":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " exceeds maximum value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v7    # "length":I
    .end local v14    # "i":I
    .end local v15    # "offset":I
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 236
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "language":Ljava/lang/String;
    .local v0, "language":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pdu length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    .end local v6    # "nrPages":I
    :cond_5
    const/4 v11, 0x6

    .line 262
    .local v11, "offset":I
    array-length v2, v8

    sub-int v12, v2, v11

    .line 264
    .local v12, "length":I
    move-object v2, v8

    move v3, v1

    move v4, v11

    move v5, v12

    move v6, v10

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 213
    .end local v10    # "hasLanguageIndicator":Z
    .end local v11    # "offset":I
    .end local v12    # "length":I
    .local v1, "hasLanguageIndicator":Z
    :cond_6
    :pswitch_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "encoding"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "hasLanguageIndicator"    # Z
    .param p5, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, "body":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p0

    add-int/lit8 v5, p2, 0x2

    if-lt v2, v5, :cond_1

    .line 302
    invoke-static {p0, p2, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p5

    .line 303
    add-int/lit8 p2, p2, 0x2

    .line 304
    add-int/lit8 p3, p3, -0x2

    .line 308
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const v4, 0xfffe

    and-int/2addr v4, p3

    const-string v5, "utf-16"

    invoke-direct {v2, p0, p2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 312
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error decoding UTF-16 message"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 288
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    mul-int/lit8 v5, p3, 0x8

    div-int/lit8 v5, v5, 0x7

    invoke-static {p0, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz p4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 293
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    .line 323
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 324
    goto :goto_2

    .line 321
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 328
    .end local v2    # "i":I
    :cond_5
    const-string v0, ""

    .line 331
    :cond_6
    :goto_2
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
