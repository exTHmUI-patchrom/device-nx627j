.class Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field final synthetic this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;


# direct methods
.method constructor <init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V
    .locals 0
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I

    .line 242
    iput-object p1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 244
    iput p3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 246
    return-void
.end method


# virtual methods
.method final canSplit()Z
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final findSplitPoint()I
    .locals 7

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 361
    .local v0, "longestDimension":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 362
    .local v1, "colors":[I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v2, v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 367
    .local v2, "hist":[I
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 370
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 373
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 375
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v3, v3, 0x2

    .line 376
    .local v3, "midPoint":I
    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_0
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v4, v6, :cond_1

    .line 377
    aget v6, v1, v4

    aget v6, v2, v6

    add-int/2addr v5, v6

    .line 378
    if-lt v5, v3, :cond_0

    .line 381
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    .line 376
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_1
    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v4
.end method

.method final fitBox()V
    .locals 14

    .line 265
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 266
    .local v0, "colors":[I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 270
    .local v1, "hist":[I
    const v2, 0x7fffffff

    move v3, v2

    .local v3, "minBlue":I
    move v4, v2

    .line 272
    .local v2, "minRed":I
    .local v4, "minGreen":I
    const/high16 v5, -0x80000000

    move v6, v5

    .local v6, "maxBlue":I
    move v7, v5

    .line 273
    .local v5, "maxRed":I
    .local v7, "maxGreen":I
    const/4 v8, 0x0

    .line 275
    .local v8, "count":I
    iget v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v9, "i":I
    :goto_0
    iget v10, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v9, v10, :cond_6

    .line 276
    aget v10, v0, v9

    .line 277
    .local v10, "color":I
    aget v11, v1, v10

    add-int/2addr v8, v11

    .line 279
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v11

    .line 280
    .local v11, "r":I
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    .line 281
    .local v12, "g":I
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v13

    .line 282
    .local v13, "b":I
    if-le v11, v5, :cond_0

    .line 283
    move v5, v11

    .line 285
    :cond_0
    if-ge v11, v2, :cond_1

    .line 286
    move v2, v11

    .line 288
    :cond_1
    if-le v12, v7, :cond_2

    .line 289
    move v7, v12

    .line 291
    :cond_2
    if-ge v12, v4, :cond_3

    .line 292
    move v4, v12

    .line 294
    :cond_3
    if-le v13, v6, :cond_4

    .line 295
    move v6, v13

    .line 297
    :cond_4
    if-ge v13, v3, :cond_5

    .line 298
    move v3, v13

    .line 275
    .end local v10    # "color":I
    .end local v11    # "r":I
    .end local v12    # "g":I
    .end local v13    # "b":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 302
    .end local v9    # "i":I
    :cond_6
    iput v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 303
    iput v5, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 304
    iput v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 305
    iput v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 306
    iput v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 307
    iput v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 308
    iput v8, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 309
    return-void
.end method

.method final getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 11

    .line 392
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 393
    .local v0, "colors":[I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 394
    .local v1, "hist":[I
    const/4 v2, 0x0

    .line 395
    .local v2, "redSum":I
    const/4 v3, 0x0

    .line 396
    .local v3, "greenSum":I
    const/4 v4, 0x0

    .line 397
    .local v4, "blueSum":I
    const/4 v5, 0x0

    .line 399
    .local v5, "totalPopulation":I
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v6, "i":I
    :goto_0
    iget v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v7, :cond_0

    .line 400
    aget v7, v0, v6

    .line 401
    .local v7, "color":I
    aget v8, v1, v7

    .line 403
    .local v8, "colorPopulation":I
    add-int/2addr v5, v8

    .line 404
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 405
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 406
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 399
    .end local v7    # "color":I
    .end local v8    # "colorPopulation":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 409
    .end local v6    # "i":I
    :cond_0
    int-to-float v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 410
    .local v6, "redMean":I
    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 411
    .local v7, "greenMean":I
    int-to-float v8, v4

    int-to-float v9, v5

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 413
    .local v8, "blueMean":I
    new-instance v9, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v10

    invoke-direct {v9, v10, v5}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    return-object v9
.end method

.method final getColorCount()I
    .locals 2

    .line 258
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    const/4 v1, 0x1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v1, v0

    return v1
.end method

.method final getLongestColorDimension()I
    .locals 4

    .line 337
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    .line 338
    .local v0, "redLength":I
    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    .line 339
    .local v1, "greenLength":I
    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    .line 341
    .local v2, "blueLength":I
    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 342
    const/4 v3, -0x3

    return v3

    .line 343
    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    .line 344
    const/4 v3, -0x2

    return v3

    .line 346
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method final getVolume()I
    .locals 3

    .line 249
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .locals 5

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 324
    .local v0, "splitPoint":I
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    .line 327
    .local v1, "newBox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    iput v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 330
    return-object v1

    .line 318
    .end local v0    # "splitPoint":I
    .end local v1    # "newBox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
