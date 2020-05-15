.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v0, p0

    .line 75
    const-string v1, "corners"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 78
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 80
    .local v6, "radius":I
    int-to-float v7, v6

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 84
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 86
    .local v8, "topLeftRadius":I
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 88
    .local v10, "topRightRadius":I
    const/4 v11, 0x3

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 90
    .local v12, "bottomLeftRadius":I
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 93
    .local v14, "bottomRightRadius":I
    if-ne v8, v6, :cond_0

    if-ne v10, v6, :cond_0

    if-ne v12, v6, :cond_0

    if-eq v14, v6, :cond_1

    .line 95
    :cond_0
    const/16 v15, 0x8

    new-array v15, v15, [F

    int-to-float v13, v8

    aput v13, v15, v5

    int-to-float v5, v8

    aput v5, v15, v7

    int-to-float v5, v10

    aput v5, v15, v9

    int-to-float v5, v10

    aput v5, v15, v11

    int-to-float v5, v12

    const/4 v9, 0x4

    aput v5, v15, v9

    const/4 v5, 0x5

    int-to-float v9, v12

    aput v9, v15, v5

    const/4 v5, 0x6

    int-to-float v9, v14

    aput v9, v15, v5

    const/4 v5, 0x7

    int-to-float v9, v14

    aput v9, v15, v5

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 102
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return v7

    .line 105
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "radius":I
    .end local v8    # "topLeftRadius":I
    .end local v10    # "topRightRadius":I
    .end local v12    # "bottomLeftRadius":I
    .end local v14    # "bottomRightRadius":I
    :cond_2
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-super/range {p0 .. p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v1

    return v1
.end method

.method public setCornerRadii([F)V
    .locals 2
    .param p1, "radii"    # [F

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    .line 70
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "radii":[F
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 47
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 48
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 49
    aput p1, v0, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 53
    return-void
.end method
