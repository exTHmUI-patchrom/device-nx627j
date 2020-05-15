.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .line 75
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    .line 77
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    .line 88
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 99
    if-eqz p2, :cond_0

    .line 100
    sget-object v0, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 102
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/PathInterpolator;->setChangingConfiguration(I)V

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    .line 64
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 65
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 66
    return-void
.end method

.method private initCubic(FFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 155
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 156
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 158
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 159
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 11
    .param p1, "path"    # Landroid/graphics/Path;

    .line 162
    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    .line 164
    .local v0, "pointComponents":[F
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 165
    .local v1, "numPoints":I
    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    const/4 v3, 0x2

    aget v5, v0, v3

    cmpl-float v4, v5, v4

    if-nez v4, :cond_4

    array-length v4, v0

    sub-int/2addr v4, v3

    aget v3, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v2, v0, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    .line 171
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 172
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "prevX":F
    const/4 v3, 0x0

    .line 175
    .local v3, "prevFraction":F
    const/4 v4, 0x0

    .line 176
    .local v4, "componentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 177
    add-int/lit8 v6, v4, 0x1

    .local v6, "componentIndex":I
    aget v4, v0, v4

    .line 178
    .local v4, "fraction":F
    add-int/lit8 v7, v6, 0x1

    .local v7, "componentIndex":I
    aget v6, v0, v6

    .line 179
    .local v6, "x":F
    add-int/lit8 v8, v7, 0x1

    .local v8, "componentIndex":I
    aget v7, v0, v7

    .line 180
    .local v7, "y":F
    cmpl-float v9, v4, v3

    if-nez v9, :cond_1

    cmpl-float v9, v6, v2

    if-nez v9, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 184
    :cond_1
    :goto_1
    cmpg-float v9, v6, v2

    if-ltz v9, :cond_2

    .line 187
    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aput v6, v9, v5

    .line 188
    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aput v7, v9, v5

    .line 189
    move v2, v6

    .line 190
    move v3, v4

    .line 176
    .end local v4    # "fraction":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_0

    .line 185
    .restart local v4    # "fraction":F
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The Path cannot loop back on itself."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 192
    .end local v5    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "componentIndex":I
    .local v4, "componentIndex":I
    :cond_3
    return-void

    .line 168
    .end local v2    # "prevX":F
    .end local v3    # "prevFraction":F
    .end local v4    # "componentIndex":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initQuad(FF)V
    .locals 2
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .line 148
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 149
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 151
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 152
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 112
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "pathData":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 115
    .local v1, "path":Landroid/graphics/Path;
    if-eqz v1, :cond_0

    .line 119
    invoke-direct {p0, v1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 120
    .end local v0    # "pathData":Ljava/lang/String;
    .end local v1    # "path":Landroid/graphics/Path;
    goto :goto_0

    .line 116
    .restart local v0    # "pathData":Ljava/lang/String;
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_0
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The path is null, which is created from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    .end local v0    # "pathData":Ljava/lang/String;
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 127
    .local v0, "x1":F
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 129
    .local v1, "y1":F
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 130
    .local v4, "hasX2":Z
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    .line 132
    .local v6, "hasY2":Z
    if-ne v4, v6, :cond_3

    .line 137
    if-nez v4, :cond_2

    .line 138
    invoke-direct {p0, v0, v1}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 141
    .local v3, "x2":F
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 142
    .local v2, "y2":F
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 145
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v2    # "y2":F
    .end local v3    # "x2":F
    .end local v4    # "hasX2":Z
    .end local v6    # "hasY2":Z
    :goto_0
    return-void

    .line 133
    .restart local v0    # "x1":F
    .restart local v1    # "y1":F
    .restart local v4    # "hasX2":Z
    .restart local v6    # "hasY2":Z
    :cond_3
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v4    # "hasX2":Z
    .end local v6    # "hasY2":Z
    :cond_4
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_5
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .line 240
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    invoke-static {v0, v1}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createPathInterpolator([F[F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 8
    .param p1, "t"    # F

    .line 206
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 207
    return v0

    .line 208
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 209
    return v1

    .line 212
    :cond_1
    const/4 v1, 0x0

    .line 213
    .local v1, "startIndex":I
    iget-object v2, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 215
    .local v2, "endIndex":I
    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    .line 216
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    .line 217
    .local v4, "midIndex":I
    iget-object v5, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 218
    move v2, v4

    goto :goto_1

    .line 220
    :cond_2
    move v1, v4

    .line 222
    .end local v4    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 224
    :cond_3
    iget-object v3, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    .line 225
    .local v3, "xRange":F
    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v0, v0, v1

    return v0

    .line 229
    :cond_4
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v0, v0, v1

    sub-float v0, p1, v0

    .line 230
    .local v0, "tInRange":F
    div-float v4, v0, v3

    .line 232
    .local v4, "fraction":F
    iget-object v5, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v5, v5, v1

    .line 233
    .local v5, "startY":F
    iget-object v6, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v6, v6, v2

    .line 234
    .local v6, "endY":F
    sub-float v7, v6, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    return v7
.end method
