.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0x1000000

.field public static final MAIN_COLOR_LIGHT:I = -0x1f1f20

.field private static final TAG:Ljava/lang/String; = "Tonal"

.field public static final THRESHOLD_COLOR_DARK:I = -0xdededf

.field public static final THRESHOLD_COLOR_LIGHT:I = -0x1f1f20


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 68
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "parser":Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getBlacklistedColors()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 72
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 73
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2
    .param p0, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p1, "outGradientColors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 269
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 272
    .local v0, "light":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, -0x1f1f20

    goto :goto_1

    :cond_1
    const/high16 v1, -0x1000000

    .line 274
    .local v1, "color":I
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 275
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 276
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 277
    return-void
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 256
    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 257
    invoke-static {p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 258
    invoke-static {p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 259
    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .locals 6
    .param p0, "palette"    # Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "l"    # F

    .line 332
    const/4 v0, -0x1

    .line 333
    .local v0, "minErrorIndex":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 335
    .local v1, "minError":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    .line 337
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v2

    sub-float v5, p2, v5

    .line 338
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v2

    sub-float v5, p3, v5

    .line 339
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 340
    .local v3, "error":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    .line 341
    move v1, v3

    .line 342
    move v0, v2

    .line 335
    .end local v3    # "error":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 8
    .param p1, "h"    # F
    .param p2, "s"    # F

    .line 358
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v0

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 365
    .local v1, "error":F
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 366
    .local v2, "tonalPalettesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_8

    .line 367
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 369
    .local v4, "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    .line 370
    move-object v0, v4

    .line 371
    goto/16 :goto_3

    .line 374
    :cond_1
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_2

    cmpl-float v5, p1, v7

    if-ltz v5, :cond_2

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    .line 375
    move-object v0, v4

    .line 376
    goto/16 :goto_3

    .line 379
    :cond_2
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_3

    .line 380
    move-object v0, v4

    .line 381
    goto/16 :goto_3

    .line 384
    :cond_3
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    .line 385
    move-object v0, v4

    .line 386
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    .line 366
    .end local v4    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :goto_1
    move v1, v5

    goto :goto_2

    .line 387
    .restart local v4    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_4
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_5

    .line 388
    move-object v0, v4

    .line 389
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v1, p1, v5

    goto :goto_2

    .line 390
    :cond_5
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 391
    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_6

    .line 392
    move-object v0, v4

    .line 393
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v1, p1, v5

    goto :goto_2

    .line 394
    :cond_6
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_7

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 395
    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_7

    .line 396
    move-object v0, v4

    .line 397
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    .end local v1    # "error":F
    .end local v4    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .local v5, "error":F
    goto :goto_1

    .line 366
    .end local v5    # "error":F
    .restart local v1    # "error":F
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 401
    .end local v3    # "i":I
    :cond_8
    :goto_3
    return-object v0
.end method

.method private static fit([FFIFF)[F
    .locals 4
    .param p0, "data"    # [F
    .param p1, "v"    # F
    .param p2, "index"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F

    .line 312
    array-length v0, p0

    new-array v0, v0, [F

    .line 313
    .local v0, "fitData":[F
    aget v1, p0, p2

    sub-float v1, p1, v1

    .line 315
    .local v1, "delta":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 316
    aget v3, p0, v2

    add-float/2addr v3, v1

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v0, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static fract(F)F
    .locals 2
    .param p0, "v"    # F

    .line 405
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private getColorInt(I[F[F[F)I
    .locals 3
    .param p1, "fitIndex"    # I
    .param p2, "h"    # [F
    .param p3, "s"    # [F
    .param p4, "l"    # [F

    .line 280
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 281
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 282
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 283
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private isBlacklisted([F)Z
    .locals 6
    .param p1, "hsl"    # [F

    .line 292
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    .line 294
    .local v3, "badRange":Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    aget v2, p1, v2

    aget v4, p1, v1

    const/4 v5, 0x2

    aget v5, p1, v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->containsColor(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    return v1

    .line 292
    .end local v3    # "badRange":Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 26
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 108
    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 109
    return v4

    .line 112
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v6

    .line 113
    .local v6, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 114
    .local v7, "mainColorsSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v8

    .line 115
    .local v8, "hints":I
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v4

    .line 116
    .local v9, "supportsDarkText":Z
    :goto_0
    and-int/lit8 v11, v8, 0x4

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v4

    .line 118
    .local v11, "generatedFromBitmap":Z
    :goto_1
    if-nez v7, :cond_3

    .line 119
    return v4

    .line 127
    :cond_3
    const/4 v12, 0x0

    .line 128
    .local v12, "bestColor":Landroid/graphics/Color;
    const/4 v13, 0x3

    new-array v14, v13, [F

    .line 129
    .local v14, "hsl":[F
    move v15, v4

    .local v15, "i":I
    :goto_2
    if-ge v15, v7, :cond_6

    .line 130
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/graphics/Color;

    .line 131
    .local v13, "color":Landroid/graphics/Color;
    invoke-virtual {v13}, Landroid/graphics/Color;->toArgb()I

    move-result v10

    .line 132
    .local v10, "colorValue":I
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 133
    move-object/from16 v17, v6

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 132
    .end local v6    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    .local v17, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-static {v4, v5, v6, v14}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 136
    if-eqz v11, :cond_5

    invoke-direct {v0, v14}, Lcom/android/internal/colorextraction/types/Tonal;->isBlacklisted([F)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 129
    .end local v10    # "colorValue":I
    .end local v13    # "color":Landroid/graphics/Color;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    const/4 v4, 0x0

    const/4 v13, 0x3

    goto :goto_2

    .line 137
    .restart local v10    # "colorValue":I
    .restart local v13    # "color":Landroid/graphics/Color;
    :cond_5
    :goto_3
    move-object v12, v13

    .line 138
    goto :goto_4

    .line 143
    .end local v10    # "colorValue":I
    .end local v13    # "color":Landroid/graphics/Color;
    .end local v15    # "i":I
    .end local v17    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    .restart local v6    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    :cond_6
    move-object/from16 v17, v6

    .end local v6    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    .restart local v17    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    :goto_4
    if-nez v12, :cond_7

    .line 144
    const/4 v4, 0x0

    return v4

    .line 151
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v12}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    .line 152
    .local v5, "colorValue":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v10, v13, v14}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 157
    aget v6, v14, v4

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v6, v10

    aput v6, v14, v4

    .line 160
    aget v6, v14, v4

    const/4 v10, 0x1

    aget v13, v14, v10

    invoke-direct {v0, v6, v13}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v6

    .line 161
    .local v6, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    if-nez v6, :cond_8

    .line 162
    const-string v10, "Tonal"

    const-string v13, "Could not find a tonal palette!"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v4

    .line 167
    :cond_8
    aget v10, v14, v4

    const/4 v4, 0x1

    aget v13, v14, v4

    const/4 v4, 0x2

    aget v15, v14, v4

    invoke-static {v6, v10, v13, v15}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v10

    .line 168
    .local v10, "fitIndex":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_9

    .line 169
    const-string v4, "Tonal"

    const-string v13, "Could not find best fit!"

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v13, 0x0

    return v13

    .line 174
    :cond_9
    const/4 v13, 0x0

    iget-object v15, v6, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v4, v14, v13

    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v18, v5

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .end local v5    # "colorValue":I
    .local v18, "colorValue":I
    invoke-static {v15, v4, v10, v13, v5}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v4

    .line 176
    .local v4, "h":[F
    iget-object v5, v6, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    const/4 v13, 0x1

    aget v15, v14, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v19, v7

    const/4 v7, 0x0

    .end local v7    # "mainColorsSize":I
    .local v19, "mainColorsSize":I
    invoke-static {v5, v15, v10, v7, v13}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v5

    .line 177
    .local v5, "s":[F
    iget-object v15, v6, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v20, v6

    const/16 v16, 0x2

    aget v6, v14, v16

    .end local v6    # "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .local v20, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    invoke-static {v15, v6, v10, v7, v13}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v6

    .line 180
    .local v6, "l":[F
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Tonal Palette - index: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ". Main color: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v0, v10, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\nColors: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    array-length v15, v4

    if-ge v13, v15, :cond_b

    .line 185
    invoke-direct {v0, v13, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    array-length v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_a

    .line 187
    const-string v15, ", "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 190
    .end local v13    # "i":I
    :cond_b
    const-string v13, "Tonal"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    move v7, v10

    .line 194
    .local v7, "primaryIndex":I
    invoke-direct {v0, v7, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v13

    .line 198
    .local v13, "mainColor":I
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v13, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 199
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    .line 200
    .local v15, "mainLuminosity":F
    move/from16 v21, v7

    const v7, -0x1f1f20

    .end local v7    # "primaryIndex":I
    .local v21, "primaryIndex":I
    move/from16 v22, v8

    iget-object v8, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .end local v8    # "hints":I
    .local v22, "hints":I
    invoke-static {v7, v8}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 201
    iget-object v7, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v7, v7, v16

    .line 202
    .local v7, "lightLuminosity":F
    cmpl-float v8, v15, v7

    if-lez v8, :cond_c

    .line 203
    const/4 v8, 0x0

    return v8

    .line 205
    :cond_c
    const v8, -0xdededf

    move/from16 v23, v7

    iget-object v7, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .end local v7    # "lightLuminosity":F
    .local v23, "lightLuminosity":F
    invoke-static {v8, v7}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 206
    iget-object v7, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 207
    .local v7, "darkLuminosity":F
    cmpg-float v8, v15, v7

    if-gez v8, :cond_d

    .line 208
    const/4 v8, 0x0

    return v8

    .line 212
    :cond_d
    invoke-virtual {v1, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 213
    invoke-virtual {v1, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 217
    if-eqz v9, :cond_e

    .line 218
    array-length v8, v4

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    .end local v21    # "primaryIndex":I
    .local v8, "primaryIndex":I
    :goto_6
    goto :goto_7

    .line 219
    .end local v8    # "primaryIndex":I
    .restart local v21    # "primaryIndex":I
    :cond_e
    const/4 v8, 0x2

    if-ge v10, v8, :cond_f

    .line 220
    const/4 v8, 0x0

    goto :goto_6

    .line 222
    :cond_f
    const/4 v8, 0x3

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_6

    .line 224
    .end local v21    # "primaryIndex":I
    .restart local v8    # "primaryIndex":I
    :goto_7
    invoke-direct {v0, v8, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v13

    .line 225
    invoke-virtual {v2, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 226
    invoke-virtual {v2, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 230
    if-eqz v9, :cond_10

    .line 231
    move/from16 v24, v7

    array-length v7, v4

    .end local v7    # "darkLuminosity":F
    .local v24, "darkLuminosity":F
    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .end local v8    # "primaryIndex":I
    .local v7, "primaryIndex":I
    :goto_8
    goto :goto_9

    .line 232
    .end local v24    # "darkLuminosity":F
    .local v7, "darkLuminosity":F
    .restart local v8    # "primaryIndex":I
    :cond_10
    move/from16 v24, v7

    .end local v7    # "darkLuminosity":F
    .restart local v24    # "darkLuminosity":F
    const/4 v7, 0x2

    if-ge v10, v7, :cond_11

    .line 233
    const/4 v7, 0x0

    goto :goto_8

    .line 235
    :cond_11
    const/4 v7, 0x2

    goto :goto_8

    .line 237
    .end local v8    # "primaryIndex":I
    .local v7, "primaryIndex":I
    :goto_9
    invoke-direct {v0, v7, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v8

    .line 238
    .end local v13    # "mainColor":I
    .local v8, "mainColor":I
    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 239
    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 241
    invoke-virtual {v1, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 242
    invoke-virtual {v2, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 243
    invoke-virtual {v3, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 246
    const-string v13, "Tonal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v4

    const-string v4, "Gradients: \n\tNormal "

    .end local v4    # "h":[F
    .local v25, "h":[F
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n\tDark "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n\tExtra dark: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    .line 90
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 93
    :cond_0
    return-void
.end method

.method public getBlacklistedColors()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object v0
.end method
