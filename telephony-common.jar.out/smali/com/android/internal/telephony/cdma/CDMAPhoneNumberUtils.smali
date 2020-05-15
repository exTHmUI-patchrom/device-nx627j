.class public Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;
.super Ljava/lang/Object;
.source "CDMAPhoneNumberUtils.java"


# static fields
.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CDMAPhoneNumberUtils"

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 61
    const-string v0, "US"

    const-string v1, "CA"

    const-string v2, "AS"

    const-string v3, "AI"

    const-string v4, "AG"

    const-string v5, "BS"

    const-string v6, "BB"

    const-string v7, "BM"

    const-string v8, "VG"

    const-string v9, "KY"

    const-string v10, "DM"

    const-string v11, "DO"

    const-string v12, "GD"

    const-string v13, "GU"

    const-string v14, "JM"

    const-string v15, "PR"

    const-string v16, "MS"

    const-string v17, "MP"

    const-string v18, "KN"

    const-string v19, "LC"

    const-string v20, "VC"

    const-string v21, "TT"

    const-string v22, "TC"

    const-string v23, "VI"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "retStr":Ljava/lang/String;
    goto :goto_0

    .line 289
    .end local v0    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "currIso":Ljava/lang/String;
    const-string v1, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    nop

    .line 120
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 121
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    .line 119
    invoke-static {p0, v2, v3, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 126
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "phoneId"    # I

    .line 132
    move-object v0, p0

    .line 133
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_1

    const-string v2, "+"

    .line 137
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 138
    invoke-static {p0, v1, p3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatAddress(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    return-object v0
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "format":I
    invoke-static {p0, v1, v1, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_0
    return-object p0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 268
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    return v0

    .line 266
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getCurrentIdp(ZI)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z
    .param p1, "phoneId"    # I

    .line 349
    const-string v0, "gsm.operator.idpstring"

    .line 351
    if-eqz p0, :cond_0

    const-string v1, "011"

    goto :goto_0

    :cond_0
    const-string v1, "+"

    .line 349
    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "ps":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 354
    .local v1, "position":I
    if-ltz v1, :cond_2

    .line 355
    if-nez p1, :cond_1

    .line 356
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 357
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 358
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getFormatAddress(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 6
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z
    .param p2, "phoneId"    # I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "postDialStr":Ljava/lang/String;
    move-object v1, p0

    .line 147
    .local v1, "tempDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 150
    .local v2, "retStr":Ljava/lang/String;
    :cond_0
    invoke-static {p1, v1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getNetworkDialStr(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "networkDialStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 153
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->updateResultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v4

    .line 161
    .local v4, "dialableIndex":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 162
    invoke-static {v4, v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_1
    if-gez v4, :cond_2

    .line 166
    const-string v0, ""

    .line 170
    .end local v3    # "networkDialStr":Ljava/lang/String;
    .end local v4    # "dialableIndex":I
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    :cond_3
    return-object v2

    .line 155
    .restart local v3    # "networkDialStr":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "country"    # Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 236
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 237
    sget-object v3, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 238
    const/4 v1, 0x1

    return v1

    .line 236
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 242
    const/4 v1, 0x2

    return v1

    .line 244
    :cond_2
    return v1
.end method

.method private static getNetworkDialStr(ZLjava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "useNanp"    # Z
    .param p1, "tempDialStr"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 300
    if-eqz p0, :cond_0

    .line 301
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "networkDialStr":Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v0    # "networkDialStr":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "networkDialStr":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->processPlusCode(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 204
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 205
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 207
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 209
    .local v3, "trimIndex":I
    if-gez v3, :cond_0

    .line 210
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 212
    :cond_0
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    const/4 v2, 0x0

    return v2

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "retVal":Z
    if-eqz p0, :cond_1

    .line 253
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    .end local v1    # "newDialStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 258
    :cond_1
    const-string v1, "isOneNanp: null dialStr passed in"

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return v0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 226
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 190
    const-string v0, "CDMAPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private static minPositive(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 178
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 179
    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0

    .line 180
    :cond_1
    if-ltz p0, :cond_2

    .line 181
    return p0

    .line 182
    :cond_2
    if-ltz p1, :cond_3

    .line 183
    return p1

    .line 185
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static processPlusCode(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 4
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z
    .param p2, "phoneId"    # I

    .line 322
    move-object v0, p0

    .line 328
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 331
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    move-object v0, v1

    goto :goto_0

    .line 339
    :cond_0
    const-string v2, "[+]"

    .line 340
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getCurrentIdp(ZI)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static updateResultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "retStr"    # Ljava/lang/String;
    .param p1, "networkDialStr"    # Ljava/lang/String;

    .line 312
    if-nez p0, :cond_0

    .line 313
    move-object p0, p1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 317
    :goto_0
    return-object p0
.end method
