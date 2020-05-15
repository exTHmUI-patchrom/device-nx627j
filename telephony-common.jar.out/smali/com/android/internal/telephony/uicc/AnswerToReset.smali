.class public Lcom/android/internal/telephony/uicc/AnswerToReset;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;,
        Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    }
.end annotation


# static fields
.field private static final B2_MASK:I = 0x2

.field private static final B7_MASK:I = 0x40

.field public static final DIRECT_CONVENTION:B = 0x3bt

.field public static final EUICC_SUPPORTED:B = -0x7et

.field private static final EXTENDED_APDU_INDEX:I = 0x2

.field public static final INTERFACE_BYTES_MASK:I = 0xf0

.field public static final INVERSE_CONVENTION:B = 0x3ft

.field private static final TAG:Ljava/lang/String; = "AnswerToReset"

.field private static final TAG_CARD_CAPABILITIES:I = 0x7

.field public static final TA_MASK:I = 0x10

.field public static final TB_MASK:I = 0x20

.field public static final TC_MASK:I = 0x40

.field public static final TD_MASK:I = 0x80

.field public static final T_MASK:I = 0xf

.field public static final T_VALUE_FOR_GLOBAL_INTERFACE:I = 0xf

.field private static final VDBG:Z = false


# instance fields
.field private mCheckByte:Ljava/lang/Byte;

.field private mFormatByte:B

.field private mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

.field private mInterfaceBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectConvention:Z

.field private mIsEuiccSupported:Z

.field private mOnlyTEqualsZero:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 144
    return-void
.end method

.method static synthetic access$200(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Byte;

    .line 36
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Ljava/lang/Byte;

    .line 147
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private checkIsEuiccSupported()V
    .locals 4

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/16 v3, 0xf

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    .line 155
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    .line 156
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/16 v3, -0x7e

    if-ne v1, v3, :cond_0

    .line 157
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsEuiccSupported:Z

    .line 158
    return-void

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 430
    const-string v0, "AnswerToReset"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 434
    const-string v0, "AnswerToReset"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method public static parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;
    .locals 2
    .param p0, "atr"    # Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;-><init>()V

    .line 138
    .local v0, "answerToReset":Lcom/android/internal/telephony/uicc/AnswerToReset;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtrString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    return-object v0

    .line 141
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseAtrString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "atr"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 283
    const-string v1, "The input ATR string can not be null"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 284
    return v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of input ATR string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not even."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 289
    return v0

    .line 292
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 293
    const-string v1, "Valid ATR string must at least contains TS and T0."

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 294
    return v0

    .line 297
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 298
    .local v1, "atrBytes":[B
    if-nez v1, :cond_3

    .line 299
    return v0

    .line 302
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseConventionByte([BI)I

    move-result v2

    .line 303
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 304
    return v0

    .line 307
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseFormatByte([BI)I

    move-result v2

    .line 308
    if-ne v2, v3, :cond_5

    .line 309
    return v0

    .line 312
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseInterfaceBytes([BI)I

    move-result v2

    .line 313
    if-ne v2, v3, :cond_6

    .line 314
    return v0

    .line 317
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseHistoricalBytes([BI)I

    move-result v2

    .line 318
    if-ne v2, v3, :cond_7

    .line 319
    return v0

    .line 322
    :cond_7
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseCheckBytes([BI)I

    move-result v2

    .line 323
    if-ne v2, v3, :cond_8

    .line 324
    return v0

    .line 327
    :cond_8
    array-length v3, v1

    if-eq v2, v3, :cond_9

    .line 328
    const-string v3, "Unexpected bytes after the check byte."

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 329
    return v0

    .line 331
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully parsed the ATR string "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " into "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->log(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->checkIsEuiccSupported()V

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method private parseCheckBytes([BI)I
    .locals 1
    .param p1, "atrBytes"    # [B
    .param p2, "index"    # I

    .line 267
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 268
    aget-byte v0, p1, p2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    .line 269
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    if-nez v0, :cond_1

    .line 272
    const-string v0, "Check byte must be present because T equals to values other than 0."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 273
    const/4 v0, -0x1

    return v0

    .line 275
    :cond_1
    const-string v0, "Check byte can be absent because T=0."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->log(Ljava/lang/String;)V

    .line 278
    :goto_0
    return p2
.end method

.method private parseConventionByte([BI)I
    .locals 4
    .param p1, "atrBytes"    # [B
    .param p2, "index"    # I

    .line 164
    array-length v0, p1

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    .line 165
    const-string v0, "Failed to read the convention byte."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 166
    return v1

    .line 168
    :cond_0
    aget-byte v0, p1, p2

    .line 169
    .local v0, "value":B
    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    goto :goto_0

    .line 171
    :cond_1
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_2

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    .line 177
    :goto_0
    add-int/lit8 v1, p2, 0x1

    return v1

    .line 174
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized convention byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 175
    return v1
.end method

.method private parseFormatByte([BI)I
    .locals 1
    .param p1, "atrBytes"    # [B
    .param p2, "index"    # I

    .line 181
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 182
    const-string v0, "Failed to read the format byte."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 183
    const/4 v0, -0x1

    return v0

    .line 185
    :cond_0
    aget-byte v0, p1, p2

    iput-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    .line 187
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private parseHistoricalBytes([BI)I
    .locals 3
    .param p1, "atrBytes"    # [B
    .param p2, "index"    # I

    .line 255
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    and-int/lit8 v0, v0, 0xf

    .line 256
    .local v0, "length":I
    add-int v1, v0, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 257
    const-string v1, "Failed to read the historical bytes."

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 258
    const/4 v1, -0x1

    return v1

    .line 260
    :cond_0
    if-lez v0, :cond_1

    .line 261
    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->access$100([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    .line 263
    :cond_1
    add-int v1, p2, v0

    return v1
.end method

.method private parseInterfaceBytes([BI)I
    .locals 4
    .param p1, "atrBytes"    # [B
    .param p2, "index"    # I

    .line 192
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    .line 196
    .local v0, "lastTD":B
    :goto_0
    and-int/lit16 v1, v0, 0xf0

    if-nez v1, :cond_0

    .line 197
    goto :goto_1

    .line 200
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;-><init>(Lcom/android/internal/telephony/uicc/AnswerToReset$1;)V

    .line 202
    .local v1, "interfaceByte":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    and-int/lit8 v2, v0, 0x10

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 203
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 204
    const-string v2, "Failed to read the byte for TA."

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 205
    return v3

    .line 207
    :cond_1
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTA(Ljava/lang/Byte;)V

    .line 208
    add-int/lit8 p2, p2, 0x1

    .line 211
    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_4

    .line 212
    array-length v2, p1

    if-lt p2, v2, :cond_3

    .line 213
    const-string v2, "Failed to read the byte for TB."

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 214
    return v3

    .line 216
    :cond_3
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTB(Ljava/lang/Byte;)V

    .line 217
    add-int/lit8 p2, p2, 0x1

    .line 220
    :cond_4
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    .line 221
    array-length v2, p1

    if-lt p2, v2, :cond_5

    .line 222
    const-string v2, "Failed to read the byte for TC."

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 223
    return v3

    .line 225
    :cond_5
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTC(Ljava/lang/Byte;)V

    .line 226
    add-int/lit8 p2, p2, 0x1

    .line 229
    :cond_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_8

    .line 230
    array-length v2, p1

    if-lt p2, v2, :cond_7

    .line 231
    const-string v2, "Failed to read the byte for TD."

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    .line 232
    return v3

    .line 234
    :cond_7
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTD(Ljava/lang/Byte;)V

    .line 235
    add-int/lit8 p2, p2, 0x1

    .line 237
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    .line 240
    .local v2, "newTD":Ljava/lang/Byte;
    if-nez v2, :cond_9

    .line 241
    nop

    .line 251
    .end local v1    # "interfaceByte":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    .end local v2    # "newTD":Ljava/lang/Byte;
    :goto_1
    return p2

    .line 243
    .restart local v1    # "interfaceByte":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    .restart local v2    # "newTD":Ljava/lang/Byte;
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 247
    and-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_a

    .line 248
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    .line 250
    .end local v1    # "interfaceByte":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    .end local v2    # "newTD":Ljava/lang/Byte;
    :cond_a
    goto/16 :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 508
    const-string v0, "AnswerToReset:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 511
    return-void
.end method

.method public getCheckByte()Ljava/lang/Byte;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    return-object v0
.end method

.method public getConventionByte()B
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    return v0
.end method

.method public getFormatByte()B
    .locals 1

    .line 442
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    return v0
.end method

.method public getHistoricalBytes()Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    return-object v0
.end method

.method public getInterfaceBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEuiccSupported()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsEuiccSupported:Z

    return v0
.end method

.method public isExtendedApduSupported()Z
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 466
    return v1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->getValue(I)[B

    move-result-object v0

    .line 469
    .local v0, "cardCapabilities":[B
    if-eqz v0, :cond_5

    array-length v2, v0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    .line 473
    aget-byte v2, v0, v4

    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1

    .line 475
    :cond_3
    aget-byte v2, v0, v4

    and-int/2addr v2, v4

    if-lez v2, :cond_4

    move v1, v3

    nop

    :cond_4
    return v1

    .line 470
    :cond_5
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 481
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "AnswerToReset:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v1, "mConventionByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->getConventionByte()B

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    const-string v1, "mFormatByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v1, "mInterfaceBytes={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    .line 489
    .local v2, "ib":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    .end local v2    # "ib":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    goto :goto_0

    .line 491
    :cond_0
    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v1, "mHistoricalBytes={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->getRawData()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 495
    .local v4, "b":B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 498
    :cond_1
    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    const-string v1, "mCheckByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
