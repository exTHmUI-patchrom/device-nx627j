.class public Lnubia/fancydrawable/Matrix4x4;
.super Ljava/lang/Object;
.source "Matrix4x4.java"


# instance fields
.field private final NUM:I

.field private mValue:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x10

    iput v0, p0, Lnubia/fancydrawable/Matrix4x4;->NUM:I

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    .line 11
    invoke-virtual {p0}, Lnubia/fancydrawable/Matrix4x4;->identity()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lnubia/fancydrawable/Matrix4x4;)V
    .locals 2
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x10

    iput v0, p0, Lnubia/fancydrawable/Matrix4x4;->NUM:I

    .line 8
    new-array v1, v0, [F

    iput-object v1, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    .line 16
    if-eqz p1, :cond_0

    .line 17
    new-array v0, v0, [F

    .line 19
    .local v0, "value":[F
    invoke-virtual {p1, v0}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 20
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 21
    .end local v0    # "value":[F
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/Matrix4x4;->identity()V

    .line 25
    :goto_0
    return-void
.end method

.method private operate([F[F[F)V
    .locals 18
    .param p1, "value"    # [F
    .param p2, "valueA"    # [F
    .param p3, "valueB"    # [F

    .line 462
    const/4 v0, 0x0

    aget v1, p2, v0

    aget v2, p3, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x4

    aget v5, p3, v4

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v5, p2, v3

    const/16 v6, 0x8

    aget v7, p3, v6

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    const/4 v5, 0x3

    aget v7, p2, v5

    const/16 v8, 0xc

    aget v9, p3, v8

    mul-float/2addr v7, v9

    add-float/2addr v1, v7

    aput v1, p1, v0

    .line 464
    aget v1, p2, v0

    aget v7, p3, v2

    mul-float/2addr v1, v7

    aget v7, p2, v2

    const/4 v9, 0x5

    aget v10, p3, v9

    mul-float/2addr v7, v10

    add-float/2addr v1, v7

    aget v7, p2, v3

    const/16 v10, 0x9

    aget v11, p3, v10

    mul-float/2addr v7, v11

    add-float/2addr v1, v7

    aget v7, p2, v5

    const/16 v11, 0xd

    aget v12, p3, v11

    mul-float/2addr v7, v12

    add-float/2addr v1, v7

    aput v1, p1, v2

    .line 466
    aget v1, p2, v0

    aget v7, p3, v3

    mul-float/2addr v1, v7

    aget v7, p2, v2

    const/4 v12, 0x6

    aget v13, p3, v12

    mul-float/2addr v7, v13

    add-float/2addr v1, v7

    aget v7, p2, v3

    const/16 v13, 0xa

    aget v14, p3, v13

    mul-float/2addr v7, v14

    add-float/2addr v1, v7

    aget v7, p2, v5

    const/16 v14, 0xe

    aget v15, p3, v14

    mul-float/2addr v7, v15

    add-float/2addr v1, v7

    aput v1, p1, v3

    .line 468
    aget v1, p2, v0

    aget v7, p3, v5

    mul-float/2addr v1, v7

    aget v7, p2, v2

    const/4 v15, 0x7

    aget v16, p3, v15

    mul-float v7, v7, v16

    add-float/2addr v1, v7

    aget v7, p2, v3

    const/16 v16, 0xb

    aget v17, p3, v16

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v5

    const/16 v17, 0xf

    aget v17, p3, v17

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v5

    .line 471
    aget v1, p2, v4

    aget v7, p3, v0

    mul-float/2addr v1, v7

    aget v7, p2, v9

    aget v17, p3, v4

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v12

    aget v17, p3, v6

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v15

    aget v17, p3, v8

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v4

    .line 473
    aget v1, p2, v4

    aget v7, p3, v2

    mul-float/2addr v1, v7

    aget v7, p2, v9

    aget v17, p3, v9

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v12

    aget v17, p3, v10

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v15

    aget v17, p3, v11

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v9

    .line 475
    aget v1, p2, v4

    aget v7, p3, v3

    mul-float/2addr v1, v7

    aget v7, p2, v9

    aget v17, p3, v12

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v12

    aget v17, p3, v13

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v15

    aget v17, p3, v14

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v12

    .line 477
    aget v1, p2, v4

    aget v7, p3, v5

    mul-float/2addr v1, v7

    aget v7, p2, v9

    aget v17, p3, v15

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v12

    aget v17, p3, v16

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v15

    const/16 v17, 0xf

    aget v17, p3, v17

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v15

    .line 480
    aget v1, p2, v6

    aget v7, p3, v0

    mul-float/2addr v1, v7

    aget v7, p2, v10

    aget v17, p3, v4

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v13

    aget v17, p3, v6

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v16

    aget v17, p3, v8

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v6

    .line 482
    aget v1, p2, v6

    aget v7, p3, v2

    mul-float/2addr v1, v7

    aget v7, p2, v10

    aget v17, p3, v9

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v13

    aget v17, p3, v10

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v16

    aget v17, p3, v11

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v10

    .line 484
    aget v1, p2, v6

    aget v7, p3, v3

    mul-float/2addr v1, v7

    aget v7, p2, v10

    aget v17, p3, v12

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v13

    aget v17, p3, v13

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v16

    aget v17, p3, v14

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v13

    .line 486
    aget v1, p2, v6

    aget v7, p3, v5

    mul-float/2addr v1, v7

    aget v7, p2, v10

    aget v17, p3, v15

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v13

    aget v17, p3, v16

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aget v7, p2, v16

    const/16 v17, 0xf

    aget v17, p3, v17

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    aput v1, p1, v16

    .line 489
    aget v1, p2, v8

    aget v0, p3, v0

    mul-float/2addr v1, v0

    aget v0, p2, v11

    aget v4, p3, v4

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    aget v0, p2, v14

    aget v4, p3, v6

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    const/16 v0, 0xf

    aget v0, p2, v0

    aget v4, p3, v8

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    aput v1, p1, v8

    .line 491
    aget v0, p2, v8

    aget v1, p3, v2

    mul-float/2addr v0, v1

    aget v1, p2, v11

    aget v2, p3, v9

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v14

    aget v2, p3, v10

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p2, v1

    aget v2, p3, v11

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v11

    .line 493
    aget v0, p2, v8

    aget v1, p3, v3

    mul-float/2addr v0, v1

    aget v1, p2, v11

    aget v2, p3, v12

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v14

    aget v2, p3, v13

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p2, v1

    aget v2, p3, v14

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v14

    .line 495
    aget v0, p2, v8

    aget v1, p3, v5

    mul-float/2addr v0, v1

    aget v1, p2, v11

    aget v2, p3, v15

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v14

    aget v2, p3, v16

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p2, v1

    const/16 v2, 0xf

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aput v0, p1, v1

    .line 497
    return-void
.end method

.method private rotateX(F)Lnubia/fancydrawable/Matrix4x4;
    .locals 9
    .param p1, "degree"    # F

    .line 304
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 305
    .local v0, "value":[F
    new-instance v1, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v1}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 307
    .local v1, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 308
    .local v2, "angle":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 309
    .local v3, "sina":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 311
    .local v4, "cosa":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v0, v6

    .line 312
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v6, v0, v7

    .line 313
    const/4 v7, 0x2

    aput v6, v0, v7

    .line 314
    const/4 v7, 0x3

    aput v6, v0, v7

    .line 316
    const/4 v7, 0x4

    aput v6, v0, v7

    .line 317
    const/4 v7, 0x5

    aput v4, v0, v7

    .line 318
    neg-float v7, v3

    const/4 v8, 0x6

    aput v7, v0, v8

    .line 319
    const/4 v7, 0x7

    aput v6, v0, v7

    .line 321
    const/16 v7, 0x8

    aput v6, v0, v7

    .line 322
    const/16 v7, 0x9

    aput v3, v0, v7

    .line 323
    const/16 v7, 0xa

    aput v4, v0, v7

    .line 324
    const/16 v7, 0xb

    aput v6, v0, v7

    .line 326
    const/16 v7, 0xc

    aput v6, v0, v7

    .line 327
    const/16 v7, 0xd

    aput v6, v0, v7

    .line 328
    const/16 v7, 0xe

    aput v6, v0, v7

    .line 329
    const/16 v6, 0xf

    aput v5, v0, v6

    .line 331
    invoke-virtual {v1, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 332
    return-object v1
.end method

.method private rotateY(F)Lnubia/fancydrawable/Matrix4x4;
    .locals 9
    .param p1, "degree"    # F

    .line 339
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 340
    .local v0, "value":[F
    new-instance v1, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v1}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 342
    .local v1, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 343
    .local v2, "angle":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 344
    .local v3, "sina":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 346
    .local v4, "cosa":F
    const/4 v5, 0x0

    aput v4, v0, v5

    .line 347
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 348
    const/4 v6, 0x2

    aput v3, v0, v6

    .line 349
    const/4 v6, 0x3

    aput v5, v0, v6

    .line 351
    const/4 v6, 0x4

    aput v5, v0, v6

    .line 352
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    aput v6, v0, v7

    .line 353
    const/4 v7, 0x6

    aput v5, v0, v7

    .line 354
    const/4 v7, 0x7

    aput v5, v0, v7

    .line 356
    neg-float v7, v3

    const/16 v8, 0x8

    aput v7, v0, v8

    .line 357
    const/16 v7, 0x9

    aput v5, v0, v7

    .line 358
    const/16 v7, 0xa

    aput v4, v0, v7

    .line 359
    const/16 v7, 0xb

    aput v5, v0, v7

    .line 361
    const/16 v7, 0xc

    aput v5, v0, v7

    .line 362
    const/16 v7, 0xd

    aput v5, v0, v7

    .line 363
    const/16 v7, 0xe

    aput v5, v0, v7

    .line 364
    const/16 v5, 0xf

    aput v6, v0, v5

    .line 366
    invoke-virtual {v1, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 367
    return-object v1
.end method

.method private rotateZ(F)Lnubia/fancydrawable/Matrix4x4;
    .locals 8
    .param p1, "degree"    # F

    .line 374
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 375
    .local v0, "value":[F
    new-instance v1, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v1}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 377
    .local v1, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 378
    .local v2, "angle":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 379
    .local v3, "sina":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 381
    .local v4, "cosa":F
    const/4 v5, 0x0

    aput v4, v0, v5

    .line 382
    neg-float v5, v3

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 383
    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v5, v0, v6

    .line 384
    const/4 v6, 0x3

    aput v5, v0, v6

    .line 386
    const/4 v6, 0x4

    aput v3, v0, v6

    .line 387
    const/4 v6, 0x5

    aput v4, v0, v6

    .line 388
    const/4 v6, 0x6

    aput v5, v0, v6

    .line 389
    const/4 v6, 0x7

    aput v5, v0, v6

    .line 391
    const/16 v6, 0x8

    aput v5, v0, v6

    .line 392
    const/16 v6, 0x9

    aput v5, v0, v6

    .line 393
    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0xa

    aput v6, v0, v7

    .line 394
    const/16 v7, 0xb

    aput v5, v0, v7

    .line 396
    const/16 v7, 0xc

    aput v5, v0, v7

    .line 397
    const/16 v7, 0xd

    aput v5, v0, v7

    .line 398
    const/16 v7, 0xe

    aput v5, v0, v7

    .line 399
    const/16 v5, 0xf

    aput v6, v0, v5

    .line 401
    invoke-virtual {v1, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 402
    return-object v1
.end method

.method private scale(FFF)Lnubia/fancydrawable/Matrix4x4;
    .locals 4
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .line 406
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 407
    .local v0, "value":[F
    new-instance v1, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v1}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 409
    .local v1, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 410
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 411
    const/4 v3, 0x2

    aput v2, v0, v3

    .line 412
    const/4 v3, 0x3

    aput v2, v0, v3

    .line 414
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 415
    const/4 v3, 0x5

    aput p2, v0, v3

    .line 416
    const/4 v3, 0x6

    aput v2, v0, v3

    .line 417
    const/4 v3, 0x7

    aput v2, v0, v3

    .line 419
    const/16 v3, 0x8

    aput v2, v0, v3

    .line 420
    const/16 v3, 0x9

    aput v2, v0, v3

    .line 421
    const/16 v3, 0xa

    aput p3, v0, v3

    .line 422
    const/16 v3, 0xb

    aput v2, v0, v3

    .line 424
    const/16 v3, 0xc

    aput v2, v0, v3

    .line 425
    const/16 v3, 0xd

    aput v2, v0, v3

    .line 426
    const/16 v3, 0xe

    aput v2, v0, v3

    .line 427
    const/16 v2, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    .line 429
    invoke-virtual {v1, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 430
    return-object v1
.end method

.method private translate(FFF)Lnubia/fancydrawable/Matrix4x4;
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .line 434
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 435
    .local v0, "value":[F
    new-instance v1, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v1}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 437
    .local v1, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 438
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 439
    const/4 v4, 0x2

    aput v3, v0, v4

    .line 440
    const/4 v4, 0x3

    aput p1, v0, v4

    .line 442
    const/4 v4, 0x4

    aput v3, v0, v4

    .line 443
    const/4 v4, 0x5

    aput v2, v0, v4

    .line 444
    const/4 v4, 0x6

    aput v3, v0, v4

    .line 445
    const/4 v4, 0x7

    aput p2, v0, v4

    .line 447
    const/16 v4, 0x8

    aput v3, v0, v4

    .line 448
    const/16 v4, 0x9

    aput v3, v0, v4

    .line 449
    const/16 v4, 0xa

    aput v2, v0, v4

    .line 450
    const/16 v4, 0xb

    aput p3, v0, v4

    .line 452
    const/16 v4, 0xc

    aput v3, v0, v4

    .line 453
    const/16 v4, 0xd

    aput v3, v0, v4

    .line 454
    const/16 v4, 0xe

    aput v3, v0, v4

    .line 455
    const/16 v3, 0xf

    aput v2, v0, v3

    .line 457
    invoke-virtual {v1, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 458
    return-object v1
.end method


# virtual methods
.method public camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;
    .locals 20
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    move/from16 v4, p9

    move/from16 v5, p10

    .line 259
    move/from16 v6, p11

    const/16 v7, 0x10

    new-array v7, v7, [F

    .line 260
    .local v7, "value":[F
    new-instance v8, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v8}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 262
    .local v8, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v9, v4

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 263
    .local v9, "sinT":F
    move-object v15, v7

    move-object/from16 v16, v8

    float-to-double v7, v4

    .end local v7    # "value":[F
    .end local v8    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    .local v15, "value":[F
    .local v16, "matrix":Lnubia/fancydrawable/Matrix4x4;
    mul-double/2addr v7, v11

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 264
    .local v7, "cosT":F
    float-to-double v3, v5

    mul-double/2addr v3, v11

    div-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 265
    .local v3, "sinP":F
    float-to-double v1, v5

    mul-double/2addr v1, v11

    div-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 266
    .local v1, "cosP":F
    float-to-double v4, v6

    mul-double/2addr v4, v11

    div-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 267
    .local v2, "sinR":F
    float-to-double v4, v6

    mul-double/2addr v4, v11

    div-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 269
    .local v4, "cosR":F
    mul-float v5, v4, v7

    mul-float/2addr v5, v3

    mul-float v8, v9, v2

    add-float/2addr v5, v8

    .line 270
    .local v5, "G":F
    mul-float v8, v2, v7

    mul-float/2addr v8, v3

    mul-float v10, v9, v4

    sub-float/2addr v8, v10

    .line 271
    .local v8, "H":F
    mul-float v10, v7, v1

    .line 273
    .local v10, "I":F
    mul-float v11, v1, v4

    mul-float v11, v11, p1

    div-float v13, p3, p5

    mul-float/2addr v13, v5

    add-float/2addr v11, v13

    const/4 v13, 0x0

    aput v11, v15, v13

    .line 274
    mul-float v11, v1, v2

    mul-float v11, v11, p1

    div-float v13, p3, p5

    mul-float/2addr v13, v8

    add-float/2addr v11, v13

    const/4 v13, 0x1

    aput v11, v15, v13

    .line 275
    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v11, v3

    mul-float v11, v11, p1

    div-float v13, p3, p5

    mul-float/2addr v13, v10

    add-float/2addr v11, v13

    const/4 v13, 0x2

    aput v11, v15, v13

    .line 276
    mul-float v13, p1, p8

    div-float v14, p3, p5

    mul-float v14, v14, p6

    add-float/2addr v13, v14

    const/4 v14, 0x3

    aput v13, v15, v14

    .line 279
    mul-float v13, v4, v9

    mul-float/2addr v13, v3

    mul-float v14, v7, v2

    sub-float/2addr v13, v14

    mul-float v13, v13, p2

    div-float v17, p4, p5

    mul-float v17, v17, v5

    add-float v13, v13, v17

    const/16 v17, 0x4

    aput v13, v15, v17

    .line 281
    mul-float v13, v2, v9

    mul-float/2addr v13, v3

    mul-float v17, v7, v4

    add-float v13, v13, v17

    mul-float v13, v13, p2

    div-float v17, p4, p5

    mul-float v17, v17, v8

    add-float v13, v13, v17

    const/16 v17, 0x5

    aput v13, v15, v17

    .line 283
    mul-float v13, v1, v9

    mul-float v13, v13, p2

    div-float v17, p4, p5

    mul-float v17, v17, v10

    add-float v13, v13, v17

    const/16 v17, 0x6

    aput v13, v15, v17

    .line 284
    mul-float v17, p2, p7

    div-float v18, p4, p5

    mul-float v18, v18, p6

    add-float v17, v17, v18

    const/16 v18, 0x7

    aput v17, v15, v18

    .line 286
    const/16 v17, 0x8

    aput v5, v15, v17

    .line 287
    const/16 v17, 0x9

    aput v8, v15, v17

    .line 288
    const/16 v17, 0xa

    aput v10, v15, v17

    .line 289
    const/16 v17, 0xb

    aput p6, v15, v17

    .line 291
    div-float v17, v5, p5

    const/16 v18, 0xc

    aput v17, v15, v18

    .line 292
    div-float v17, v8, p5

    const/16 v18, 0xd

    aput v17, v15, v18

    .line 293
    div-float v17, v10, p5

    const/16 v18, 0xe

    aput v17, v15, v18

    .line 294
    div-float v17, p6, p5

    const/16 v18, 0xf

    aput v17, v15, v18

    .line 296
    move/from16 v19, v1

    move-object v0, v15

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 297
    .end local v15    # "value":[F
    .end local v16    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    .local v0, "value":[F
    .local v1, "matrix":Lnubia/fancydrawable/Matrix4x4;
    .local v19, "cosP":F
    return-object v1
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 34
    .local v0, "value9":[F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v3

    .line 37
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v3

    .line 38
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 40
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v4, 0x4

    aget v2, v2, v4

    aput v2, v0, v3

    .line 41
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v4

    .line 42
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v4, 0x7

    aget v2, v2, v4

    aput v2, v0, v3

    .line 44
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 45
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    aput v2, v0, v4

    .line 46
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 48
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 49
    return-object v1
.end method

.method public getValues([F)V
    .locals 2
    .param p1, "value"    # [F

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v1, v1, v0

    aput v1, p1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public identity()V
    .locals 4

    .line 84
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 85
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 86
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 87
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 89
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 90
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 91
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 92
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 94
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 95
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 96
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xa

    aput v1, v0, v3

    .line 97
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    .line 99
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    .line 100
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    .line 101
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 102
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 103
    return-void
.end method

.method public invert(Lnubia/fancydrawable/Matrix4x4;)Z
    .locals 1
    .param p1, "inverse"    # Lnubia/fancydrawable/Matrix4x4;

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public postCamera(FFFFFFFFFFF)Z
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .line 110
    invoke-virtual/range {p0 .. p11}, Lnubia/fancydrawable/Matrix4x4;->camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 113
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 114
    const/4 v1, 0x1

    return v1
.end method

.method public postContact(Lnubia/fancydrawable/Matrix4x4;)Z
    .locals 4
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .line 118
    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 119
    .local v1, "value":[F
    new-array v2, v0, [F

    .line 120
    .local v2, "valueA":[F
    new-array v0, v0, [F

    .line 122
    .local v0, "valueB":[F
    invoke-virtual {p1, v2}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 123
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 124
    invoke-direct {p0, v1, v2, v0}, Lnubia/fancydrawable/Matrix4x4;->operate([F[F[F)V

    .line 125
    invoke-virtual {p0, v1}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 126
    const/4 v3, 0x1

    return v3
.end method

.method public postRotateX(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 130
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateX(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 131
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 132
    const/4 v1, 0x1

    return v1
.end method

.method public postRotateY(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 136
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateY(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 137
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public postRotateZ(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 142
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateZ(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 143
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public postScale(FFF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->scale(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 149
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 150
    const/4 v1, 0x1

    return v1
.end method

.method public postTranslate(FFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->translate(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 155
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 156
    const/4 v1, 0x1

    return v1
.end method

.method public preCamera(FFFFFFFFFFF)Z
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .line 163
    invoke-virtual/range {p0 .. p11}, Lnubia/fancydrawable/Matrix4x4;->camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 166
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 167
    const/4 v1, 0x1

    return v1
.end method

.method public preContact(Lnubia/fancydrawable/Matrix4x4;)Z
    .locals 4
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .line 171
    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 172
    .local v1, "value":[F
    new-array v2, v0, [F

    .line 173
    .local v2, "valueA":[F
    new-array v0, v0, [F

    .line 175
    .local v0, "valueB":[F
    invoke-virtual {p1, v2}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 176
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 177
    invoke-direct {p0, v1, v0, v2}, Lnubia/fancydrawable/Matrix4x4;->operate([F[F[F)V

    .line 178
    invoke-virtual {p0, v1}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 179
    const/4 v3, 0x1

    return v3
.end method

.method public preRotateX(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 183
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateX(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 184
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 185
    const/4 v1, 0x1

    return v1
.end method

.method public preRotateY(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 189
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateY(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 190
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 191
    const/4 v1, 0x1

    return v1
.end method

.method public preRotateZ(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 195
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateZ(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 196
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 197
    const/4 v1, 0x1

    return v1
.end method

.method public preScale(FFF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->scale(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 202
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 203
    const/4 v1, 0x1

    return v1
.end method

.method public preTranslate(FFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->translate(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 208
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 209
    const/4 v1, 0x1

    return v1
.end method

.method public set(Lnubia/fancydrawable/Matrix4x4;)V
    .locals 1
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 76
    .local v0, "value":[F
    invoke-virtual {p1, v0}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 77
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 80
    .end local v0    # "value":[F
    :cond_0
    return-void
.end method

.method public setCamera(FFFFFFFFFFF)Z
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .line 216
    invoke-virtual/range {p0 .. p11}, Lnubia/fancydrawable/Matrix4x4;->camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 219
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 220
    const/4 v1, 0x1

    return v1
.end method

.method public setRotateX(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 224
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateX(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 225
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method public setRotateY(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 230
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateY(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 231
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 232
    const/4 v1, 0x1

    return v1
.end method

.method public setRotateZ(F)Z
    .locals 2
    .param p1, "degree"    # F

    .line 236
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateZ(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 237
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 238
    const/4 v1, 0x1

    return v1
.end method

.method public setScale(FFF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->scale(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 243
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 244
    const/4 v1, 0x1

    return v1
.end method

.method public setTranslate(FFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->translate(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 249
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 250
    const/4 v1, 0x1

    return v1
.end method

.method public setValues([F)V
    .locals 3
    .param p1, "value"    # [F

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
