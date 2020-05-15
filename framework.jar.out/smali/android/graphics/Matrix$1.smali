.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 55
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 50
    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 1
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public setRotate(F)V
    .locals 0
    .param p1, "degrees"    # F

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 80
    return-void
.end method

.method public setRotate(FFF)V
    .locals 0
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 75
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 70
    return-void
.end method

.method public setScale(FFFF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 65
    return-void
.end method

.method public setSinCos(FF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 90
    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 85
    return-void
.end method

.method public setSkew(FF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 100
    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 95
    return-void
.end method

.method public setTranslate(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 60
    return-void
.end method

.method public setValues([F)V
    .locals 0
    .param p1, "values"    # [F

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 220
    return-void
.end method
