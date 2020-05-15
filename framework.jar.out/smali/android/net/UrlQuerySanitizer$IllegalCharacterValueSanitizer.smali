.class public Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"

# interfaces
.implements Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

.field private static final MIN_SCRIPT_PREFIX_LENGTH:I

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 275
    const-string/jumbo v0, "javascript:"

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    .line 286
    return-void
.end method

.method private characterIsLegal(C)Z
    .locals 4
    .param p1, "c"    # C

    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    const/16 v2, 0x20

    if-eq p1, v2, :cond_d

    const/16 v3, 0x22

    if-eq p1, v3, :cond_b

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_9

    const/16 v3, 0x3e

    if-eq p1, v3, :cond_7

    packed-switch p1, :pswitch_data_0

    const/16 v3, 0x80

    packed-switch p1, :pswitch_data_1

    .line 403
    if-lt p1, v2, :cond_0

    const/16 v2, 0x7f

    if-lt p1, v2, :cond_1

    :cond_0
    if-lt p1, v3, :cond_2

    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    nop

    :cond_2
    return v0

    .line 397
    :pswitch_0
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 400
    :pswitch_1
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0

    .line 401
    :pswitch_2
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_5

    move v0, v1

    nop

    :cond_5
    return v0

    .line 395
    :pswitch_3
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    move v0, v1

    nop

    :cond_6
    return v0

    .line 399
    :cond_7
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    move v0, v1

    nop

    :cond_8
    return v0

    .line 398
    :cond_9
    iget v3, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    move v0, v1

    nop

    :cond_a
    return v0

    .line 396
    :cond_b
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_c

    move v0, v1

    nop

    :cond_c
    return v0

    .line 393
    :cond_d
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_e

    move v0, v1

    nop

    :cond_e
    return v0

    .line 402
    :cond_f
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_10

    move v0, v1

    nop

    :cond_10
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isWhitespace(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 372
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 381
    const/4 v0, 0x0

    return v0

    .line 379
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 353
    .local v1, "last":I
    move v2, v0

    move v0, v1

    .line 354
    .local v0, "end":I
    .local v2, "start":I
    :goto_0
    if-gt v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 360
    :cond_1
    if-nez v2, :cond_2

    if-ne v0, v1, :cond_2

    .line 361
    return-object p1

    .line 363
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 303
    if-nez p1, :cond_0

    .line 304
    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 307
    .local v0, "length":I
    iget v1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    .line 308
    sget v1, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v0, v1, :cond_2

    .line 309
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "asLower":Ljava/lang/String;
    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "vbscript:"

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    :cond_1
    const-string v2, ""

    return-object v2

    .line 319
    .end local v1    # "asLower":Ljava/lang/String;
    :cond_2
    iget v1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_3

    .line 320
    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 326
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 327
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 328
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 329
    .local v3, "c":C
    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    move-result v4

    if-nez v4, :cond_5

    .line 330
    iget v4, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 331
    const/16 v3, 0x20

    goto :goto_1

    .line 334
    :cond_4
    const/16 v3, 0x5f

    .line 337
    :cond_5
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
