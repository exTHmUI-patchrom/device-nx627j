.class public Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
    }
.end annotation


# static fields
.field private static final CENTRALIZED_CIRCLE_1:F = -2.0f

.field private static final COLOR_ANIMATION_DURATION:J = 0x7d0L

.field private static final GRADIENT_RADIUS:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "GradientDrawable"


# instance fields
.field private mAlpha:I

.field private mColorAnimation:Landroid/animation/ValueAnimator;

.field private mDensity:F

.field private mMainColor:I

.field private mMainColorTo:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSecondaryColor:I

.field private mSecondaryColorTo:I

.field private final mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    .line 65
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x43f00000    # 480.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 43
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 43
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private buildPaints()V
    .locals 14

    .line 166
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 167
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 172
    .local v1, "w":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 174
    .local v2, "h":F
    iget-object v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v3, v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float/2addr v3, v1

    .line 175
    .local v3, "x":F
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float v11, v4, v2

    .line 177
    .local v11, "y":F
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    mul-float v12, v4, v5

    .line 182
    .local v12, "radius":F
    new-instance v13, Landroid/graphics/RadialGradient;

    iget v8, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    iget v9, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v13

    move v5, v3

    move v6, v11

    move v7, v12

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 184
    .local v4, "radialGradient":Landroid/graphics/RadialGradient;
    iget-object v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 185
    return-void
.end method

.method public static synthetic lambda$setColors$0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIIILandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "mainFrom"    # I
    .param p2, "mainColor"    # I
    .param p3, "secFrom"    # I
    .param p4, "secondaryColor"    # I
    .param p5, "animation"    # Landroid/animation/ValueAnimator;

    .line 99
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 100
    .local v0, "ratio":F
    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 101
    invoke-static {p3, p4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 102
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    .line 104
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 189
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 190
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 196
    .local v1, "w":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 198
    .local v2, "h":F
    iget-object v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v3, v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float/2addr v3, v1

    .line 199
    .local v3, "x":F
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float/2addr v4, v2

    .line 201
    .local v4, "y":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 202
    .local v5, "radius":F
    sub-float v7, v3, v5

    sub-float v8, v4, v5

    add-float v9, v3, v5

    add-float v10, v4, v5

    iget-object v11, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    return-void

    .line 191
    .end local v1    # "w":F
    .end local v2    # "h":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "radius":F
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to call setScreenSize before drawing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlpha()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMainColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 156
    const/4 v0, -0x3

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 212
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 126
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 127
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 128
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    .line 131
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 146
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 147
    return-void
.end method

.method public setColors(IIZ)V
    .locals 10
    .param p1, "mainColor"    # I
    .param p2, "secondaryColor"    # I
    .param p3, "animated"    # Z

    .line 81
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColorTo:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColorTo:I

    if-ne p2, v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 89
    :cond_1
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColorTo:I

    .line 90
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColorTo:I

    .line 92
    if-eqz p3, :cond_2

    .line 93
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 94
    .local v0, "mainFrom":I
    iget v7, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 96
    .local v7, "secFrom":I
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 97
    .local v8, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    new-instance v9, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;

    move-object v1, v9

    move-object v2, p0

    move v3, v0

    move v4, p1

    move v5, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIII)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    new-instance v1, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 115
    iput-object v8, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    .line 116
    .end local v0    # "mainFrom":I
    .end local v7    # "secFrom":I
    .end local v8    # "anim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 117
    :cond_2
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 118
    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 119
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    .line 122
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 3
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 74
    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p2, "animated"    # Z

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 78
    return-void
.end method

.method public setScreenSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 160
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setBounds(IIII)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 163
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 140
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    .line 142
    return-void
.end method
