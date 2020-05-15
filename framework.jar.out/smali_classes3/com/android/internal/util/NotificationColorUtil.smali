.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static mBackgroundColor:I

.field private static mDefaultColorDark:I

.field private static mDefaultColorLight:I

.field private static mPrimaryTextColorLight:I

.field private static mSecondaryTextColorLight:I

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    .line 78
    const v0, 0x10600f3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/internal/util/NotificationColorUtil;->mBackgroundColor:I

    .line 79
    const v0, 0x10600f2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorLight:I

    .line 80
    const v0, 0x10600f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorDark:I

    .line 81
    const v0, 0x10600f5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/internal/util/NotificationColorUtil;->mPrimaryTextColorLight:I

    .line 82
    const v0, 0x10600f8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/internal/util/NotificationColorUtil;->mSecondaryTextColorLight:I

    .line 84
    return-void
.end method

.method public static calculateContrast(II)D
    .locals 2
    .param p0, "foregroundColor"    # I
    .param p1, "backgroundColor"    # I

    .line 620
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 2
    .param p0, "backgroundColor"    # I

    .line 615
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static changeColorLightness(II)I
    .locals 10
    .param p0, "baseColor"    # I
    .param p1, "amount"    # I

    .line 524
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 525
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 526
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    int-to-double v4, p1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 527
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    return v1
.end method

.method public static clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 15
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 257
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 258
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 259
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 261
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v5, v1, v3

    .line 262
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 263
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 264
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 266
    :cond_0
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_2

    .line 267
    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 268
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 269
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    .line 270
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v11

    .line 272
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v12

    const/4 v13, 0x0

    .line 274
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v6, v8

    .line 276
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_4

    instance-of v7, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_3

    .line 278
    goto :goto_2

    .line 280
    :cond_3
    move-object v6, v5

    .line 282
    :goto_1
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 283
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 282
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 261
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_5
    return-object v2

    .line 287
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_6
    return-object p0
.end method

.method public static compositeColors(II)I
    .locals 1
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 631
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 4
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    .line 456
    const-string v0, "from %.2f:1 to %.2f:1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 457
    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 458
    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 456
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ensureContrast(IIZD)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z
    .param p3, "minRatio"    # D

    .line 442
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 443
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_0

    .line 444
    :cond_0
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 442
    :goto_0
    return v0
.end method

.method public static ensureLargeTextContrast(IIZ)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .line 417
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 418
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 417
    :goto_0
    return v0
.end method

.method public static ensureTextBackgroundColor(III)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "textColor"    # I
    .param p2, "hintColor"    # I

    .line 451
    const/4 v0, 0x0

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {p0, p2, v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 452
    const-wide/high16 v1, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method public static ensureTextContrast(IIZ)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .line 429
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->ensureContrast(IIZD)I

    move-result v0

    return v0
.end method

.method public static ensureTextContrastOnBlack(I)I
    .locals 4
    .param p0, "color"    # I

    .line 407
    const/high16 v0, -0x1000000

    const/4 v1, 0x1

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    return v0
.end method

.method public static findAlphaToMeetContrast(IID)I
    .locals 12
    .param p0, "color"    # I
    .param p1, "backgroundColor"    # I
    .param p2, "minRatio"    # D

    .line 344
    move v0, p0

    .line 345
    .local v0, "fg":I
    move v1, p1

    .line 346
    .local v1, "bg":I
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_0

    .line 347
    return p0

    .line 349
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 350
    .local v2, "startAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 351
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 352
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 354
    .local v5, "b":I
    move v6, v2

    .local v6, "low":I
    const/16 v7, 0xff

    .line 355
    .local v7, "high":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0xf

    if-ge v8, v9, :cond_2

    sub-int v9, v7, v6

    if-lez v9, :cond_2

    .line 356
    add-int v9, v6, v7

    div-int/lit8 v9, v9, 0x2

    .line 357
    .local v9, "alpha":I
    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 358
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-lez v10, :cond_1

    .line 359
    move v7, v9

    goto :goto_1

    .line 361
    :cond_1
    move v6, v9

    .line 355
    .end local v9    # "alpha":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 364
    .end local v8    # "i":I
    :cond_2
    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method public static findContrastColor(IIZD)I
    .locals 22
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .line 308
    if-eqz p2, :cond_0

    move/from16 v0, p0

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    .line 309
    .local v0, "fg":I
    :goto_0
    if-eqz p2, :cond_1

    move/from16 v1, p1

    goto :goto_1

    :cond_1
    move/from16 v1, p0

    .line 310
    .local v1, "bg":I
    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_2

    .line 311
    return p0

    .line 314
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [D

    .line 315
    .local v3, "lab":[D
    if-eqz p2, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-static {v4, v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 317
    const-wide/16 v4, 0x0

    .local v4, "low":D
    const/4 v6, 0x0

    aget-wide v7, v3, v6

    .line 318
    .local v7, "high":D
    const/4 v9, 0x1

    aget-wide v16, v3, v9

    .local v16, "a":D
    const/4 v9, 0x2

    aget-wide v18, v3, v9

    .line 319
    .local v18, "b":D
    nop

    .local v6, "i":I
    :goto_3
    const/16 v9, 0xf

    if-ge v6, v9, :cond_6

    sub-double v9, v7, v4

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6

    .line 320
    add-double v9, v4, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v20, v9, v11

    .line 321
    .local v20, "l":D
    if-eqz p2, :cond_4

    .line 322
    move-wide/from16 v10, v20

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    invoke-static/range {v10 .. v15}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    goto :goto_4

    .line 324
    :cond_4
    move-wide/from16 v10, v20

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    invoke-static/range {v10 .. v15}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    .line 326
    :goto_4
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v9

    cmpl-double v9, v9, p3

    if-lez v9, :cond_5

    .line 327
    move-wide/from16 v4, v20

    goto :goto_5

    .line 329
    :cond_5
    move-wide/from16 v7, v20

    .line 319
    .end local v20    # "l":D
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 332
    .end local v6    # "i":I
    :cond_6
    move-wide v10, v4

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    invoke-static/range {v10 .. v15}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v6

    return v6
.end method

.method public static findContrastColorAgainstDark(IIZD)I
    .locals 11
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .line 379
    if-eqz p2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 380
    .local v0, "fg":I
    :goto_0
    if-eqz p2, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p0

    .line 381
    .local v1, "bg":I
    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_2

    .line 382
    return p0

    .line 385
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 386
    .local v2, "hsl":[F
    if-eqz p2, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-static {v3, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    .line 388
    const/4 v3, 0x2

    aget v4, v2, v3

    .local v4, "low":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 389
    .local v5, "high":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    const/16 v7, 0xf

    if-ge v6, v7, :cond_6

    sub-float v7, v5, v4

    float-to-double v7, v7

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v7, v9

    if-lez v7, :cond_6

    .line 390
    add-float v7, v4, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 391
    .local v7, "l":F
    aput v7, v2, v3

    .line 392
    if-eqz p2, :cond_4

    .line 393
    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_4

    .line 395
    :cond_4
    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v1

    .line 397
    :goto_4
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v8, v8, p3

    if-lez v8, :cond_5

    .line 398
    move v5, v7

    goto :goto_5

    .line 400
    :cond_5
    move v4, v7

    .line 389
    .end local v7    # "l":F
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 403
    .end local v6    # "i":I
    :cond_6
    if-eqz p2, :cond_7

    move v3, v0

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    return v3
.end method

.method public static getBackgroundColor()I
    .locals 1

    .line 1101
    sget v0, Lcom/android/internal/util/NotificationColorUtil;->mBackgroundColor:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/android/internal/util/NotificationColorUtil;

    invoke-direct {v1, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    .line 70
    :cond_0
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPrimaryTextColorLight()I
    .locals 1

    .line 1117
    sget v0, Lcom/android/internal/util/NotificationColorUtil;->mPrimaryTextColorLight:I

    return v0
.end method

.method public static getSecondaryTextColorLight()I
    .locals 1

    .line 1133
    sget v0, Lcom/android/internal/util/NotificationColorUtil;->mSecondaryTextColorLight:I

    return v0
.end method

.method public static getShiftedColor(II)I
    .locals 10
    .param p0, "color"    # I
    .param p1, "amount"    # I

    .line 596
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 597
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 598
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 599
    const-wide/16 v2, 0x0

    aget-wide v4, v0, v1

    int-to-double v6, p1

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0

    .line 601
    :cond_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    aget-wide v4, v0, v1

    int-to-double v6, p1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 603
    :goto_0
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    return v1
.end method

.method public static isColorLight(I)Z
    .locals 4
    .param p0, "backgroundColor"    # I

    .line 635
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processColor(I)I
    .locals 4
    .param p1, "color"    # I

    .line 291
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 292
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 293
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 294
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 291
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .line 225
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 226
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 228
    .local v1, "colors":[I
    const/4 v2, 0x0

    .line 229
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 230
    aget v4, v1, v3

    invoke-static {v4}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    if-nez v2, :cond_0

    .line 235
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 237
    :cond_0
    aget v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v4

    aput v4, v1, v3

    .line 238
    const/4 v2, 0x1

    .line 229
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    .line 242
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    .line 243
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v6

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v7

    new-instance v8, Landroid/content/res/ColorStateList;

    .line 244
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v4

    invoke-direct {v8, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 245
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 242
    return-object v3

    .line 248
    .end local v1    # "colors":[I
    .end local v2    # "changed":Z
    :cond_3
    return-object p1
.end method

.method public static resolveAmbientColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    .line 531
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 533
    .local v0, "resolvedColor":I
    move v1, v0

    .line 534
    .local v1, "color":I
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrastOnBlack(I)I

    move-result v1

    .line 536
    nop

    .line 546
    return v1
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .line 465
    if-nez p1, :cond_0

    .line 467
    sget v0, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorLight:I

    return v0

    .line 469
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I

    .line 481
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    return v0
.end method

.method public static resolveContrastColor(Landroid/content/Context;IIZ)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "isDark"    # Z

    .line 497
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 499
    .local v0, "resolvedColor":I
    move v1, v0

    .line 500
    .local v1, "color":I
    invoke-static {v1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 502
    nop

    .line 512
    return v1
.end method

.method public static resolveDefaultColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .line 574
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    .line 575
    .local v0, "useDark":Z
    if-eqz v0, :cond_0

    .line 578
    sget v1, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorLight:I

    return v1

    .line 582
    :cond_0
    sget v1, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorDark:I

    return v1
.end method

.method public static resolvePrimaryColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .line 550
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    .line 551
    .local v0, "useDark":Z
    if-eqz v0, :cond_0

    .line 554
    sget v1, Lcom/android/internal/util/NotificationColorUtil;->mPrimaryTextColorLight:I

    return v1

    .line 556
    :cond_0
    const v1, 0x10600f4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static resolveSecondaryColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .line 562
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    .line 563
    .local v0, "useDark":Z
    if-eqz v0, :cond_0

    .line 566
    sget v1, Lcom/android/internal/util/NotificationColorUtil;->mSecondaryTextColorLight:I

    return v1

    .line 568
    :cond_0
    const v1, 0x10600f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static satisfiesTextContrast(II)Z
    .locals 4
    .param p0, "backgroundColor"    # I
    .param p1, "foregroundColor"    # I

    .line 624
    invoke-static {p1, p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setBackgroundColor(I)V
    .locals 0
    .param p0, "color"    # I

    .line 1093
    sput p0, Lcom/android/internal/util/NotificationColorUtil;->mBackgroundColor:I

    .line 1094
    return-void
.end method

.method public static setDefaultColorDark(I)V
    .locals 0
    .param p0, "color"    # I

    .line 1149
    sput p0, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorDark:I

    .line 1150
    return-void
.end method

.method public static setDefaultColorLight(I)V
    .locals 0
    .param p0, "color"    # I

    .line 1141
    sput p0, Lcom/android/internal/util/NotificationColorUtil;->mDefaultColorLight:I

    .line 1142
    return-void
.end method

.method public static setPrimaryTextColorLight(I)V
    .locals 0
    .param p0, "color"    # I

    .line 1109
    sput p0, Lcom/android/internal/util/NotificationColorUtil;->mPrimaryTextColorLight:I

    .line 1110
    return-void
.end method

.method public static setSecondaryTextColorLight(I)V
    .locals 0
    .param p0, "color"    # I

    .line 1125
    sput p0, Lcom/android/internal/util/NotificationColorUtil;->mSecondaryTextColorLight:I

    .line 1126
    return-void
.end method

.method private static shouldUseDark(I)Z
    .locals 7
    .param p0, "backgroundColor"    # I

    .line 607
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 608
    .local v2, "useDark":Z
    :goto_0
    if-nez v2, :cond_2

    .line 609
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    move v0, v1

    nop

    :cond_1
    move v2, v0

    .line 611
    :cond_2
    return v2
.end method

.method public static useDarkBackground()Z
    .locals 4

    .line 1157
    sget v0, Lcom/android/internal/util/NotificationColorUtil;->mBackgroundColor:I

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 191
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    .line 192
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 193
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 195
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    .line 196
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 197
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 198
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 200
    :cond_0
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_2

    .line 201
    move-object v7, v5

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v7}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v7

    .line 203
    .local v7, "processedSpan":Landroid/text/style/TextAppearanceSpan;
    if-eq v7, v6, :cond_1

    .line 204
    move-object v6, v7

    goto :goto_1

    .line 207
    :cond_1
    move-object v6, v5

    .line 209
    .end local v7    # "processedSpan":Landroid/text/style/TextAppearanceSpan;
    :goto_1
    goto :goto_2

    :cond_2
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_3

    .line 210
    move-object v7, v6

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    .line 211
    .local v7, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v8

    .line 212
    .local v8, "foregroundColor":I
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v8}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v6, v9

    .line 213
    .end local v7    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v8    # "foregroundColor":I
    goto :goto_2

    .line 214
    :cond_3
    move-object v6, v5

    .line 216
    :goto_2
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 217
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 216
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 195
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_4
    return-object v2

    .line 221
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_5
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    .line 171
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "NotificationColorUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v0

    .line 179
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    return v0
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 150
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    return v0

    .line 157
    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 155
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v0, v1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 102
    .local v1, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 103
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 104
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 107
    .end local v1    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 110
    iget-object v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v1

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 116
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v2

    .line 117
    .local v2, "generationId":I
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    sget-object v3, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v3

    .line 121
    return v0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 117
    .end local v0    # "result":Z
    .end local v2    # "generationId":I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 107
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 97
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 132
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 133
    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 135
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 136
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 137
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4

    .line 138
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 139
    .local v1, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 140
    .local v3, "count":I
    if-lez v3, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0

    .line 141
    .end local v1    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "count":I
    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_5

    .line 143
    return v2

    .line 145
    :cond_5
    return v0
.end method
