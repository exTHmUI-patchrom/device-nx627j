.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 33
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 34
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 45
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method

.method private computeCofactor(II)F
    .locals 13
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 404
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    rem-int/2addr v0, v1

    .line 405
    .local v0, "c0":I
    add-int/lit8 v2, p1, 0x2

    rem-int/2addr v2, v1

    .line 406
    .local v2, "c1":I
    add-int/lit8 v3, p1, 0x3

    rem-int/2addr v3, v1

    .line 407
    .local v3, "c2":I
    add-int/lit8 v4, p2, 0x1

    rem-int/2addr v4, v1

    .line 408
    .local v4, "r0":I
    add-int/lit8 v5, p2, 0x2

    rem-int/2addr v5, v1

    .line 409
    .local v5, "r1":I
    add-int/lit8 v6, p2, 0x3

    rem-int/2addr v6, v1

    .line 411
    .local v6, "r2":I
    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v8, v1, v4

    add-int/2addr v8, v0

    aget v7, v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v9, v1, v5

    add-int/2addr v9, v2

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v10, v1, v6

    add-int/2addr v10, v3

    aget v9, v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v10, v1, v6

    add-int/2addr v10, v2

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v11, v1, v5

    add-int/2addr v11, v3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v9, v1, v5

    add-int/2addr v9, v0

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v10, v1, v4

    add-int/2addr v10, v2

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v11, v1, v6

    add-int/2addr v11, v3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v11, v1, v6

    add-int/2addr v11, v2

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v12, v1, v4

    add-int/2addr v12, v3

    aget v11, v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v9, v1, v6

    add-int/2addr v9, v0

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v10, v1, v4

    add-int/2addr v10, v2

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v11, v1, v5

    add-int/2addr v11, v3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v11, v1, v5

    add-int/2addr v11, v2

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    aget v1, v11, v1

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 418
    .local v7, "minor":F
    add-int v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    neg-float v1, v7

    goto :goto_0

    :cond_0
    move v1, v7

    .line 419
    .local v1, "cofactor":F
    :goto_0
    return v1
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 67
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 8

    .line 427
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 429
    .local v0, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 430
    move v4, v1

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 431
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v6, v3, v2

    add-int/2addr v6, v4

    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    .line 430
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 429
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v4, v3

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x3

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 439
    .local v2, "det":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v6

    if-gez v3, :cond_2

    .line 440
    return v1

    .line 443
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    .line 444
    .end local v2    # "det":F
    .local v3, "det":F
    nop

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 445
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 448
    .end local v1    # "i":I
    :cond_3
    return v5
.end method

.method public inverseTranspose()Z
    .locals 8

    .line 456
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 458
    .local v0, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 459
    move v4, v1

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 460
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int v6, v3, v4

    add-int/2addr v6, v2

    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    .line 459
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 458
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v3

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v5, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 467
    .local v2, "det":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 468
    return v1

    .line 471
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    .line 472
    .end local v2    # "det":F
    .local v3, "det":F
    nop

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 473
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 476
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 5
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .line 121
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 122
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 123
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 124
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 127
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 128
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 129
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 131
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v3, v4, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 132
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/16 v3, 0x9

    aput v1, v0, v3

    .line 133
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v4

    const/16 v3, 0xa

    aput v1, v0, v3

    .line 134
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 136
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 137
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 139
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 140
    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix4f;

    .line 111
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .line 291
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 292
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v1, p5

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 293
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr v1, p5

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 294
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p2, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 295
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p4, p3

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 296
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 297
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    .line 298
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 299
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 300
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xa

    aput v1, v0, v3

    .line 97
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    .line 99
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 102
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 103
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .param p1, "lhs"    # Landroid/renderscript/Matrix4f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix4f;

    .line 226
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 229
    .local v4, "ri1":F
    const/4 v5, 0x0

    .line 230
    .local v5, "ri2":F
    const/4 v6, 0x0

    .line 231
    .local v6, "ri3":F
    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    .local v3, "j":I
    .local v4, "ri0":F
    .local v5, "ri1":F
    .local v6, "ri2":F
    .local v7, "ri3":F
    :goto_1
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v3, v2, :cond_0

    .line 232
    invoke-virtual {p2, v1, v3}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v11

    .line 233
    .local v11, "rhs_ij":F
    invoke-virtual {p1, v3, v0}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v4, v12

    .line 234
    invoke-virtual {p1, v3, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v5, v10

    .line 235
    invoke-virtual {p1, v3, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    .line 236
    invoke-virtual {p1, v3, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v8

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    .line 231
    .end local v11    # "rhs_ij":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 239
    invoke-virtual {p0, v1, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 240
    invoke-virtual {p0, v1, v9, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 241
    invoke-virtual {p0, v1, v8, v7}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 226
    .end local v4    # "ri0":F
    .end local v5    # "ri1":F
    .end local v6    # "ri2":F
    .end local v7    # "ri3":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .line 256
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 257
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 258
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p4, p3

    div-float/2addr v2, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p6, p5

    const/high16 v2, -0x40000000    # -2.0f

    div-float/2addr v2, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 260
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 261
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 262
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 263
    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 276
    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 277
    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 11
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "near"    # F
    .param p4, "far"    # F

    .line 311
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    .line 312
    .local v0, "top":F
    neg-float v8, v0

    .line 313
    .local v8, "bottom":F
    mul-float v9, v8, p2

    .line 314
    .local v9, "left":F
    mul-float v10, v0, p2

    .line 315
    .local v10, "right":F
    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v8

    move v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 316
    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 328
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 329
    .local v0, "m1":Landroid/renderscript/Matrix4f;
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    move-object v8, v1

    .line 331
    .local v8, "m2":Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 332
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v9, v1, v2

    .line 333
    .local v9, "aspect":F
    neg-float v2, v9

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    move-object v1, v0

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 334
    .end local v9    # "aspect":F
    goto :goto_0

    .line 335
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v9, v1, v2

    .line 336
    .restart local v9    # "aspect":F
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    neg-float v4, v9

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    move-object v1, v0

    move v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 339
    .end local v9    # "aspect":F
    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3, v2, v3}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 340
    invoke-virtual {v0, v0, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 342
    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v8, v1, v4, v2}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 343
    invoke-virtual {v0, v0, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 345
    invoke-virtual {v8, v3, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 346
    invoke-virtual {v0, v0, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 348
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 349
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 18
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    move-object/from16 v0, p0

    .line 153
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v5, 0x0

    const/4 v6, 0x3

    aput v5, v4, v6

    .line 154
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x7

    aput v5, v4, v6

    .line 155
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v6, 0xb

    aput v5, v4, v6

    .line 156
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v6, 0xc

    aput v5, v4, v6

    .line 157
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v6, 0xd

    aput v5, v4, v6

    .line 158
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v6, 0xe

    aput v5, v4, v6

    .line 159
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xf

    aput v5, v4, v6

    .line 160
    const v4, 0x3c8efa35

    mul-float v4, v4, p1

    .line 161
    .end local p1    # "rot":F
    .local v4, "rot":F
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 162
    .local v6, "c":F
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 164
    .local v7, "s":F
    mul-float v8, p2, p2

    mul-float v9, p3, p3

    add-float/2addr v8, v9

    mul-float v9, p4, p4

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 165
    .local v8, "len":F
    cmpl-float v9, v8, v5

    if-nez v9, :cond_0

    .line 166
    div-float v9, v5, v8

    .line 167
    .local v9, "recipLen":F
    mul-float v1, p2, v9

    .line 168
    .end local p2    # "x":F
    .local v1, "x":F
    mul-float v2, p3, v9

    .line 169
    .end local p3    # "y":F
    .local v2, "y":F
    mul-float v3, p4, v9

    .end local v9    # "recipLen":F
    .end local p4    # "z":F
    .local v3, "z":F
    goto :goto_0

    .line 171
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
    sub-float/2addr v5, v6

    .line 172
    .local v5, "nc":F
    mul-float v9, v1, v2

    .line 173
    .local v9, "xy":F
    mul-float v10, v2, v3

    .line 174
    .local v10, "yz":F
    mul-float v11, v3, v1

    .line 175
    .local v11, "zx":F
    mul-float v12, v1, v7

    .line 176
    .local v12, "xs":F
    mul-float v13, v2, v7

    .line 177
    .local v13, "ys":F
    mul-float v14, v3, v7

    .line 178
    .local v14, "zs":F
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x0

    mul-float v17, v1, v1

    mul-float v17, v17, v5

    add-float v17, v17, v6

    aput v17, v15, v16

    .line 179
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x4

    mul-float v17, v9, v5

    sub-float v17, v17, v14

    aput v17, v15, v16

    .line 180
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x8

    mul-float v17, v11, v5

    add-float v17, v17, v13

    aput v17, v15, v16

    .line 181
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x1

    mul-float v17, v9, v5

    add-float v17, v17, v14

    aput v17, v15, v16

    .line 182
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x5

    mul-float v17, v2, v2

    mul-float v17, v17, v5

    add-float v17, v17, v6

    aput v17, v15, v16

    .line 183
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x9

    mul-float v17, v10, v5

    sub-float v17, v17, v12

    aput v17, v15, v16

    .line 184
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x2

    mul-float v17, v11, v5

    sub-float v17, v17, v13

    aput v17, v15, v16

    .line 185
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x6

    mul-float v17, v10, v5

    add-float v17, v17, v12

    aput v17, v15, v16

    .line 186
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0xa

    mul-float v17, v3, v3

    mul-float v17, v17, v5

    add-float v17, v17, v6

    aput v17, v15, v16

    .line 187
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 197
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 198
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 199
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 200
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 201
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 212
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 213
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 214
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 215
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 216
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix4f;

    .line 357
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 358
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 359
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 360
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 371
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 372
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 373
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 374
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 385
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 386
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 387
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 388
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .line 77
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 78
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 399
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 400
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 401
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 402
    return-void
.end method

.method public transpose()V
    .locals 7

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 484
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 485
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    aget v2, v2, v3

    .line 486
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 487
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 484
    .end local v2    # "temp":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 483
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
