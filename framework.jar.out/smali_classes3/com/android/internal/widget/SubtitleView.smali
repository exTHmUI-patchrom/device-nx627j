.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 93
    sget-object v1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 96
    .local v1, "a":Landroid/content/res/TypedArray;
    const-string v2, ""

    .line 97
    .local v2, "text":Ljava/lang/CharSequence;
    const/16 v3, 0xf

    .line 99
    .local v3, "textSize":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 100
    .local v4, "n":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 101
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 103
    .local v5, "attr":I
    if-eqz v5, :cond_1

    const/16 v6, 0x12

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    .end local v5    # "attr":I
    goto :goto_1

    .line 111
    .restart local v5    # "attr":I
    :pswitch_0
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 112
    goto :goto_1

    .line 108
    :pswitch_1
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 109
    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 106
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 100
    .end local v5    # "attr":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    .local v0, "res":Landroid/content/res/Resources;
    const v5, 0x10501a4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 123
    const v5, 0x10501a5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    .line 124
    const v5, 0x10501a7

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 125
    const v5, 0x10501a6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 126
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 128
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 129
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 130
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 132
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 133
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 137
    return-void

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeMeasurements(I)Z
    .locals 6
    .param p1, "maxWidth"    # I

    .line 243
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    .line 244
    return v1

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 249
    .local v0, "paddingX":I
    sub-int/2addr p1, v0

    .line 250
    const/4 v2, 0x0

    if-gtz p1, :cond_1

    .line 251
    return v2

    .line 257
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 258
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 259
    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v2, v4, v5, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 260
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    iget v4, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 261
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 262
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 265
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 295
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 296
    .local v2, "layout":Landroid/text/StaticLayout;
    if-nez v2, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 301
    .local v3, "saveCount":I
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 302
    .local v4, "innerPaddingX":I
    iget v5, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 305
    .local v5, "lineCount":I
    iget-object v6, v0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 306
    .local v6, "textPaint":Landroid/graphics/Paint;
    iget-object v7, v0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 307
    .local v7, "paint":Landroid/graphics/Paint;
    iget-object v8, v0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 309
    .local v8, "bounds":Landroid/graphics/RectF;
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_1

    .line 310
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 311
    .local v9, "cornerRadius":F
    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    .line 313
    .local v11, "previousBottom":F
    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    move v12, v11

    move v11, v10

    .local v11, "i":I
    .local v12, "previousBottom":F
    :goto_0
    if-ge v11, v5, :cond_1

    .line 317
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    int-to-float v14, v4

    sub-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->left:F

    .line 318
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v4

    add-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->right:F

    .line 319
    iput v12, v8, Landroid/graphics/RectF;->top:F

    .line 320
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v8, Landroid/graphics/RectF;->bottom:F

    .line 321
    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    .line 323
    invoke-virtual {v1, v8, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 316
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 327
    .end local v9    # "cornerRadius":F
    .end local v11    # "i":I
    .end local v12    # "previousBottom":F
    :cond_1
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 328
    .local v9, "edgeType":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 329
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 330
    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    sget-object v11, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    move v11, v10

    .restart local v11    # "i":I
    :goto_1
    if-ge v11, v5, :cond_3

    .line 335
    invoke-virtual {v2, v1, v11, v11}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 334
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 337
    .end local v11    # "i":I
    :cond_2
    const/4 v12, 0x2

    if-ne v9, v12, :cond_4

    .line 338
    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v13, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    iget v14, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 357
    .end local v4    # "innerPaddingX":I
    .local v16, "innerPaddingX":I
    :cond_3
    move/from16 v16, v4

    goto :goto_5

    .line 339
    .end local v16    # "innerPaddingX":I
    .restart local v4    # "innerPaddingX":I
    :cond_4
    const/4 v12, 0x3

    if-eq v9, v12, :cond_5

    const/4 v13, 0x4

    if-ne v9, v13, :cond_3

    .line 341
    :cond_5
    if-ne v9, v12, :cond_6

    goto :goto_2

    :cond_6
    move v11, v10

    .line 342
    .local v11, "raised":Z
    :goto_2
    const/4 v12, -0x1

    if-eqz v11, :cond_7

    move v13, v12

    goto :goto_3

    :cond_7
    iget v13, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 343
    .local v13, "colorUp":I
    :goto_3
    if-eqz v11, :cond_8

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    nop

    .line 344
    .local v12, "colorDown":I
    :cond_8
    iget v14, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 346
    .local v14, "offset":F
    iget v15, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    iget v15, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    neg-float v10, v14

    move/from16 v16, v4

    neg-float v4, v14

    .end local v4    # "innerPaddingX":I
    .restart local v16    # "innerPaddingX":I
    invoke-virtual {v6, v15, v10, v4, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 350
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v5, :cond_9

    .line 351
    invoke-virtual {v2, v1, v4, v4}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 354
    .end local v4    # "i":I
    :cond_9
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    invoke-virtual {v6, v4, v14, v14, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 357
    .end local v11    # "raised":Z
    .end local v12    # "colorDown":I
    .end local v13    # "colorUp":I
    .end local v14    # "offset":F
    :goto_5
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v5, :cond_a

    .line 361
    invoke-virtual {v2, v1, v4, v4}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 364
    .end local v4    # "i":I
    :cond_a
    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v4, v4, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 365
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 366
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 237
    sub-int v0, p4, p2

    .line 239
    .local v0, "width":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    .line 240
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 220
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 222
    .local v0, "widthSpec":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 226
    .local v1, "layout":Landroid/text/StaticLayout;
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 227
    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 228
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int/2addr v4, v5

    .line 229
    .local v4, "height":I
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 230
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    goto :goto_0

    .line 231
    :cond_0
    const/high16 v1, 0x1000000

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 233
    :goto_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 209
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 216
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 162
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 165
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 174
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 177
    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .param p1, "edgeType"    # I

    .line 168
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 171
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 155
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 158
    return-void
.end method

.method public setStyle(I)V
    .locals 5
    .param p1, "styleId"    # I

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .line 270
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 272
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 273
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .local v2, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_0

    .line 275
    .end local v2    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_0
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v2, v2, p1

    .line 278
    .restart local v2    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_0
    sget-object v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 279
    .local v3, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_1
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 281
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2

    :cond_2
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 283
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_3
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_3
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 284
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4

    :cond_4
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_4
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 285
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 287
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 288
    .local v4, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 291
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 152
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 187
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 194
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 205
    :cond_0
    return-void
.end method
