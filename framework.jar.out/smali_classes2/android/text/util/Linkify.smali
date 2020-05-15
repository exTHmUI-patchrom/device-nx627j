.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$LinkifyMask;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final DATE:I = 0x10

.field public static final EMAIL_ADDRESSES:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Linkify"

.field public static final MAP_ADDRESSES:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NUBIA_GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9"

.field private static final NUBIA_TOP_LEVEL_DOMAIN_STR_FOR_WEB_URL:Ljava/lang/String; = "(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:[cC][aA][tT]|[cC][oO][mM]|[cC][oO][oO][pP]|[cC][aAcCdDfFgGhHiIkKlLmMnNoOrRuUvVxXyYzZ])|d[ejkmoz]|(?:[eE][dD][uU]|[eE][cCeEgGrRsStTuU])|f[ijkmor]|(?:[gG][oO][vV]|[gG][aAbBdDeEfFgGhHiIlLmMnNpPqQrRsStTuUwWyY])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:[oO][rR][gG]|[oO][mM])|(?:[pP][rR][oO]|[pP][aAeEfFgGhHkKlLmMnNrRsStTwWyY])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-80akhbyknj4f|xn\\-\\-9t4b11yi5a|xn\\-\\-deba0ad|xn\\-\\-g6w251d|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-zckzah)|y[etu]|z[amw]))"

.field private static final NUBIA_WEB_URL:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final TIME:I = 0x20

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 168
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 191
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 1001
    const-string v0, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:[cC][aA][tT]|[cC][oO][mM]|[cC][oO][oO][pP]|[cC][aAcCdDfFgGhHiIkKlLmMnNoOrRuUvVxXyYzZ])|d[ejkmoz]|(?:[eE][dD][uU]|[eE][cCeEgGrRsStTuU])|f[ijkmor]|(?:[gG][oO][vV]|[gG][aAbBdDeEfFgGhHiIlLmMnNpPqQrRsStTuUwWyY])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:[oO][rR][gG]|[oO][mM])|(?:[pP][rR][oO]|[pP][aAeEfFgGhHkKlLmMnNrRsStTwWyY])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-80akhbyknj4f|xn\\-\\-9t4b11yi5a|xn\\-\\-deba0ad|xn\\-\\-g6w251d|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-zckzah)|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:([a-zA-Z0-9\u4e00-\u9fa5]*\\.(?:[mM][pP]3))){0,1}"

    .line 1002
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/util/Linkify;->NUBIA_WEB_URL:Ljava/util/regex/Pattern;

    .line 1001
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .line 389
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 391
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 396
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 411
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 412
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 431
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 432
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 454
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 456
    .local v0, "spannable":Landroid/text/SpannableString;
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    .line 458
    .local v1, "linksAdded":Z
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 462
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .line 259
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 264
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "116321860"

    aput-object v4, v3, v1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, ""

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 266
    return v1

    .line 269
    :cond_0
    if-nez p1, :cond_1

    .line 270
    return v1

    .line 273
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 275
    .local v2, "old":[Landroid/text/style/URLSpan;
    array-length v3, v2

    sub-int/2addr v3, v0

    .line 275
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 276
    aget-object v4, v2, v3

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 275
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 279
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v3, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_3

    .line 283
    sget-object v6, Landroid/util/Patterns;->DATE:Ljava/util/regex/Pattern;

    const-string v4, "dateto:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 287
    :cond_3
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_4

    .line 288
    sget-object v6, Landroid/util/Patterns;->TIME:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "timeto:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 293
    :cond_4
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_5

    .line 294
    sget-object v6, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const-string v4, "http://"

    const-string v5, "https://"

    const-string/jumbo v7, "rtsp://"

    filled-new-array {v4, v5, v7}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 299
    :cond_5
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_6

    .line 300
    sget-object v6, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "mailto:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 305
    :cond_6
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_7

    .line 306
    invoke-static {v3, p0, p2}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V

    .line 309
    :cond_7
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_8

    .line 310
    invoke-static {v3, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 313
    :cond_8
    invoke-static {v3}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 315
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 316
    return v1

    .line 319
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    .line 320
    .local v4, "link":Landroid/text/util/LinkSpec;
    iget-object v5, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v6, v4, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v5, v6, v7, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 321
    .end local v4    # "link":Landroid/text/util/LinkSpec;
    goto :goto_1

    .line 323
    :cond_a
    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 475
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 496
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 8
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 519
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "116321860"

    aput-object v4, v3, v1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, ""

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 521
    return v1

    .line 525
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 526
    :cond_1
    if-eqz p3, :cond_2

    array-length v2, p3

    if-ge v2, v0, :cond_3

    .line 527
    :cond_2
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 530
    :cond_3
    array-length v2, p3

    add-int/2addr v2, v0

    new-array v0, v2, [Ljava/lang/String;

    .line 531
    .local v0, "schemesCopy":[Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 532
    move v2, v1

    .local v2, "index":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_5

    .line 533
    aget-object v3, p3, v2

    .line 534
    .local v3, "scheme":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    if-nez v3, :cond_4

    const-string v5, ""

    goto :goto_1

    :cond_4
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v0, v4

    .line 532
    .end local v3    # "scheme":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    .end local v2    # "index":I
    :cond_5
    const/4 v2, 0x0

    .line 538
    .local v2, "hasMatches":Z
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 540
    .local v3, "m":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 541
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 542
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 543
    .local v5, "end":I
    const/4 v6, 0x1

    .line 545
    .local v6, "allowed":Z
    if-eqz p4, :cond_6

    .line 546
    invoke-interface {p4, p0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v6

    .line 549
    :cond_6
    if-eqz v6, :cond_7

    .line 550
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v3, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v7

    .line 552
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7, v4, v5, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 553
    const/4 v2, 0x1

    .line 555
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "allowed":Z
    .end local v7    # "url":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 557
    :cond_8
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .line 361
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 362
    return v0

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 366
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 367
    .local v2, "t":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spannable;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 368
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 370
    return v4

    .line 373
    :cond_1
    return v0

    .line 375
    :cond_2
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 377
    .local v3, "s":Landroid/text/SpannableString;
    invoke-static {v3, p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 378
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 379
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    return v4

    .line 384
    :cond_3
    return v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;I)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 699
    invoke-static {p2}, Landroid/view/textclassifier/TextLinksParams;->fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p2, "params"    # Landroid/view/textclassifier/TextLinksParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 672
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p2, "params"    # Landroid/view/textclassifier/TextLinksParams;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 731
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 15
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p2, "params"    # Landroid/view/textclassifier/TextLinksParams;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "modifyTextView"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    move-object/from16 v0, p3

    .line 742
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    nop

    .line 749
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 748
    const/4 v2, 0x0

    move-object v9, p0

    invoke-interface {v9, v2, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 751
    .local v1, "truncatedText":Ljava/lang/CharSequence;
    if-nez p2, :cond_0

    .line 752
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textclassifier/TextLinksParams;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v3

    :goto_0
    move-object v10, v3

    .line 753
    .local v10, "entityConfig":Landroid/view/textclassifier/TextClassifier$EntityConfig;
    new-instance v3, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v3, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    .line 754
    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v3

    .line 755
    invoke-virtual {v3, v10}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v3

    .line 756
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v11

    .line 757
    .local v11, "request":Landroid/view/textclassifier/TextLinks$Request;
    new-instance v12, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;

    .local v12, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextLinks;>;"
    move-object/from16 v13, p1

    invoke-direct {v12, v13, v11}, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;-><init>(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)V

    .line 758
    new-instance v14, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;

    .local v14, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/textclassifier/TextLinks;>;"
    move-object v3, v14

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v6, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;-><init>(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;)V

    .line 783
    if-nez v0, :cond_1

    .line 784
    invoke-static {v12}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3

    .line 786
    :cond_1
    invoke-static {v12, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3
.end method

.method public static addLinksAsync(Landroid/widget/TextView;I)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 605
    invoke-static {p1}, Landroid/view/textclassifier/TextLinksParams;->fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "params"    # Landroid/view/textclassifier/TextLinksParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/textclassifier/TextLinksParams;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 9
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "params"    # Landroid/view/textclassifier/TextLinksParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 634
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 636
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 637
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 638
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    new-instance v8, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;

    .local v8, "modifyTextView":Ljava/lang/Runnable;
    invoke-direct {v8, p0, v1, v0}, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;-><init>(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V

    .line 644
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2
.end method

.method public static final addLinksNubia(Landroid/text/Spannable;I)Z
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .line 1027
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1028
    return v0

    .line 1030
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 1032
    .local v1, "old":[Landroid/text/style/URLSpan;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1033
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1032
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1036
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->gatherLinksNubia(Landroid/text/Spannable;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1039
    .local v2, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1040
    return v0

    .line 1043
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    .line 1044
    .local v4, "link":Landroid/text/util/LinkSpec;
    iget-object v5, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v6, v4, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v5, v6, v7, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 1045
    .end local v4    # "link":Landroid/text/util/LinkSpec;
    goto :goto_1

    .line 1047
    :cond_3
    return v3
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .line 791
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 793
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 794
    return-void
.end method

.method public static containsUnsupportedCharacters(Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 334
    const-string/jumbo v0, "\u202c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "Linkify"

    const-string v2, "Unsupported character for applying links: u202C"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v1

    .line 338
    :cond_0
    const-string/jumbo v0, "\u202d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "Linkify"

    const-string v2, "Unsupported character for applying links: u202D"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v1

    .line 342
    :cond_1
    const-string/jumbo v0, "\u202e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "Linkify"

    const-string v2, "Unsupported character for applying links: u202E"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v1

    .line 346
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 827
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 829
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 831
    .local v1, "start":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 833
    .local v2, "end":I
    if-eqz p4, :cond_0

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 834
    :cond_0
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    .line 835
    .local v3, "spec":Landroid/text/util/LinkSpec;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 838
    iput v1, v3, Landroid/text/util/LinkSpec;->start:I

    .line 839
    iput v2, v3, Landroid/text/util/LinkSpec;->end:I

    .line 841
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "spec":Landroid/text/util/LinkSpec;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 844
    :cond_2
    return-void
.end method

.method private static gatherLinksNubia(Landroid/text/Spannable;I)Ljava/util/ArrayList;
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;"
        }
    .end annotation

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 1054
    sget-object v3, Landroid/util/Patterns;->DATE:Ljava/util/regex/Pattern;

    const-string v1, "dateto:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 1058
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 1059
    sget-object v3, Landroid/util/Patterns;->TIME:Ljava/util/regex/Pattern;

    const-string/jumbo v1, "timeto:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 1063
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 1064
    sget-object v3, Landroid/text/util/Linkify;->NUBIA_WEB_URL:Ljava/util/regex/Pattern;

    const-string v1, "http://"

    const-string v2, "https://"

    const-string/jumbo v4, "rtsp://"

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 1069
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 1070
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v1, "mailto:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 1074
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 1075
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V

    .line 1078
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 1079
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 1081
    :cond_5
    return-object v0
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 878
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 883
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "address":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 884
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 886
    .local v2, "start":I
    if-gez v2, :cond_0

    .line 887
    goto :goto_1

    .line 890
    :cond_0
    new-instance v4, Landroid/text/util/LinkSpec;

    invoke-direct {v4}, Landroid/text/util/LinkSpec;-><init>()V

    .line 891
    .local v4, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 892
    .local v5, "length":I
    add-int v6, v2, v5

    .line 894
    .local v6, "end":I
    add-int v7, v1, v2

    iput v7, v4, Landroid/text/util/LinkSpec;->start:I

    .line 895
    add-int v7, v1, v6

    iput v7, v4, Landroid/text/util/LinkSpec;->end:I

    .line 896
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v7

    .line 897
    add-int/2addr v1, v6

    .line 899
    const/4 v7, 0x0

    .line 902
    .local v7, "encodedAddress":Ljava/lang/String;
    :try_start_1
    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 905
    nop

    .line 907
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:0,0?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 908
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 909
    .end local v2    # "start":I
    .end local v4    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "encodedAddress":Ljava/lang/String;
    goto :goto_0

    .line 903
    .restart local v2    # "start":I
    .restart local v4    # "spec":Landroid/text/util/LinkSpec;
    .restart local v5    # "length":I
    .restart local v6    # "end":I
    .restart local v7    # "encodedAddress":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 904
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 915
    .end local v2    # "start":I
    .end local v4    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "encodedAddress":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    nop

    .line 914
    move-object v2, v3

    .line 916
    .end local v3    # "address":Ljava/lang/String;
    .local v2, "address":Ljava/lang/String;
    return-void

    .line 910
    .end local v2    # "address":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 914
    .local v2, "e":Ljava/lang/Exception;
    return-void
.end method

.method private static gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 848
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 849
    .local v6, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-nez p2, :cond_0

    .line 850
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 852
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    .line 852
    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    .line 855
    .local v0, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 856
    .local v2, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    .line 857
    .local v3, "spec":Landroid/text/util/LinkSpec;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 858
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    .line 859
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->end:I

    .line 860
    iget-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/util/Linkify;->getNumberCount(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_1

    iget-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/util/Linkify;->getNumberCount(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    if-gt v4, v5, :cond_1

    .line 861
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    .end local v2    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3    # "spec":Landroid/text/util/LinkSpec;
    :cond_1
    goto :goto_1

    .line 864
    :cond_2
    return-void
.end method

.method private static getNumberCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 869
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 870
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 871
    add-int/lit8 v0, v0, 0x1

    .line 868
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method static synthetic lambda$addLinksAsync$0(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "spannable"    # Landroid/text/Spannable;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 639
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 640
    if-eq p1, p2, :cond_0

    .line 641
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_0
    return-void
.end method

.method static synthetic lambda$addLinksAsync$1(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1
    .param p0, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 757
    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addLinksAsync$2(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;Landroid/view/textclassifier/TextLinks;)V
    .locals 4
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "truncatedText"    # Ljava/lang/CharSequence;
    .param p3, "params"    # Landroid/view/textclassifier/TextLinksParams;
    .param p4, "modifyTextView"    # Ljava/lang/Runnable;
    .param p5, "links"    # Landroid/view/textclassifier/TextLinks;

    .line 759
    invoke-virtual {p5}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 760
    if-eqz p0, :cond_0

    .line 761
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 763
    :cond_0
    return-void

    .line 767
    :cond_1
    const/4 v0, 0x0

    .line 768
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    .line 769
    .local v0, "old":[Landroid/view/textclassifier/TextLinks$TextLinkSpan;
    array-length v2, v0

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 770
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 769
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 773
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p3, p1, p5}, Landroid/view/textclassifier/TextLinksParams;->apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I

    move-result v1

    .line 774
    .local v1, "result":I
    if-nez v1, :cond_3

    .line 775
    if-eqz p4, :cond_3

    .line 776
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 779
    :cond_3
    if-eqz p0, :cond_4

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 782
    :cond_4
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 798
    if-eqz p3, :cond_0

    .line 799
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 802
    :cond_0
    const/4 v6, 0x0

    .line 804
    .local v6, "hasPrefix":Z
    const/4 v7, 0x0

    move v0, v7

    .local v0, "i":I
    :goto_0
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    array-length v0, p1

    if-ge v8, v0, :cond_2

    .line 805
    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v3, p1, v8

    const/4 v4, 0x0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const/4 v6, 0x1

    .line 809
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v3, p1, v8

    const/4 v4, 0x0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 804
    :cond_1
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 817
    .end local v0    # "i":I
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 821
    :cond_3
    return-object p0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .line 919
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    .line 941
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 943
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 944
    .local v1, "len":I
    const/4 v2, 0x0

    .line 946
    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_4

    .line 947
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    .line 948
    .local v3, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    .line 949
    .local v4, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 951
    .local v5, "remove":I
    iget v6, v3, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 952
    iget v6, v4, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_0

    .line 953
    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    .line 954
    :cond_0
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_1

    .line 955
    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    .line 956
    :cond_1
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 957
    move v5, v2

    .line 960
    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 961
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 962
    add-int/lit8 v1, v1, -0x1

    .line 963
    goto :goto_0

    .line 968
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 969
    .end local v3    # "a":Landroid/text/util/LinkSpec;
    .end local v4    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    goto :goto_0

    .line 970
    :cond_4
    return-void
.end method
