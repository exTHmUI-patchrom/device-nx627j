.class public final Lcom/android/internal/graphics/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Palette$Filter;,
        Lcom/android/internal/graphics/palette/Palette$Builder;,
        Lcom/android/internal/graphics/palette/Palette$Swatch;,
        Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

.field static final DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field static final LOG_TAG:Ljava/lang/String; = "Palette"

.field static final LOG_TIMINGS:Z = false

.field static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/graphics/palette/Target;",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 976
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Target;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 160
    iput-object p2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    .line 162
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette;->findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 166
    return-void
.end method

.method private static copyHslValues(Lcom/android/internal/graphics/palette/Palette$Swatch;)[F
    .locals 4
    .param p0, "color"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 437
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 438
    .local v1, "newHsl":[F
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    return-object v1
.end method

.method private findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 6

    .line 424
    const/high16 v0, -0x80000000

    .line 425
    .local v0, "maxPop":I
    const/4 v1, 0x0

    .line 426
    .local v1, "maxSwatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 427
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 428
    .local v4, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 429
    move-object v1, v4

    .line 430
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    .line 426
    .end local v4    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    return-object v1
.end method

.method public static from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 104
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/graphics/palette/Palette;"
        }
    .end annotation

    .line 113
    .local p0, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/graphics/palette/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .param p2, "listener"    # Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listener"    # Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F
    .locals 10
    .param p1, "swatch"    # Lcom/android/internal/graphics/palette/Palette$Swatch;
    .param p2, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    .line 401
    .local v0, "hsl":[F
    const/4 v1, 0x0

    .line 402
    .local v1, "saturationScore":F
    const/4 v2, 0x0

    .line 403
    .local v2, "luminanceScore":F
    const/4 v3, 0x0

    .line 405
    .local v3, "populationScore":F
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    .line 407
    .local v4, "maxPopulation":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v6, :cond_1

    .line 408
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    move-result v6

    aget v5, v0, v5

    .line 409
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetSaturation()F

    move-result v9

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v8, v5

    mul-float v1, v6, v5

    .line 411
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    .line 412
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    move-result v5

    const/4 v6, 0x2

    aget v6, v0, v6

    .line 413
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetLightness()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v8, v6

    mul-float v2, v5, v8

    .line 415
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    .line 416
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    move-result v5

    .line 417
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 420
    :cond_3
    add-float v5, v1, v2

    add-float/2addr v5, v3

    return v5
.end method

.method private generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 4
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    .line 366
    .local v0, "maxScoreSwatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Target;->isExclusive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 370
    :cond_0
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 7
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "maxScore":F
    const/4 v1, 0x0

    .line 376
    .local v1, "maxScoreSwatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 377
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 378
    .local v4, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F

    move-result v5

    .line 380
    .local v5, "score":F
    if-eqz v1, :cond_0

    cmpl-float v6, v5, v0

    if-lez v6, :cond_1

    .line 381
    :cond_0
    move-object v1, v4

    .line 382
    move v0, v5

    .line 376
    .end local v4    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    .end local v5    # "score":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    return-object v1
.end method

.method private shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z
    .locals 5
    .param p1, "swatch"    # Lcom/android/internal/graphics/palette/Palette$Swatch;
    .param p2, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 392
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    .line 393
    .local v0, "hsl":[F
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumSaturation()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumSaturation()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x2

    aget v3, v0, v2

    .line 394
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumLightness()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    aget v2, v0, v2

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumLightness()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 393
    :goto_0
    return v1
.end method


# virtual methods
.method generate()V
    .locals 5

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Target;

    .line 357
    .local v2, "target":Lcom/android/internal/graphics/palette/Target;
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Target;->normalizeWeights()V

    .line 358
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/Palette;->generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v2    # "target":Lcom/android/internal/graphics/palette/Target;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 362
    return-void
.end method

.method public getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I
    .locals 2
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;
    .param p2, "defaultColor"    # I

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    .line 327
    .local v0, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getDarkMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 307
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 241
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 274
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 211
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDominantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 349
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 296
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getLightMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 231
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 263
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 201
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 285
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 221
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 316
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .line 252
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method
