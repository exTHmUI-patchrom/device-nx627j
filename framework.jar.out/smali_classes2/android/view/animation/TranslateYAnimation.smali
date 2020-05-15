.class public Landroid/view/animation/TranslateYAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateYAnimation.java"


# instance fields
.field mTmpValues:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "fromYDelta"    # F
    .param p2, "toYDelta"    # F

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    .line 36
    return-void
.end method

.method public constructor <init>(IFIF)V
    .locals 9
    .param p1, "fromYType"    # I
    .param p2, "fromYValue"    # F
    .param p3, "toYType"    # I
    .param p4, "toYValue"    # F

    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    .line 43
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 50
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 51
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 52
    iget v1, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateYAnimation;->mToYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 53
    .local v1, "dy":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 54
    return-void
.end method
