.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field private mA:F

.field private mB:F

.field private mC:F

.field private mLength:F

.field private mPointTemp:Landroid/graphics/PointF;

.field public mX:[F

.field public mY:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "slope"    # F

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "point1"    # Landroid/graphics/PointF;
    .param p2, "point2"    # Landroid/graphics/PointF;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    .line 31
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V
    .locals 5
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    .line 26
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v2, v1

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v4, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 27
    return-void
.end method

.method private init()V
    .locals 2

    .line 45
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    .line 46
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    .line 49
    return-void
.end method


# virtual methods
.method public crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "point"    # Landroid/graphics/PointF;

    .line 210
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 214
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public distance(FF)F
    .locals 6
    .param p1, "x0"    # F
    .param p2, "y0"    # F

    .line 146
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v2, v1

    invoke-direct {v0, p1, p2, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .line 147
    .local v0, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 149
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    .line 150
    .local v1, "x":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    .line 151
    .local v2, "y":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 152
    .local v3, "length":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 153
    return v3
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 298
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v0, v1

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    return-void
.end method

.method public getLength()F
    .locals 1

    .line 110
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mLength:F

    return v0
.end method

.method public getSlope()F
    .locals 1

    .line 106
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    return v0
.end method

.method public hasCrossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)Z
    .locals 8
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 220
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    return v1

    .line 223
    :cond_0
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 224
    .local v0, "x":F
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v4, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v4, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 228
    .local v2, "y":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 229
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v1

    .line 230
    .local v3, "min":F
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v5

    .local v4, "max":F
    goto :goto_0

    .line 232
    .end local v3    # "min":F
    .end local v4    # "max":F
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v5

    .line 233
    .restart local v3    # "min":F
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v1

    .line 236
    .restart local v4    # "max":F
    :goto_0
    cmpg-float v6, v0, v3

    if-ltz v6, :cond_b

    cmpl-float v6, v0, v4

    if-lez v6, :cond_2

    goto/16 :goto_6

    .line 241
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v7, v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 242
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v6, v1

    .line 243
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v6, v5

    goto :goto_1

    .line 245
    :cond_3
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v6, v5

    .line 246
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v6, v1

    .line 249
    :goto_1
    cmpg-float v6, v2, v3

    if-ltz v6, :cond_a

    cmpl-float v6, v2, v4

    if-lez v6, :cond_4

    goto :goto_5

    .line 254
    :cond_4
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v1

    iget-object v7, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v7, v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 255
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v6, v1

    .line 256
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v6, v5

    goto :goto_2

    .line 258
    :cond_5
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v6, v5

    .line 259
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v6, v1

    .line 262
    :goto_2
    cmpg-float v6, v0, v3

    if-ltz v6, :cond_9

    cmpl-float v6, v0, v4

    if-lez v6, :cond_6

    goto :goto_4

    .line 267
    :cond_6
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v1

    iget-object v7, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v7, v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 268
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v6, v1

    .line 269
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v6, v5

    goto :goto_3

    .line 271
    :cond_7
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v6, v5

    .line 272
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v6, v1

    .line 275
    :goto_3
    cmpg-float v6, v2, v3

    if-ltz v6, :cond_8

    cmpl-float v6, v2, v4

    if-gtz v6, :cond_8

    move v1, v5

    nop

    :cond_8
    return v1

    .line 263
    :cond_9
    :goto_4
    return v1

    .line 250
    :cond_a
    :goto_5
    return v1

    .line 237
    :cond_b
    :goto_6
    return v1
.end method

.method public isSameSide(FFFF)Z
    .locals 5
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .line 130
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v1

    sub-float v0, p1, v0

    .line 132
    .local v0, "temp0":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v1

    sub-float v2, p3, v2

    .local v2, "temp1":F
    goto :goto_0

    .line 134
    .end local v0    # "temp0":F
    .end local v2    # "temp1":F
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v0, p1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float/2addr v0, v2

    .line 135
    .restart local v0    # "temp0":F
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, p3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float/2addr v2, v3

    .line 138
    .restart local v2    # "temp1":F
    :goto_0
    mul-float v3, v0, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isSameSide(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "point0"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;

    .line 116
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v1

    sub-float/2addr v0, v2

    .line 118
    .local v0, "temp0":F
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    .local v2, "temp1":F
    goto :goto_0

    .line 120
    .end local v0    # "temp0":F
    .end local v2    # "temp1":F
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float/2addr v0, v2

    .line 121
    .restart local v0    # "temp0":F
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float/2addr v2, v3

    .line 124
    .restart local v2    # "temp1":F
    :goto_0
    mul-float v3, v0, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FFF)Z
    .locals 16
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "distance"    # F
    .param p3, "pointX"    # F
    .param p4, "pointY"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 165
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 167
    .end local p2    # "distance":F
    .local v2, "distance":F
    iget v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 168
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v5

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    .line 169
    neg-float v2, v2

    .line 172
    :cond_0
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v5

    add-float/2addr v3, v2

    .line 173
    .local v3, "x0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v5, v6, v5

    .line 174
    .local v5, "y0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v4

    add-float/2addr v6, v2

    .line 175
    .local v6, "x1":F
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v7, v7, v4

    .line 205
    .local v7, "y1":F
    move v11, v3

    move v13, v7

    goto :goto_0

    .line 177
    .end local v3    # "x0":F
    .end local v5    # "y0":F
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    :cond_1
    iget v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float v3, v3, p3

    iget v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float v6, v6, p4

    add-float/2addr v3, v6

    iget v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float/2addr v3, v6

    .line 179
    .local v3, "delta0":F
    const/4 v6, 0x0

    cmpl-float v8, v6, v3

    if-nez v8, :cond_2

    .line 180
    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    .line 181
    return v5

    .line 184
    :cond_2
    const/high16 v8, -0x40800000    # -1.0f

    iget v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    div-float/2addr v8, v9

    .line 185
    .local v8, "slope":F
    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v10, v8, v8

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float v9, v2, v9

    .line 186
    .local v9, "x":F
    mul-float v10, v9, v8

    .line 187
    .local v10, "y":F
    iget-object v11, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v11, v11, v5

    add-float/2addr v11, v9

    .line 188
    .local v11, "x0":F
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v5, v12, v5

    add-float/2addr v5, v10

    .line 189
    .restart local v5    # "y0":F
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v12, v12, v4

    add-float/2addr v12, v9

    .line 190
    .local v12, "x1":F
    iget-object v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v13, v13, v4

    add-float/2addr v13, v10

    .line 192
    .local v13, "y1":F
    iget v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v14, v11

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v4, v5

    add-float/2addr v14, v4

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float/2addr v14, v4

    .line 194
    .local v14, "delta1":F
    mul-float v4, v3, v14

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    .line 195
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    invoke-virtual {v0, v11, v5, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    .line 196
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 197
    .end local v11    # "x0":F
    .local v4, "x0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v5, v6, Landroid/graphics/PointF;->y:F

    .line 199
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    invoke-virtual {v0, v12, v13, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    .line 200
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 201
    .end local v12    # "x1":F
    .restart local v6    # "x1":F
    iget-object v11, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v3, v11, Landroid/graphics/PointF;->y:F

    .line 205
    .end local v8    # "slope":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v13    # "y1":F
    .end local v14    # "delta1":F
    .local v3, "y1":F
    move v13, v3

    move v11, v4

    goto :goto_0

    .end local v3    # "y1":F
    .end local v4    # "x0":F
    .end local v6    # "x1":F
    .restart local v11    # "x0":F
    .restart local v12    # "x1":F
    .restart local v13    # "y1":F
    :cond_3
    move v6, v12

    .end local v12    # "x1":F
    .restart local v6    # "x1":F
    :goto_0
    invoke-virtual {v1, v11, v5, v6, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 206
    const/4 v3, 0x1

    return v3
.end method

.method public offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z
    .locals 2
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "distance"    # F
    .param p3, "point"    # Landroid/graphics/PointF;

    .line 157
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FFF)Z

    move-result v0

    return v0
.end method

.method public set(FFF)V
    .locals 6
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "slope"    # F

    .line 56
    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    .line 58
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v0, v3

    .line 60
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v3

    .line 61
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v3

    add-float/2addr v4, v1

    aput v4, v0, v2

    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v3

    aput v1, v0, v2

    goto :goto_0

    .line 63
    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v0, v3

    .line 65
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v3

    .line 66
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v3

    aput v4, v0, v2

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v4, v3

    add-float/2addr v4, v1

    aput v4, v0, v2

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v0, v3

    .line 70
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v3

    .line 71
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v3

    add-float/2addr v4, v1

    aput v4, v0, v2

    .line 72
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    aput v1, v0, v2

    .line 75
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    .line 76
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v0, v3

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v3

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    .line 78
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    .line 79
    .end local p1    # "x0":F
    .local v0, "x0":F
    iget-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget p1, p1, v2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v3

    sub-float/2addr p1, v1

    .line 80
    .end local p2    # "y0":F
    .local p1, "y0":F
    mul-float p2, v0, v0

    mul-float v1, p1, p1

    add-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p2, v1

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mLength:F

    .line 81
    return-void
.end method

.method public set(FFFF)V
    .locals 5
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .line 86
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 87
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v1

    .line 88
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v2, 0x1

    aput p3, v0, v2

    .line 89
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p4, v0, v2

    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v1

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v2

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 92
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v1

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    .line 97
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    .line 98
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v0, v1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v1

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    .line 100
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v1

    sub-float/2addr v0, v3

    .line 101
    .local v0, "x":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v2, v3, v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    .line 102
    .local v2, "y":F
    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mLength:F

    .line 103
    return-void
.end method

.method public set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V
    .locals 5
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 52
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v2, v1

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v4, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 53
    return-void
.end method

.method public symmetryPoint(FFLandroid/graphics/PointF;)V
    .locals 5
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "symPoint"    # Landroid/graphics/PointF;

    .line 289
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 291
    .local v0, "temp":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p3, Landroid/graphics/PointF;->x:F

    .line 293
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v3, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v0

    iput v1, p3, Landroid/graphics/PointF;->y:F

    .line 295
    return-void
.end method

.method public symmetryPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "symPoint"    # Landroid/graphics/PointF;

    .line 280
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 282
    .local v0, "temp":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 284
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v3, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 286
    return-void
.end method
