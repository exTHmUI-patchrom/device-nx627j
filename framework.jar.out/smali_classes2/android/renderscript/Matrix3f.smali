.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 32
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 43
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 65
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .line 101
    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 82
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 83
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 93
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 11
    .param p1, "lhs"    # Landroid/renderscript/Matrix3f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix3f;

    .line 208
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 211
    .local v4, "ri1":F
    const/4 v5, 0x0

    .line 212
    .local v5, "ri2":F
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    .local v3, "j":I
    .local v4, "ri0":F
    .local v5, "ri1":F
    .local v6, "ri2":F
    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v3, v2, :cond_0

    .line 213
    invoke-virtual {p2, v1, v3}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    .line 214
    .local v9, "rhs_ij":F
    invoke-virtual {p1, v3, v0}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v4, v10

    .line 215
    invoke-virtual {p1, v3, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v8

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    .line 216
    invoke-virtual {p1, v3, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    .line 212
    .end local v9    # "rhs_ij":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 219
    invoke-virtual {p0, v1, v8, v5}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 220
    invoke-virtual {p0, v1, v7, v6}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 208
    .end local v4    # "ri0":F
    .end local v5    # "ri1":F
    .end local v6    # "ri2":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5
    .param p1, "rot"    # F

    .line 150
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 152
    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    .line 153
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 154
    .local v0, "c":F
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 155
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 156
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    neg-float v3, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 157
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 158
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 159
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 18
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    move-object/from16 v0, p0

    .line 115
    const v4, 0x3c8efa35

    mul-float v4, v4, p1

    .line 116
    .end local p1    # "rot":F
    .local v4, "rot":F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 117
    .local v5, "c":F
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 119
    .local v6, "s":F
    mul-float v7, p2, p2

    mul-float v8, p3, p3

    add-float/2addr v7, v8

    mul-float v8, p4, p4

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 120
    .local v7, "len":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v8

    if-nez v9, :cond_0

    .line 121
    div-float v9, v8, v7

    .line 122
    .local v9, "recipLen":F
    mul-float v1, p2, v9

    .line 123
    .end local p2    # "x":F
    .local v1, "x":F
    mul-float v2, p3, v9

    .line 124
    .end local p3    # "y":F
    .local v2, "y":F
    mul-float v3, p4, v9

    .end local v9    # "recipLen":F
    .end local p4    # "z":F
    .local v3, "z":F
    goto :goto_0

    .line 126
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "z":F
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    .restart local p4    # "z":F
    :cond_0
    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "z":F
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    .restart local v3    # "z":F
    :goto_0
    sub-float/2addr v8, v5

    .line 127
    .local v8, "nc":F
    mul-float v9, v1, v2

    .line 128
    .local v9, "xy":F
    mul-float v10, v2, v3

    .line 129
    .local v10, "yz":F
    mul-float v11, v3, v1

    .line 130
    .local v11, "zx":F
    mul-float v12, v1, v6

    .line 131
    .local v12, "xs":F
    mul-float v13, v2, v6

    .line 132
    .local v13, "ys":F
    mul-float v14, v3, v6

    .line 133
    .local v14, "zs":F
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x0

    mul-float v17, v1, v1

    mul-float v17, v17, v8

    add-float v17, v17, v5

    aput v17, v15, v16

    .line 134
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x3

    mul-float v17, v9, v8

    sub-float v17, v17, v14

    aput v17, v15, v16

    .line 135
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x6

    mul-float v17, v11, v8

    add-float v17, v17, v13

    aput v17, v15, v16

    .line 136
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x1

    mul-float v17, v9, v8

    add-float v17, v17, v14

    aput v17, v15, v16

    .line 137
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x4

    mul-float v17, v2, v2

    mul-float v17, v17, v8

    add-float v17, v17, v5

    aput v17, v15, v16

    .line 138
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x7

    mul-float v17, v10, v8

    sub-float v17, v17, v12

    aput v17, v15, v16

    .line 139
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x2

    mul-float v17, v11, v8

    sub-float v17, v17, v13

    aput v17, v15, v16

    .line 140
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x5

    mul-float v17, v10, v8

    add-float v17, v17, v12

    aput v17, v15, v16

    .line 141
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x8

    mul-float v17, v3, v3

    mul-float v17, v17, v8

    add-float v17, v17, v5

    aput v17, v15, v16

    .line 142
    return-void
.end method

.method public loadScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 168
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 169
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 170
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 171
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 181
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 182
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 183
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 184
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput p3, v0, v1

    .line 185
    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 195
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 196
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 197
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 198
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix3f;

    .line 230
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 231
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    .line 233
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "rot"    # F

    .line 257
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 258
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    .line 259
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 260
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 245
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 246
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 247
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 248
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 270
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 271
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    .line 272
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 273
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 284
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 285
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    .line 286
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 287
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .line 75
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 76
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 297
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 298
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 299
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 300
    return-void
.end method

.method public transpose()V
    .locals 7

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 307
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 308
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    aget v2, v2, v3

    .line 309
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 310
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 307
    .end local v2    # "temp":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
