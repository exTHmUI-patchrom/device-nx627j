.class final Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoundedRectangleShape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape$ExpansionDirection;
    }
.end annotation


# static fields
.field private static final PROPERTY_ROUND_RATIO:Ljava/lang/String; = "roundRatio"


# instance fields
.field private final mBoundingRectangle:Landroid/graphics/RectF;

.field private final mBoundingWidth:F

.field private final mClipPath:Landroid/graphics/Path;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private final mExpansionDirection:I

.field private final mInverted:Z

.field private mLeftBoundary:F

.field private mRightBoundary:F

.field private mRoundRatio:F


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;IZ)V
    .locals 4
    .param p1, "boundingRectangle"    # Landroid/graphics/RectF;
    .param p2, "expansionDirection"    # I
    .param p3, "inverted"    # Z

    .line 139
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    .line 123
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    .line 124
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    .line 127
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    .line 129
    iput v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    .line 140
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iput v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    .line 142
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    .line 144
    if-eqz p3, :cond_1

    .line 145
    invoke-static {p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->invert(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mExpansionDirection:I

    goto :goto_1

    .line 147
    :cond_1
    iput p2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mExpansionDirection:I

    .line 150
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 151
    invoke-virtual {p0, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setRoundRatio(F)V

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setRoundRatio(F)V

    .line 155
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/RectF;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroid/widget/SmartSelectSprite$1;

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 96
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    .param p1, "x1"    # F

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setStartBoundary(F)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    .param p1, "x1"    # F

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setEndBoundary(F)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 96
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getAdjustedCornerRadius()F
    .locals 2

    .line 215
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v0

    iget v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getBoundingWidth()F
    .locals 2

    .line 219
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method private getCornerRadius()F
    .locals 2

    .line 211
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static invert(I)I
    .locals 1
    .param p0, "expansionDirection"    # I

    .line 116
    mul-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private setEndBoundary(F)V
    .locals 1
    .param p1, "endBoundary"    # F

    .line 203
    iget-boolean v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    goto :goto_0

    .line 206
    :cond_0
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    .line 208
    :goto_0
    return-void
.end method

.method private setStartBoundary(F)V
    .locals 1
    .param p1, "startBoundary"    # F

    .line 195
    iget-boolean v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    goto :goto_0

    .line 198
    :cond_0
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    .line 200
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 163
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    iget v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v0

    .line 168
    .local v0, "cornerRadius":F
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getAdjustedCornerRadius()F

    move-result v1

    .line 170
    .local v1, "adjustedCornerRadius":F
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 171
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 172
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    add-float/2addr v3, v5

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 176
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 181
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 182
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 184
    return-void
.end method

.method getRoundRatio()F
    .locals 1

    .line 191
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    return v0
.end method

.method setRoundRatio(F)V
    .locals 0
    .param p1, "roundRatio"    # F

    .line 187
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    .line 188
    return-void
.end method
