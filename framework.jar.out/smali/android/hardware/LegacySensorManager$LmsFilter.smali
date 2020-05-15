.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 376
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 380
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 381
    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 24
    .param p1, "time"    # J
    .param p3, "in"    # F

    move-object/from16 v0, p0

    .line 384
    move/from16 v3, p3

    .line 385
    .local v3, "v":F
    const v4, 0x3089705f    # 1.0E-9f

    .line 386
    .local v4, "ns":F
    iget-object v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v5, v5, v6

    .line 387
    .local v5, "v1":F
    sub-float v6, v3, v5

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v6, v6, v7

    const/high16 v8, 0x43b40000    # 360.0f

    if-lez v6, :cond_0

    .line 388
    sub-float/2addr v3, v8

    goto :goto_0

    .line 389
    :cond_0
    sub-float v6, v5, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 390
    add-float/2addr v3, v8

    .line 396
    :cond_1
    :goto_0
    iget v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 397
    iget v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v7, 0x18

    const/16 v9, 0xc

    if-lt v6, v7, :cond_2

    .line 398
    iput v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 400
    :cond_2
    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v3, v6, v7

    .line 401
    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput-wide p1, v6, v7

    .line 402
    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v7, v9

    aput v3, v6, v7

    .line 403
    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v7, v9

    aput-wide p1, v6, v7

    .line 409
    const/4 v6, 0x0

    move v7, v6

    .local v7, "E":F
    move v9, v6

    .local v9, "D":F
    move v10, v6

    .local v10, "C":F
    move v11, v6

    .local v11, "B":F
    move v12, v6

    .line 410
    .local v12, "A":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v14, 0xb

    if-ge v13, v14, :cond_3

    .line 411
    iget v14, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v13

    .line 412
    .local v14, "j":I
    iget-object v15, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v15, v15, v14

    .line 413
    .local v15, "Z":F
    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v16, v8, v14

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v20, v14, 0x1

    aget-wide v20, v8, v20

    div-long v20, v20, v18

    add-long v16, v16, v20

    move/from16 v22, v7

    sub-long v6, v16, p1

    .end local v7    # "E":F
    .local v22, "E":F
    long-to-float v6, v6

    const v7, 0x3089705f    # 1.0E-9f

    mul-float/2addr v6, v7

    .line 414
    .local v6, "T":F
    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v16, v8, v14

    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v18, v14, 0x1

    aget-wide v18, v8, v18

    sub-long v0, v16, v18

    long-to-float v0, v0

    mul-float/2addr v0, v7

    .line 415
    .local v0, "dT":F
    mul-float/2addr v0, v0

    .line 416
    mul-float v1, v15, v0

    add-float/2addr v12, v1

    .line 417
    mul-float v1, v6, v0

    mul-float/2addr v1, v6

    add-float/2addr v11, v1

    .line 418
    mul-float v1, v6, v0

    add-float/2addr v10, v1

    .line 419
    mul-float v1, v6, v0

    mul-float/2addr v1, v15

    add-float/2addr v9, v1

    .line 420
    add-float v7, v22, v0

    .line 410
    .end local v0    # "dT":F
    .end local v6    # "T":F
    .end local v14    # "j":I
    .end local v15    # "Z":F
    .end local v22    # "E":F
    .restart local v7    # "E":F
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    goto :goto_1

    .line 422
    :cond_3
    move/from16 v22, v7

    .end local v7    # "E":F
    .restart local v22    # "E":F
    mul-float v0, v12, v11

    mul-float v1, v10, v9

    add-float/2addr v0, v1

    mul-float v7, v22, v11

    mul-float v1, v10, v10

    add-float/2addr v7, v1

    div-float/2addr v0, v7

    .line 423
    .local v0, "b":F
    mul-float v7, v22, v0

    sub-float/2addr v7, v12

    div-float/2addr v7, v10

    .line 424
    .local v7, "a":F
    const v1, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v7

    add-float/2addr v1, v0

    .line 427
    .local v1, "f":F
    const v2, 0x3b360b61

    mul-float/2addr v1, v2

    .line 428
    const/4 v2, 0x0

    cmpl-float v6, v1, v2

    if-ltz v6, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    neg-float v2, v1

    :goto_2
    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v2, :cond_5

    .line 429
    add-float/2addr v6, v1

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v2, v14

    sub-float v2, v1, v2

    add-float v1, v2, v8

    .line 431
    :cond_5
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 432
    add-float/2addr v1, v8

    .line 434
    :cond_6
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    .line 435
    return v1
.end method
