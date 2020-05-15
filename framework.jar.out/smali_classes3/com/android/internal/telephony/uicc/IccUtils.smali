.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field private static final HEX_CHARS:[C

.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 281
    if-nez p2, :cond_0

    .line 282
    const-string v0, ""

    return-object v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    .line 285
    aget-byte v1, p0, p1

    const/16 v2, -0x80

    if-ne v1, v2, :cond_2

    .line 286
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x2

    .line 287
    .local v1, "ucslen":I
    const/4 v2, 0x0

    .line 290
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v5, v1, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 294
    goto :goto_0

    .line 291
    :catch_0
    move-exception v3

    .line 292
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 300
    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_1

    .line 301
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    .end local v1    # "ucslen":I
    .end local v2    # "ret":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 309
    .local v1, "isucs2":Z
    const/4 v2, 0x0

    .line 310
    .local v2, "base":C
    const/4 v3, 0x0

    .line 312
    .local v3, "len":I
    const/4 v4, 0x3

    if-lt p2, v4, :cond_4

    aget-byte v4, p0, p1

    const/16 v5, -0x7f

    if-ne v4, v5, :cond_4

    .line 313
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 314
    add-int/lit8 v4, p2, -0x3

    if-le v3, v4, :cond_3

    .line 315
    add-int/lit8 v3, p2, -0x3

    .line 317
    :cond_3
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x7

    int-to-char v2, v4

    .line 318
    add-int/lit8 p1, p1, 0x3

    .line 319
    const/4 v1, 0x1

    goto :goto_2

    .line 320
    :cond_4
    const/4 v4, 0x4

    if-lt p2, v4, :cond_6

    aget-byte v4, p0, p1

    const/16 v5, -0x7e

    if-ne v4, v5, :cond_6

    .line 321
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 322
    add-int/lit8 v4, p2, -0x4

    if-le v3, v4, :cond_5

    .line 323
    add-int/lit8 v3, p2, -0x4

    .line 325
    :cond_5
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v2, v4

    .line 327
    add-int/lit8 p1, p1, 0x4

    .line 328
    const/4 v1, 0x1

    .line 331
    :cond_6
    :goto_2
    if-eqz v1, :cond_a

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v4, "ret":Ljava/lang/StringBuilder;
    :goto_3
    if-lez v3, :cond_9

    .line 337
    aget-byte v5, p0, p1

    if-gez v5, :cond_7

    .line 338
    aget-byte v5, p0, p1

    and-int/lit8 v5, v5, 0x7f

    add-int/2addr v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 p1, p1, 0x1

    .line 340
    add-int/lit8 v3, v3, -0x1

    .line 345
    :cond_7
    move v5, v0

    .line 346
    .local v5, "count":I
    :goto_4
    if-ge v5, v3, :cond_8

    add-int v6, p1, v5

    aget-byte v6, p0, v6

    if-ltz v6, :cond_8

    .line 347
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 349
    :cond_8
    invoke-static {p0, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    add-int/2addr p1, v5

    .line 353
    sub-int/2addr v3, v5

    .line 354
    .end local v5    # "count":I
    goto :goto_3

    .line 356
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    .end local v4    # "ret":Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 360
    .local v0, "resource":Landroid/content/res/Resources;
    const-string v4, ""

    .line 362
    .local v4, "defaultCharset":Ljava/lang/String;
    const v5, 0x104026b

    .line 363
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 366
    goto :goto_5

    .line 364
    :catch_1
    move-exception v5

    .line 367
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static bcdPlmnToString([BI)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 132
    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 136
    .local v0, "trans":[B
    const/4 v1, 0x0

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x4

    add-int v3, v1, p1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/4 v1, 0x1

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    add-int v4, v3, p1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    add-int v2, v3, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xf0

    add-int/2addr v1, p1

    aget-byte v1, p0, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 139
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const-string v2, "F"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_1
    return-object v1
.end method

.method public static bcdToBytes(Ljava/lang/String;[B)V
    .locals 5
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 122
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 121
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public static bcdToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "bcd"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 105
    .local v0, "output":[B
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 106
    return-object v0
.end method

.method public static bcdToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 95
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 58
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 71
    .local v2, "v":I
    const/16 v3, 0x30

    const/16 v4, 0x41

    const/16 v5, 0x9

    if-le v2, v5, :cond_0

    .line 72
    add-int/lit8 v6, v2, -0xa

    add-int/2addr v6, v4

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_0
    add-int v6, v3, v2

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :goto_1
    aget-byte v6, p0, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v2, v6, 0xf

    .line 79
    if-le v2, v5, :cond_1

    .line 80
    add-int/lit8 v3, v2, -0xa

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 82
    :cond_1
    add-int/2addr v3, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .end local v2    # "v":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bchToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 158
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 159
    .local v2, "v":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 162
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    .line 519
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 520
    const/4 v0, -0x1

    return v0

    .line 522
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method private static byteNumForInt(IZ)I
    .locals 4
    .param p0, "value"    # I
    .param p1, "signed"    # Z

    .line 804
    if-ltz p0, :cond_6

    .line 807
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 808
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_0

    .line 809
    return v2

    .line 811
    :cond_0
    const/16 v2, 0x7fff

    if-gt p0, v2, :cond_1

    .line 812
    return v1

    .line 814
    :cond_1
    const v1, 0x7fffff

    if-gt p0, v1, :cond_5

    .line 815
    return v0

    .line 818
    :cond_2
    const/16 v3, 0xff

    if-gt p0, v3, :cond_3

    .line 819
    return v2

    .line 821
    :cond_3
    const v2, 0xffff

    if-gt p0, v2, :cond_4

    .line 822
    return v1

    .line 824
    :cond_4
    const v1, 0xffffff

    if-gt p0, v1, :cond_5

    .line 825
    return v0

    .line 828
    :cond_5
    const/4 v0, 0x4

    return v0

    .line 805
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteNumForSignedInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 788
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static byteNumForUnsignedInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 776
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # B

    .line 857
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v3, p0, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x1

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 417
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    array-length v2, p0

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 424
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 426
    .local v2, "b":I
    sget-object v4, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    aget-byte v4, p0, v1

    and-int v2, v3, v4

    .line 430
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToInt([BII)I
    .locals 4
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 654
    const/4 v0, 0x4

    if-gt p2, v0, :cond_3

    .line 658
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 669
    shl-int/lit8 v2, v0, 0x8

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v1    # "i":I
    :cond_0
    if-ltz v0, :cond_1

    .line 675
    return v0

    .line 672
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src cannot be parsed as a positive integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bytesToRawLong([BII)J
    .locals 8
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 691
    const/16 v0, 0x8

    if-gt p2, v0, :cond_2

    .line 695
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 704
    const-wide/16 v1, 0x0

    .line 705
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 706
    shl-long v4, v1, v0

    add-int v6, p1, v3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 708
    .end local v3    # "i":I
    :cond_0
    return-wide v1

    .line 696
    .end local v1    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .line 230
    const/4 v0, 0x0

    .line 233
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 234
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 237
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 238
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 241
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 176
    .local v1, "count":I
    move v2, v1

    move v1, p1

    .local v1, "i":I
    .local v2, "count":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 178
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 179
    .local v3, "v":I
    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    .line 180
    :cond_0
    const/16 v5, 0x30

    add-int v6, v5, v3

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_1

    .end local v1    # "i":I
    .end local v3    # "v":I
    goto :goto_1

    .line 184
    .restart local v1    # "i":I
    .restart local v3    # "v":I
    :cond_1
    aget-byte v6, p0, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v3, v6, 0xf

    .line 185
    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    .line 186
    :cond_2
    add-int/2addr v5, v3

    int-to-char v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 176
    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .line 872
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 873
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    .line 874
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 875
    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    return v0

    .line 876
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 877
    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    return v0

    .line 879
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static countTrailingZeros(B)B
    .locals 3
    .param p0, "b"    # B

    .line 836
    if-nez p0, :cond_0

    .line 837
    const/16 v0, 0x8

    return v0

    .line 839
    :cond_0
    and-int/lit16 v0, p0, 0xff

    .line 840
    .local v0, "v":I
    const/4 v1, 0x7

    .line 841
    .local v1, "c":B
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_1

    .line 842
    add-int/lit8 v2, v1, -0x4

    int-to-byte v1, v2

    .line 844
    :cond_1
    and-int/lit8 v2, v0, 0x33

    if-eqz v2, :cond_2

    .line 845
    add-int/lit8 v2, v1, -0x2

    int-to-byte v1, v2

    .line 847
    :cond_2
    and-int/lit8 v2, v0, 0x55

    if-eqz v2, :cond_3

    .line 848
    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    .line 850
    :cond_3
    return v1
.end method

.method private static getCLUT([BII)[I
    .locals 8
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .line 614
    if-nez p0, :cond_0

    .line 615
    const/4 v0, 0x0

    return-object v0

    .line 618
    :cond_0
    new-array v0, p2, [I

    .line 619
    .local v0, "result":[I
    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 620
    .local v1, "endIndex":I
    move v2, p1

    .line 621
    .local v2, "valueIndex":I
    const/4 v3, 0x0

    .line 622
    .local v3, "colorIndex":I
    const/high16 v4, -0x1000000

    .line 624
    .local v4, "alpha":I
    :goto_0
    add-int/lit8 v5, v3, 0x1

    .local v5, "colorIndex":I
    add-int/lit8 v6, v2, 0x1

    .local v6, "valueIndex":I
    aget-byte v2, p0, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v7, v6, 0x1

    .local v7, "valueIndex":I
    aget-byte v6, p0, v6

    .end local v6    # "valueIndex":I
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "valueIndex":I
    aget-byte v7, p0, v7

    .end local v7    # "valueIndex":I
    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v3

    .line 628
    .end local v3    # "colorIndex":I
    if-lt v6, v1, :cond_1

    .line 629
    return-object v0

    .line 622
    :cond_1
    move v3, v5

    move v2, v6

    goto :goto_0
.end method

.method public static getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "iccId"    # Ljava/lang/String;

    .line 634
    const/4 v0, 0x0

    move v1, v0

    .local v1, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 635
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 634
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .line 208
    const/4 v0, 0x0

    .line 211
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 212
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 215
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 216
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 219
    :cond_1
    return v0
.end method

.method public static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .line 372
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 373
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 374
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 393
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 397
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 399
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 400
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 401
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 399
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static intToBytes(I[BIZ)I
    .locals 5
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "signed"    # Z

    .line 792
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    .line 793
    .local v0, "l":I
    if-ltz p2, :cond_1

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 796
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    move v2, v1

    move v1, p0

    .local v1, "v":I
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 797
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 798
    .local v3, "b":B
    add-int v4, p2, v2

    aput-byte v3, p1, v4

    .line 796
    .end local v3    # "b":B
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 800
    .end local v1    # "v":I
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 794
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space to write. Required bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 9
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 564
    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_0

    .line 565
    const-string v0, "IccUtils"

    const-string v1, "not event number of color"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 570
    :cond_0
    const/4 v1, 0x1

    .line 571
    .local v1, "mask":I
    const/4 v2, 0x4

    if-eq p4, v2, :cond_2

    if-eq p4, v0, :cond_1

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_0
    const/4 v1, 0x3

    .line 577
    goto :goto_0

    .line 573
    :pswitch_1
    const/4 v1, 0x1

    .line 574
    goto :goto_0

    .line 582
    :cond_1
    const/16 v1, 0xff

    goto :goto_0

    .line 579
    :cond_2
    const/16 v1, 0xf

    .line 580
    nop

    .line 586
    :goto_0
    new-array v2, p2, [I

    .line 587
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 588
    .local v3, "resultIndex":I
    div-int/2addr v0, p4

    .line 589
    .local v0, "run":I
    :goto_1
    if-ge v3, p2, :cond_4

    .line 590
    add-int/lit8 v4, p1, 0x1

    .local v4, "valueIndex":I
    aget-byte p1, p0, p1

    .line 591
    .local p1, "tempByte":B
    const/4 v5, 0x0

    .local v5, "runIndex":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 592
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 593
    .local v6, "offset":I
    add-int/lit8 v7, v3, 0x1

    .local v7, "resultIndex":I
    mul-int v8, v6, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v1

    aget v8, p3, v8

    aput v8, v2, v3

    .line 591
    .end local v3    # "resultIndex":I
    .end local v6    # "offset":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2

    .line 596
    .end local v5    # "runIndex":I
    .end local v7    # "resultIndex":I
    .end local p1    # "tempByte":B
    .restart local v3    # "resultIndex":I
    :cond_3
    nop

    .line 588
    move p1, v4

    goto :goto_1

    .line 597
    .end local v4    # "valueIndex":I
    .local p1, "valueIndex":I
    :cond_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 602
    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_0

    .line 603
    const-string v0, "IccUtils"

    const-string v1, "not odd number of color"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 608
    :cond_0
    new-array v0, p2, [I

    .line 610
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 446
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 450
    :cond_0
    aget-byte v0, p0, p1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 471
    const-string v0, ""

    goto :goto_0

    .line 461
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const-string v3, "utf-16"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 463
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 465
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    nop

    .line 471
    move-object v0, v1

    goto :goto_0

    .line 454
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_1
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    .line 455
    .local v0, "unusedBits":I
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    .line 456
    .local v1, "countSeptets":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "ret":Ljava/lang/String;
    nop

    .line 471
    move-object v0, v2

    .line 479
    .end local v1    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    aget-byte v1, p0, p1

    .line 483
    return-object v0

    .line 447
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    .end local v0    # "valueIndex":I
    and-int/lit16 v0, v0, 0xff

    .line 495
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    .line 496
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 498
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 500
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 501
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 502
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 503
    .local v7, "currentByte":B
    :goto_0
    if-ge v5, v3, :cond_1

    .line 505
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_0

    .line 506
    add-int/lit8 v8, v2, 0x1

    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 507
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    .line 509
    move v7, v2

    move v2, v8

    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_0
    add-int/lit8 v8, v5, 0x1

    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    .end local v6    # "bitIndex":I
    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v6

    aput v6, v4, v5

    .line 502
    .end local v5    # "pixelIndex":I
    move v5, v8

    move v6, v9

    goto :goto_0

    .line 512
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_1
    if-eq v5, v3, :cond_2

    .line 513
    const-string v8, "IccUtils"

    const-string v9, "parse end and size error"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    .end local v0    # "valueIndex":I
    and-int/lit16 v0, v0, 0xff

    .line 538
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    .line 539
    .local v1, "height":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    .line 540
    .local v2, "bits":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    .end local v3    # "valueIndex":I
    and-int/lit16 v3, v3, 0xff

    .line 541
    .local v3, "colorNumber":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "valueIndex":I
    aget-byte v4, p0, v4

    .end local v4    # "valueIndex":I
    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    .local v7, "valueIndex":I
    aget-byte v5, p0, v5

    .end local v5    # "valueIndex":I
    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 544
    .local v4, "clutOffset":I
    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    .line 545
    .local v5, "colorIndexArray":[I
    const/4 v8, 0x1

    if-ne v8, p2, :cond_0

    .line 546
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    .line 549
    :cond_0
    const/4 v8, 0x0

    .line 550
    .local v8, "resultArray":[I
    rem-int/2addr v6, v2

    if-nez v6, :cond_1

    .line 551
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v6

    .end local v8    # "resultArray":[I
    .local v6, "resultArray":[I
    :goto_0
    goto :goto_1

    .line 554
    .end local v6    # "resultArray":[I
    .restart local v8    # "resultArray":[I
    :cond_1
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v6

    goto :goto_0

    .line 558
    .end local v8    # "resultArray":[I
    .restart local v6    # "resultArray":[I
    :goto_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static signedIntToBytes(I[BI)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 766
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static signedIntToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 734
    if-ltz p0, :cond_0

    .line 737
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 738
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    .line 739
    return-object v0

    .line 735
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static stringToAdnStringField(Ljava/lang/String;)[B
    .locals 4
    .param p0, "alphaTag"    # Ljava/lang/String;

    .line 884
    const/4 v0, 0x0

    move v1, v0

    .line 886
    .local v1, "isUcs2":Z
    nop

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 887
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Lcom/android/internal/telephony/EncodeException;
    const/4 v1, 0x1

    .line 892
    .end local v0    # "e":Lcom/android/internal/telephony/EncodeException;
    :goto_1
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static stringToAdnStringField(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "alphaTag"    # Ljava/lang/String;
    .param p1, "isUcs2"    # Z

    .line 897
    if-nez p1, :cond_0

    .line 898
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 900
    :cond_0
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 901
    .local v0, "alphaTagBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 902
    .local v1, "ret":[B
    const/16 v3, -0x80

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 903
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 905
    return-object v1
.end method

.method public static stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 864
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "(?i)f*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static unsignedIntToBytes(I[BI)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 753
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static unsignedIntToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 717
    if-ltz p0, :cond_0

    .line 720
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 721
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    .line 722
    return-object v0

    .line 718
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
