.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 69
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 83
    iget-object v1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v2, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "src"    # [F

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 76
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p1, Landroid/graphics/ColorMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    return v1

    .line 280
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorMatrix;

    iget-object v0, v0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 281
    .local v0, "other":[F
    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 282
    aget v3, v0, v2

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aget v4, v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 283
    return v1

    .line 281
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public final getArray()[F
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "postmatrix"    # Landroid/graphics/ColorMatrix;

    .line 224
    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 225
    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "prematrix"    # Landroid/graphics/ColorMatrix;

    .line 214
    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 215
    return-void
.end method

.method public reset()V
    .locals 3

    .line 101
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 102
    .local v0, "a":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 103
    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 104
    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    .line 110
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1, "src"    # [F

    .line 117
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 12
    .param p1, "matA"    # Landroid/graphics/ColorMatrix;
    .param p2, "matB"    # Landroid/graphics/ColorMatrix;

    .line 183
    const/16 v0, 0x14

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    new-array v1, v0, [F

    .line 186
    .local v1, "tmp":[F
    :goto_1
    nop

    .line 189
    iget-object v2, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 190
    .local v2, "a":[F
    iget-object v3, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 191
    .local v3, "b":[F
    const/4 v4, 0x0

    .line 192
    .local v4, "index":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "j":I
    .local v6, "index":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 193
    move v7, v6

    move v6, v5

    .local v6, "i":I
    .local v7, "index":I
    :goto_3
    const/4 v8, 0x4

    if-ge v6, v8, :cond_2

    .line 194
    add-int/lit8 v8, v7, 0x1

    .local v8, "index":I
    add-int/lit8 v9, v4, 0x0

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0x0

    aget v10, v3, v10

    mul-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    aget v10, v2, v10

    add-int/lit8 v11, v6, 0x5

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x2

    aget v10, v2, v10

    add-int/lit8 v11, v6, 0xa

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x3

    aget v10, v2, v10

    add-int/lit8 v11, v6, 0xf

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v1, v7

    .line 193
    .end local v7    # "index":I
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_3

    .line 197
    .end local v6    # "i":I
    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .local v6, "index":I
    add-int/lit8 v9, v4, 0x0

    aget v9, v2, v9

    aget v8, v3, v8

    mul-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x1

    aget v8, v2, v8

    const/16 v10, 0x9

    aget v10, v3, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x2

    aget v8, v2, v8

    const/16 v10, 0xe

    aget v10, v3, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x3

    aget v8, v2, v8

    const/16 v10, 0x13

    aget v10, v3, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x4

    aget v8, v2, v8

    add-float/2addr v9, v8

    aput v9, v1, v7

    .line 192
    .end local v7    # "index":I
    add-int/lit8 v4, v4, 0x5

    goto :goto_2

    .line 202
    .end local v4    # "j":I
    :cond_3
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v1, v4, :cond_4

    .line 203
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v1, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 3

    .line 252
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 253
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 255
    .local v0, "m":[F
    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f1645a2    # 0.587f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3de978d5    # 0.114f

    aput v2, v0, v1

    .line 256
    const/4 v1, 0x5

    const v2, -0x41d335d2    # -0.16874f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x41566517    # -0.33126f

    aput v2, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 257
    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    const v2, -0x4129a177    # -0.41869f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x42597a25    # -0.08131f

    aput v2, v0, v1

    .line 258
    return-void
.end method

.method public setRotate(IF)V
    .locals 8
    .param p1, "axis"    # I
    .param p2, "degrees"    # F

    .line 145
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 146
    float-to-double v0, p2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 147
    .local v0, "radians":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 148
    .local v2, "cosine":F
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 149
    .local v3, "sine":F
    const/16 v4, 0xc

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .line 169
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 164
    :pswitch_0
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v7, v5

    aput v2, v4, v6

    .line 165
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 166
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x5

    neg-float v6, v3

    aput v6, v4, v5

    .line 167
    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v7, v4

    aput v2, v5, v6

    .line 159
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x2

    neg-float v6, v3

    aput v6, v4, v5

    .line 160
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v5, 0xa

    aput v3, v4, v5

    .line 161
    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v7, v4

    aput v2, v6, v5

    .line 153
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x7

    aput v3, v4, v5

    .line 154
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v5, 0xb

    neg-float v6, v3

    aput v6, v4, v5

    .line 155
    nop

    .line 171
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 7
    .param p1, "sat"    # F

    .line 235
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 236
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 238
    .local v0, "m":[F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 239
    .local v1, "invSat":F
    const v2, 0x3e5a1cac    # 0.213f

    mul-float/2addr v2, v1

    .line 240
    .local v2, "R":F
    const v3, 0x3f370a3d    # 0.715f

    mul-float/2addr v3, v1

    .line 241
    .local v3, "G":F
    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v4, v1

    .line 243
    .local v4, "B":F
    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 244
    const/4 v5, 0x5

    aput v2, v0, v5

    add-float v5, v3, p1

    const/4 v6, 0x6

    aput v5, v0, v6

    const/4 v5, 0x7

    aput v4, v0, v5

    .line 245
    const/16 v5, 0xa

    aput v2, v0, v5

    const/16 v5, 0xb

    aput v3, v0, v5

    add-float v5, v4, p1

    const/16 v6, 0xc

    aput v5, v0, v6

    .line 246
    return-void
.end method

.method public setScale(FFFF)V
    .locals 3
    .param p1, "rScale"    # F
    .param p2, "gScale"    # F
    .param p3, "bScale"    # F
    .param p4, "aScale"    # F

    .line 125
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 127
    .local v0, "a":[F
    const/16 v1, 0x13

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 128
    const/4 v2, 0x0

    aput v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 131
    const/4 v1, 0x6

    aput p2, v0, v1

    .line 132
    const/16 v1, 0xc

    aput p3, v0, v1

    .line 133
    const/16 v1, 0x12

    aput p4, v0, v1

    .line 134
    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    .line 264
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 265
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 267
    .local v0, "m":[F
    const/4 v1, 0x2

    const v2, 0x3fb374bc    # 1.402f

    aput v2, v0, v1

    .line 268
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    const v3, -0x414fcce2    # -0.34414f

    aput v3, v0, v2

    const/4 v2, 0x7

    const v3, -0x40c92e1f    # -0.71414f

    aput v3, v0, v2

    .line 269
    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    const v2, 0x3fe2d0e5    # 1.772f

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 270
    return-void
.end method
