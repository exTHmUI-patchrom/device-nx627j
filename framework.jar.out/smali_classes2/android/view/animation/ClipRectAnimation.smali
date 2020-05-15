.class public Landroid/view/animation/ClipRectAnimation;
.super Landroid/view/animation/Animation;
.source "ClipRectAnimation.java"


# instance fields
.field private mFromBottomType:I

.field private mFromBottomValue:F

.field private mFromLeftType:I

.field private mFromLeftValue:F

.field protected final mFromRect:Landroid/graphics/Rect;

.field private mFromRightType:I

.field private mFromRightValue:F

.field private mFromTopType:I

.field private mFromTopValue:F

.field private mToBottomType:I

.field private mToBottomValue:F

.field private mToLeftType:I

.field private mToLeftValue:F

.field protected final mToRect:Landroid/graphics/Rect;

.field private mToRightType:I

.field private mToRightValue:F

.field private mToTopType:I

.field private mToTopValue:F


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 2
    .param p1, "fromL"    # I
    .param p2, "fromT"    # I
    .param p3, "fromR"    # I
    .param p4, "fromB"    # I
    .param p5, "toL"    # I
    .param p6, "toT"    # I
    .param p7, "toR"    # I
    .param p8, "toB"    # I

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p5, p6, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    .line 37
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    .line 38
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    .line 42
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    .line 44
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->ClipRectAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 70
    .local v2, "d":Landroid/view/animation/Animation$Description;
    iget v3, v2, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    .line 71
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    .line 73
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 75
    iget v3, v2, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    .line 76
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    .line 78
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 80
    iget v3, v2, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    .line 81
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 85
    .end local v2    # "d":Landroid/view/animation/Animation$Description;
    .local v0, "d":Landroid/view/animation/Animation$Description;
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    .line 86
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    .line 89
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 91
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    .line 92
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    .line 94
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 96
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    .line 97
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    .line 99
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 101
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    .line 102
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    .line 104
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 106
    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    .line 107
    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    .line 109
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;

    .line 118
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    .line 37
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    .line 38
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    .line 42
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    .line 44
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    .line 119
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    .line 123
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    .line 124
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    .line 125
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    .line 127
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    .line 128
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    .line 129
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    .line 130
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    .line 131
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected non-null animation clip rects"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    .line 143
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 144
    .local v0, "l":I
    iget-object v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 145
    .local v1, "t":I
    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 146
    .local v2, "r":I
    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 147
    .local v3, "b":I
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 148
    return-void
.end method

.method public initialize(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 158
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    invoke-virtual {p0, v1, v2, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    .line 159
    invoke-virtual {p0, v2, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    .line 160
    invoke-virtual {p0, v3, v4, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    iget v5, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    .line 161
    invoke-virtual {p0, v4, v5, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v4

    float-to-int v4, v4

    .line 158
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    invoke-virtual {p0, v1, v2, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    .line 163
    invoke-virtual {p0, v2, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    .line 164
    invoke-virtual {p0, v3, v4, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    iget v5, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    .line 165
    invoke-virtual {p0, v4, v5, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v4

    float-to-int v4, v4

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    return-void
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method
