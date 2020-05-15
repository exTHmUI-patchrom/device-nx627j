.class Lcom/android/internal/app/PlatLogoActivity$PBackground;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBackground"
.end annotation


# instance fields
.field private darkest:I

.field private dp:F

.field private maxRadius:F

.field private offset:F

.field private palette:[I

.field private radius:F

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->randomizePalette()V

    .line 53
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 109
    move-object/from16 v7, p1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->dp:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->dp:F

    .line 110
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v9, v1

    .line 111
    .local v9, "width":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v10, v1

    .line 112
    .local v10, "height":F
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    cmpl-float v1, v1, v8

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v1, :cond_1

    .line 113
    div-float v1, v9, v11

    div-float v2, v10, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setPosition(FF)V

    .line 114
    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v9, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setRadius(F)V

    .line 116
    :cond_1
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    const v2, 0x3f2ac083    # 0.667f

    mul-float v12, v1, v2

    .line 118
    .local v12, "inner_w":F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v13, v1

    .line 119
    .local v13, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 120
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->x:F

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->y:F

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object v6, v1

    .line 123
    .local v6, "p":Landroid/graphics/Path;
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    invoke-virtual {v6, v1, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v15, v1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    const/high16 v19, -0x3ccc0000    # -180.0f

    const/high16 v20, 0x43870000    # 270.0f

    const/16 v21, 0x0

    move-object v14, v6

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 126
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fb4fdf4    # 1.414f

    mul-float/2addr v1, v2

    .line 129
    .local v1, "w":F
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    const/4 v2, 0x0

    move v15, v1

    .end local v1    # "w":F
    .local v2, "i":I
    .local v15, "w":F
    :goto_0
    move v14, v2

    .line 132
    .end local v2    # "i":I
    .local v14, "i":I
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    mul-float/2addr v1, v11

    mul-float v2, v12, v11

    add-float/2addr v1, v2

    cmpl-float v1, v15, v1

    const/high16 v2, -0x1000000

    if-lez v1, :cond_2

    .line 133
    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget-object v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    array-length v3, v3

    rem-int v3, v14, v3

    aget v1, v1, v3

    or-int/2addr v1, v2

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    neg-float v1, v15

    div-float v2, v1, v11

    neg-float v1, v15

    div-float v3, v1, v11

    div-float v4, v15, v11

    div-float v5, v15, v11

    move-object v1, v7

    move-object v11, v6

    move-object v6, v13

    .end local v6    # "p":Landroid/graphics/Path;
    .local v11, "p":Landroid/graphics/Path;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 138
    float-to-double v1, v15

    float-to-double v3, v12

    int-to-float v8, v14

    const/high16 v16, 0x41a00000    # 20.0f

    div-float v8, v8, v16

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->offset:F

    add-float/2addr v8, v5

    const v5, 0x40490fd0

    mul-float/2addr v8, v5

    float-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v16, 0x3ff19999a0000000L    # 1.100000023841858

    add-double v5, v16, v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v15, v1

    .line 139
    add-int/lit8 v2, v14, 0x1

    .line 131
    .end local v14    # "i":I
    .restart local v2    # "i":I
    move-object v6, v11

    const/4 v8, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    .end local v11    # "p":Landroid/graphics/Path;
    .restart local v6    # "p":Landroid/graphics/Path;
    .restart local v14    # "i":I
    :cond_2
    move-object v11, v6

    .end local v6    # "p":Landroid/graphics/Path;
    .restart local v11    # "p":Landroid/graphics/Path;
    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v1, v1, v3

    or-int/2addr v1, v2

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v2, v1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v3, v1

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    move-object v1, v7

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 146
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 147
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    invoke-virtual {v11, v1, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v2, v2

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    const/high16 v19, -0x3ccc0000    # -180.0f

    const/high16 v20, 0x43870000    # 270.0f

    const/16 v21, 0x0

    move v5, v14

    move-object v14, v11

    .end local v14    # "i":I
    .local v5, "i":I
    move v6, v15

    move v15, v1

    .end local v15    # "w":F
    .local v6, "w":F
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 150
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    add-float/2addr v1, v12

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v12

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    aget v1, v1, v2

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-virtual {v7, v11, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    const/4 v1, -0x1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {v7, v11, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public lum(I)F
    .locals 3
    .param p1, "rgb"    # I

    .line 82
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x43958000    # 299.0f

    mul-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x4412c000    # 587.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42e40000    # 114.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public randomizePalette()V
    .locals 12

    .line 90
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 91
    .local v0, "slots":I
    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    aput v3, v2, v6

    aput v3, v2, v1

    move-object v1, v2

    .line 92
    .local v1, "color":[F
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    .line 93
    iput v5, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    .line 94
    move v2, v5

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v3, v2

    .line 96
    aget v3, v1, v5

    int-to-float v7, v0

    div-float v7, v4, v7

    add-float/2addr v3, v7

    rem-float/2addr v3, v4

    aput v3, v1, v5

    .line 97
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->lum(I)F

    move-result v3

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget v8, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->lum(I)F

    move-result v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    iput v2, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    .line 94
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    array-length v4, v3

    move v7, v5

    :goto_1
    if-ge v7, v4, :cond_2

    aget v8, v3, v7

    .line 102
    .local v8, "c":I
    const-string v9, "#%08x "

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .end local v8    # "c":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_2
    const-string v3, "PlatLogoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color palette: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 164
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 169
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "o"    # F

    .line 74
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->offset:F

    .line 75
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 66
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->x:F

    .line 67
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->y:F

    .line 68
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "r"    # F

    .line 59
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->dp:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    .line 60
    return-void
.end method
