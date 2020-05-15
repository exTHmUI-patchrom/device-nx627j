.class public Landroid/filterfw/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 35
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 36
    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .locals 3

    .line 44
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public distanceTo(Landroid/filterfw/geometry/Point;)F
    .locals 1
    .param p1, "p"    # Landroid/filterfw/geometry/Point;

    .line 77
    invoke-virtual {p1, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public length()F
    .locals 4

    .line 73
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v0, v0

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public minus(FF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 57
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    sub-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 2
    .param p1, "point"    # Landroid/filterfw/geometry/Point;

    .line 61
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->minus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public mult(FF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 69
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public normalize()Landroid/filterfw/geometry/Point;
    .locals 1

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public plus(FF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 49
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    add-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 2
    .param p1, "point"    # Landroid/filterfw/geometry/Point;

    .line 53
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public rotated(F)Landroid/filterfw/geometry/Point;
    .locals 8
    .param p1, "radians"    # F

    .line 101
    new-instance v0, Landroid/filterfw/geometry/Point;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget v3, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v2, p1

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 101
    return-object v0
.end method

.method public rotated90(I)Landroid/filterfw/geometry/Point;
    .locals 4
    .param p1, "count"    # I

    .line 89
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 90
    .local v0, "nx":F
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 91
    .local v1, "ny":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 92
    move v3, v0

    .line 93
    .local v3, "ox":F
    move v0, v1

    .line 94
    neg-float v1, v3

    .line 91
    .end local v3    # "ox":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v2
.end method

.method public rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;
    .locals 1
    .param p1, "center"    # Landroid/filterfw/geometry/Point;
    .param p2, "radians"    # F

    .line 106
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public scaledTo(F)Landroid/filterfw/geometry/Point;
    .locals 1
    .param p1, "length"    # F

    .line 81
    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public set(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 39
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 40
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 41
    return-void
.end method

.method public times(F)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "s"    # F

    .line 65
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
