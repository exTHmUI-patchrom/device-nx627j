.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "BaseCanvas.java"


# instance fields
.field private mAllowHwBitmapsInSwMode:Z

.field protected mDensity:I

.field protected mNativeCanvasWrapper:J

.field protected mScreenDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    .line 57
    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 58
    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return-void
.end method

.method protected static final checkRange(III)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 73
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-gt v0, p0, :cond_0

    .line 76
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
.end method

.method private static native nDrawCircle(JFFFJ)V
.end method

.method private static native nDrawColor(JII)V
.end method

.method private static native nDrawLine(JFFFFJ)V
.end method

.method private static native nDrawLines(J[FIIJ)V
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native nDrawOval(JFFFFJ)V
.end method

.method private static native nDrawPaint(JJ)V
.end method

.method private static native nDrawPath(JJJ)V
.end method

.method private static native nDrawPoint(JFFJ)V
.end method

.method private static native nDrawPoints(J[FIIJ)V
.end method

.method private static native nDrawRect(JFFFFJ)V
.end method

.method private static native nDrawRegion(JJJ)V
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJ)V
.end method

.method private static native nDrawText(J[CIIFFIJ)V
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJ)V
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 562
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    .line 566
    return-void

    .line 563
    :cond_1
    :goto_0
    return-void
.end method

.method private throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 569
    if-nez p1, :cond_0

    .line 570
    return-void

    .line 572
    :cond_0
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    .line 573
    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 575
    :cond_1
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_2

    .line 576
    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    .line 577
    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    .line 579
    :cond_2
    return-void
.end method

.method private throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 556
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwBitmapInSwMode()V

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method public drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 105
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 106
    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 92
    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 93
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 94
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 93
    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v12}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 95
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 99
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 100
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 110
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 111
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 112
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    iget v7, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v8, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v9, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 111
    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    .line 114
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 117
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 118
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    .line 119
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    .line 118
    :goto_0
    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    .line 120
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 124
    move-object/from16 v3, p4

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 128
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 129
    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide/from16 v17, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    .line 132
    .local v17, "nativePaint":J
    :goto_1
    if-nez v1, :cond_1

    .line 133
    const/4 v4, 0x0

    move v5, v4

    .line 134
    .local v4, "left":I
    .local v5, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 135
    .local v6, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 140
    .end local v6    # "right":I
    .local v7, "bottom":I
    .local v15, "right":I
    :goto_2
    move v15, v6

    goto :goto_3

    .line 137
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v7    # "bottom":I
    .end local v15    # "right":I
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 138
    .restart local v4    # "left":I
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 139
    .restart local v6    # "right":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 140
    .restart local v5    # "top":I
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .end local v6    # "right":I
    .restart local v7    # "bottom":I
    .restart local v15    # "right":I
    :goto_3
    move v14, v7

    .line 143
    .end local v7    # "bottom":I
    .local v14, "bottom":I
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    int-to-float v9, v4

    int-to-float v10, v5

    int-to-float v11, v15

    int-to-float v12, v14

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v2, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v21, v4

    iget v4, v0, Landroid/graphics/Bitmap;->mDensity:I

    .end local v4    # "left":I
    .local v21, "left":I
    move/from16 v16, v8

    move-object v8, v0

    move/from16 v22, v14

    move/from16 v14, v16

    .end local v14    # "bottom":I
    .local v22, "bottom":I
    move/from16 v23, v15

    move v15, v1

    .end local v15    # "right":I
    .local v23, "right":I
    move/from16 v16, v3

    move/from16 v19, v2

    move/from16 v20, v4

    invoke-static/range {v6 .. v20}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    .line 146
    return-void

    .line 125
    .end local v5    # "top":I
    .end local v17    # "nativePaint":J
    .end local v21    # "left":I
    .end local v22    # "bottom":I
    .end local v23    # "right":I
    :cond_2
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 150
    move-object/from16 v3, p4

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 155
    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide/from16 v17, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    .line 158
    .local v17, "nativePaint":J
    :goto_1
    if-nez v1, :cond_1

    .line 159
    const/4 v4, 0x0

    move v5, v4

    .line 160
    .local v4, "left":F
    .local v5, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 161
    .local v6, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 166
    .local v7, "bottom":F
    move/from16 v21, v6

    .end local v6    # "right":F
    .end local v7    # "bottom":F
    .local v12, "bottom":F
    .local v21, "right":F
    :goto_2
    move v12, v7

    goto :goto_3

    .line 163
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v12    # "bottom":F
    .end local v21    # "right":F
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 164
    .restart local v4    # "left":F
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    .line 165
    .local v5, "right":F
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    .line 166
    .local v6, "top":F
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move/from16 v21, v5

    move v5, v6

    goto :goto_2

    .line 169
    .end local v6    # "top":F
    .local v5, "top":F
    .restart local v12    # "bottom":F
    .restart local v21    # "right":F
    :goto_3
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    iget v10, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v9, p1

    iget v8, v9, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v20, v8

    move-object v8, v9

    move v9, v4

    move/from16 v19, v10

    move v10, v5

    move/from16 v16, v11

    move/from16 v11, v21

    invoke-static/range {v6 .. v20}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    .line 172
    return-void

    .line 151
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v12    # "bottom":F
    .end local v17    # "nativePaint":J
    .end local v21    # "right":F
    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v13, p6

    .line 178
    move-object/from16 v11, p9

    if-ltz v13, :cond_6

    .line 181
    if-ltz p7, :cond_5

    .line 184
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v13, :cond_4

    .line 187
    add-int/lit8 v1, p7, -0x1

    mul-int v1, v1, p3

    add-int v14, p2, v1

    .line 188
    .local v14, "lastScanline":I
    move-object/from16 v12, p1

    array-length v10, v12

    .line 189
    .local v10, "length":I
    if-ltz p2, :cond_3

    add-int v1, p2, v13

    if-gt v1, v10, :cond_3

    if-ltz v14, :cond_3

    add-int v1, v14, v13

    if-gt v1, v10, :cond_3

    .line 193
    invoke-direct {v0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 195
    if-eqz v13, :cond_2

    if-nez p7, :cond_0

    .line 196
    move/from16 v17, v10

    goto :goto_2

    .line 199
    :cond_0
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 200
    if-eqz v11, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    .line 199
    :goto_0
    move-wide v15, v3

    goto :goto_1

    .line 200
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 199
    :goto_1
    move-object v3, v12

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v13

    move/from16 v9, p7

    move/from16 v17, v10

    move/from16 v10, p8

    .end local v10    # "length":I
    .local v17, "length":I
    move-wide v11, v15

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 201
    return-void

    .line 196
    .end local v17    # "length":I
    .restart local v10    # "length":I
    :cond_2
    move/from16 v17, v10

    .line 196
    .end local v10    # "length":I
    .restart local v17    # "length":I
    :goto_2
    return-void

    .line 191
    .end local v17    # "length":I
    .restart local v10    # "length":I
    :cond_3
    move/from16 v17, v10

    .line 191
    .end local v10    # "length":I
    .restart local v17    # "length":I
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 185
    .end local v14    # "lastScanline":I
    .end local v17    # "length":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v11, p5

    int-to-float v6, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 209
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v10, p7

    .line 214
    move-object/from16 v11, p8

    or-int v1, p2, p3

    or-int/2addr v1, v12

    or-int/2addr v1, v10

    if-ltz v1, :cond_4

    .line 217
    invoke-direct {v0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 218
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 221
    :cond_0
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v9, v1, v2

    .line 223
    .local v9, "count":I
    move-object/from16 v8, p4

    array-length v1, v8

    mul-int/lit8 v2, v9, 0x2

    invoke-static {v1, v12, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 224
    if-eqz v13, :cond_1

    .line 226
    array-length v1, v13

    invoke-static {v1, v10, v9}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 228
    :cond_1
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 230
    if-eqz v11, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    .line 228
    :goto_0
    move-wide v14, v3

    goto :goto_1

    .line 230
    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 228
    :goto_1
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v8

    move v7, v12

    move-object v8, v13

    move/from16 v16, v9

    move v9, v10

    .end local v9    # "count":I
    .local v16, "count":I
    move-wide v10, v14

    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    .line 231
    return-void

    .line 219
    .end local v16    # "count":I
    :cond_3
    :goto_2
    return-void

    .line 215
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 234
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 235
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    .line 236
    return-void
.end method

.method public drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 239
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 240
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 243
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 244
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 248
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 249
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    .line 250
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 254
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 255
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    .line 256
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 259
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 260
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 261
    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 264
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 265
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    .line 266
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 269
    if-eqz p1, :cond_0

    .line 272
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 273
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 274
    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 277
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    .line 278
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 20
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 281
    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 282
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 284
    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide/from16 v16, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    .line 285
    .local v16, "nativePaint":J
    :goto_1
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v4, p1

    iget-wide v10, v4, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v5

    iget v5, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    .line 285
    move/from16 v18, v5

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 288
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 20
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 291
    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 292
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 293
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 294
    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide/from16 v16, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    .line 295
    .local v16, "nativePaint":J
    :goto_1
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v4, p1

    iget-wide v10, v4, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->right:F

    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    .line 295
    move/from16 v18, v5

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 298
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 301
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 302
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 303
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    goto :goto_0

    .line 305
    :cond_0
    iget-wide v7, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v9

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    .line 307
    :goto_0
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 310
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 311
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    .line 312
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 316
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 317
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    .line 318
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 321
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 322
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 323
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 343
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 332
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 334
    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 362
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 363
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 346
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 347
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 348
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 351
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 352
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 356
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 357
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 358
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 357
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 359
    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 367
    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 368
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 369
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 368
    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 370
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 373
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 374
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 375
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 26
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p2

    move/from16 v14, p3

    .line 390
    move-object/from16 v13, p6

    or-int v0, v15, v14

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v14

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 393
    invoke-direct {v7, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 394
    instance-of v0, v8, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    instance-of v0, v8, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 399
    move-object v0, v8

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v7

    move v2, v15

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v13

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 402
    :cond_1
    sub-int v0, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 403
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {v8, v15, v14, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 404
    iget-wide v1, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/16 v19, 0x0

    sub-int v20, v14, v15

    iget v3, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 405
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v24

    .line 404
    move-wide/from16 v16, v1

    move-object/from16 v18, v0

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, v3

    invoke-static/range {v16 .. v25}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 406
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .end local v0    # "buf":[C
    goto :goto_1

    .line 396
    :cond_2
    :goto_0
    iget-wide v9, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 397
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 396
    move v12, v15

    move v13, v14

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    invoke-static/range {v9 .. v18}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 408
    :goto_1
    return-void

    .line 391
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 411
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 412
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 413
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 412
    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 414
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 418
    move-object/from16 v11, p6

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 421
    invoke-direct {v0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 422
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    .line 423
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 422
    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 424
    return-void

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 379
    move-object/from16 v11, p6

    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    move-object v12, p1

    array-length v2, v12

    sub-int/2addr v2, p2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 383
    invoke-direct {v0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 384
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    .line 385
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 384
    move-object v3, v12

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 386
    return-void

    .line 381
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 439
    move-object/from16 v1, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 440
    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 441
    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 442
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 441
    move-object v5, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v3 .. v12}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 444
    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    .line 428
    move-object/from16 v13, p7

    if-ltz p2, :cond_0

    add-int v1, p2, p3

    move-object/from16 v11, p1

    array-length v2, v11

    if-gt v1, v2, :cond_0

    .line 431
    invoke-direct {v0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 432
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 433
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 434
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .line 432
    move-object v3, v11

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide v11, v14

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 435
    return-void

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 30
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 469
    move-object/from16 v9, p9

    if-eqz v11, :cond_6

    .line 472
    if-eqz v9, :cond_5

    .line 475
    or-int v0, v15, v14

    or-int/2addr v0, v12

    or-int/2addr v0, v13

    sub-int v1, v15, v12

    or-int/2addr v0, v1

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    sub-int v1, v13, v14

    or-int/2addr v0, v1

    .line 476
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v13

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 480
    invoke-direct {v10, v9}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 481
    instance-of v0, v11, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, v11, Landroid/text/SpannedString;

    if-nez v0, :cond_3

    instance-of v0, v11, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 485
    :cond_0
    instance-of v0, v11, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 486
    move-object v0, v11

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v10

    move v2, v15

    move v3, v14

    move v4, v12

    move v5, v13

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 489
    :cond_1
    sub-int v0, v13, v12

    .line 490
    .local v0, "contextLen":I
    sub-int v1, v14, v15

    .line 491
    .local v1, "len":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 492
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v11, v12, v13, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 493
    const-wide/16 v3, 0x0

    .line 494
    .local v3, "measuredTextPtr":J
    instance-of v5, v11, Landroid/text/PrecomputedText;

    if-eqz v5, :cond_2

    .line 495
    move-object v5, v11

    check-cast v5, Landroid/text/PrecomputedText;

    .line 496
    .local v5, "mt":Landroid/text/PrecomputedText;
    invoke-virtual {v5, v15}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v6

    .line 497
    .local v6, "paraIndex":I
    invoke-virtual {v5, v6}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v7

    if-gt v14, v7, :cond_2

    .line 499
    invoke-virtual {v5, v6}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v3

    .line 502
    .end local v5    # "mt":Landroid/text/PrecomputedText;
    .end local v6    # "paraIndex":I
    :cond_2
    iget-wide v5, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v19, v15, v12

    const/16 v21, 0x0

    .line 503
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v26

    .line 502
    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    move/from16 v20, v1

    move/from16 v22, v0

    move/from16 v23, p6

    move/from16 v24, p7

    move/from16 v25, p8

    move-wide/from16 v28, v3

    invoke-static/range {v16 .. v29}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 504
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 504
    .end local v0    # "contextLen":I
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    .end local v3    # "measuredTextPtr":J
    goto :goto_1

    .line 483
    :cond_3
    :goto_0
    iget-wide v0, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v22

    .line 483
    move-wide v12, v0

    move-object v14, v2

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-static/range {v12 .. v23}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 506
    :goto_1
    return-void

    .line 477
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 473
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 449
    move-object/from16 v13, p9

    if-eqz v15, :cond_2

    .line 452
    if-eqz v13, :cond_1

    .line 455
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, v15

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 461
    invoke-direct {v0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 462
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 463
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    .line 462
    move-object v3, v15

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 464
    return-void

    .line 458
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 453
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 18
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v13, p7

    move-object/from16 v12, p9

    .line 512
    move-object/from16 v11, p3

    array-length v1, v11

    move/from16 v10, p4

    invoke-static {v1, v10, v14}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    if-eqz v15, :cond_1

    .line 517
    array-length v1, v15

    move/from16 v9, p6

    invoke-static {v1, v9, v14}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_0

    .line 519
    :cond_1
    move/from16 v9, p6

    :goto_0
    if-eqz v13, :cond_2

    .line 520
    array-length v1, v13

    div-int/lit8 v2, v14, 0x2

    move/from16 v8, p8

    invoke-static {v1, v8, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_1

    .line 522
    :cond_2
    move/from16 v8, p8

    :goto_1
    if-eqz v12, :cond_3

    .line 523
    array-length v1, v12

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-static {v1, v7, v6}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_2

    .line 525
    :cond_3
    move/from16 v7, p10

    move/from16 v6, p11

    :goto_2
    move-object/from16 v5, p12

    invoke-direct {v0, v5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 526
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v4, p1

    iget v3, v4, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 528
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 526
    move v4, v14

    move-object v5, v11

    move v6, v10

    move-object v7, v15

    move v8, v9

    move-object v9, v13

    move/from16 v10, p8

    move-object v11, v12

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, v16

    invoke-static/range {v1 .. v15}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 529
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isHwBitmapsInSwModeEnabled()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return v0
.end method

.method protected onHwBitmapInSwMode()V
    .locals 2

    .line 549
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    if-eqz v0, :cond_0

    .line 553
    return-void

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support hardware bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHwBitmapsInSwModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 535
    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    .line 536
    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 70
    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
