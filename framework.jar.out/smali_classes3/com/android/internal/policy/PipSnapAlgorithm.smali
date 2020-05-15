.class public Lcom/android/internal/policy/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# static fields
.field private static final CORNER_MAGNET_THRESHOLD:F = 0.3f

.field private static final SNAP_MODE_CORNERS_AND_SIDES:I = 0x1

.field private static final SNAP_MODE_CORNERS_ONLY:I = 0x0

.field private static final SNAP_MODE_EDGE:I = 0x2

.field private static final SNAP_MODE_EDGE_MAGNET_CORNERS:I = 0x3

.field private static final SNAP_MODE_LONG_EDGE_MAGNET_CORNERS:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSizePercent:F

.field private final mDefaultSnapMode:I

.field private final mFlingDeceleration:I

.field private mIsMinimized:Z

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F

.field private final mMinimizedVisibleSize:I

.field private mOrientation:I

.field private final mSnapGravities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSnapMode:I

    .line 59
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    .line 74
    const v1, 0x1050166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    .line 76
    const v1, 0x1050049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    .line 78
    const v1, 0x1050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    .line 80
    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iput v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    .line 84
    return-void
.end method

.method private calculateSnapTargets()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 443
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    nop

    .line 463
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private distanceToPoint(Landroid/graphics/Point;II)F
    .locals 2
    .param p1, "p"    # Landroid/graphics/Point;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 433
    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "points"    # [Landroid/graphics/Point;

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "closestPoint":Landroid/graphics/Point;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 378
    .local v1, "minDistance":F
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    .line 379
    .local v4, "p":Landroid/graphics/Point;
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v5

    .line 380
    .local v5, "distance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    .line 381
    move-object v0, v4

    .line 382
    move v1, v5

    .line 378
    .end local v4    # "p":Landroid/graphics/Point;
    .end local v5    # "distance":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_1
    return-object v0
.end method

.method private findX(FFF)I
    .locals 1
    .param p1, "slope"    # F
    .param p2, "yIntercept"    # F
    .param p3, "y"    # F

    .line 199
    sub-float v0, p3, p2

    div-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private findY(FFF)I
    .locals 1
    .param p1, "slope"    # F
    .param p2, "yIntercept"    # F
    .param p3, "x"    # F

    .line 195
    mul-float v0, p1, p3

    add-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "boundsOut"    # Landroid/graphics/Rect;

    .line 394
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    .local v0, "boundedLeft":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 398
    .local v1, "boundedTop":I
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 401
    return-void

    .line 405
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 406
    .local v2, "fromLeft":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 407
    .local v3, "fromTop":I
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 408
    .local v4, "fromRight":I
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 410
    .local v5, "fromBottom":I
    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 412
    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 413
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "shortest":I
    :goto_0
    goto :goto_1

    .line 416
    .end local v6    # "shortest":I
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 418
    .restart local v6    # "shortest":I
    :goto_1
    if-ne v6, v2, :cond_3

    .line 419
    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 420
    :cond_3
    if-ne v6, v3, :cond_4

    .line 421
    iget v7, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 422
    :cond_4
    if-ne v6, v4, :cond_5

    .line 423
    iget v7, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 425
    :cond_5
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 427
    :goto_2
    return-void
.end method


# virtual methods
.method public applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "displaySize"    # Landroid/graphics/Point;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 252
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 253
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 256
    :cond_0
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 259
    :goto_0
    return-void
.end method

.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 4
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "snapFraction"    # F

    .line 305
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    .line 306
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 307
    .local v0, "offset":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 308
    .end local v0    # "offset":I
    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, p3, v1

    if-gez v2, :cond_1

    .line 309
    sub-float/2addr p3, v0

    .line 310
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 311
    .restart local v0    # "offset":I
    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 312
    .end local v0    # "offset":I
    goto :goto_0

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v3, p3, v2

    if-gez v3, :cond_2

    .line 313
    sub-float/2addr p3, v1

    .line 314
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 315
    .local v1, "offset":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 316
    .end local v1    # "offset":I
    goto :goto_0

    .line 317
    :cond_2
    sub-float/2addr p3, v2

    .line 318
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 319
    .restart local v1    # "offset":I
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 321
    .end local v1    # "offset":I
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSnapMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mMinimizedVisibleSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 18
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "stackBounds"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 207
    move-object/from16 v2, p2

    new-instance v6, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v5, v7

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    .local v6, "pipBounds":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v10, v3

    .line 211
    .local v10, "newBounds":Landroid/graphics/Rect;
    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 231
    invoke-direct {v0, v2, v1, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 234
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v3

    .line 235
    .local v11, "tmpBounds":Landroid/graphics/Rect;
    iget-object v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [Landroid/graphics/Point;

    .line 236
    .local v12, "snapTargets":[Landroid/graphics/Point;
    nop

    .local v4, "i":I
    :goto_0
    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    iget-object v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 237
    iget-object v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 239
    new-instance v3, Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v12, v13

    .line 236
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 241
    .end local v4    # "i":I
    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v3, v4, v12}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 242
    .local v3, "snapTarget":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .end local v3    # "snapTarget":Landroid/graphics/Point;
    .end local v11    # "tmpBounds":Landroid/graphics/Rect;
    .end local v12    # "snapTargets":[Landroid/graphics/Point;
    goto :goto_4

    .line 213
    :cond_3
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v3, "tmpBounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/Point;

    .line 215
    .local v5, "snapTargets":[Landroid/graphics/Point;
    nop

    .restart local v4    # "i":I
    :goto_2
    iget-object v7, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 216
    iget-object v7, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v14, v6

    move-object/from16 v17, v3

    invoke-static/range {v11 .. v17}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 218
    new-instance v7, Landroid/graphics/Point;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v4

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 220
    .end local v4    # "i":I
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v4, v7, v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 221
    .local v4, "snapTarget":Landroid/graphics/Point;
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v4, v7, v8}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v7

    .line 222
    .local v7, "distance":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    .line 224
    .local v8, "thresh":F
    cmpg-float v9, v7, v8

    if-gez v9, :cond_5

    .line 225
    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v11, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v9, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    .line 227
    :cond_5
    invoke-direct {v0, v2, v1, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 229
    .end local v3    # "tmpBounds":Landroid/graphics/Rect;
    .end local v4    # "snapTarget":Landroid/graphics/Point;
    .end local v5    # "snapTargets":[Landroid/graphics/Point;
    .end local v7    # "distance":F
    .end local v8    # "thresh":F
    :goto_3
    nop

    .line 244
    :goto_4
    return-object v10
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "dragStartPosition"    # Landroid/graphics/Point;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 111
    .local v0, "intersectStackBounds":Landroid/graphics/Rect;
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 113
    .local v1, "intersect":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 24
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "velX"    # F
    .param p4, "velY"    # F
    .param p5, "dragStartPosition"    # Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 124
    move-object/from16 v5, p5

    iget v6, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 125
    .local v6, "isLandscape":Z
    :goto_0
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 126
    .local v8, "x":I
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 129
    .local v9, "y":I
    div-float v10, v4, v3

    .line 130
    .local v10, "slope":F
    int-to-float v11, v9

    int-to-float v12, v8

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    .line 133
    .local v11, "yIntercept":F
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 135
    .local v12, "vertPoint":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v13, "horizPoint":Landroid/graphics/Point;
    const/4 v14, 0x0

    cmpl-float v15, v3, v14

    if-lez v15, :cond_1

    iget v15, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v15, v2, Landroid/graphics/Rect;->left:I

    :goto_1
    iput v15, v12, Landroid/graphics/Point;->x:I

    .line 140
    iget v15, v12, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-direct {v0, v10, v11, v15}, Lcom/android/internal/policy/PipSnapAlgorithm;->findY(FFF)I

    move-result v15

    iput v15, v12, Landroid/graphics/Point;->y:I

    .line 143
    cmpl-float v15, v4, v14

    if-lez v15, :cond_2

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    iget v15, v2, Landroid/graphics/Rect;->top:I

    :goto_2
    iput v15, v13, Landroid/graphics/Point;->y:I

    .line 145
    iget v15, v13, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-direct {v0, v10, v11, v15}, Lcom/android/internal/policy/PipSnapAlgorithm;->findX(FFF)I

    move-result v15

    iput v15, v13, Landroid/graphics/Point;->x:I

    .line 150
    if-eqz v6, :cond_4

    .line 151
    cmpl-float v15, v3, v14

    if-lez v15, :cond_3

    .line 152
    iget v15, v2, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v7

    goto :goto_3

    .line 153
    :cond_3
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v15, v7, v15

    :goto_3
    move v7, v15

    .local v7, "maxDistance":I
    goto :goto_4

    .line 155
    .end local v7    # "maxDistance":I
    :cond_4
    cmpl-float v7, v4, v14

    if-lez v7, :cond_5

    .line 156
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v15, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v15

    goto :goto_4

    .line 157
    :cond_5
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v15

    .line 159
    .restart local v7    # "maxDistance":I
    :goto_4
    const-wide/16 v17, 0x0

    if-lez v7, :cond_e

    .line 161
    if-eqz v6, :cond_6

    iget v15, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_6
    iget v15, v5, Landroid/graphics/Point;->x:I

    .line 162
    .local v15, "startPoint":I
    :goto_5
    if-eqz v6, :cond_7

    iget v14, v13, Landroid/graphics/Point;->y:I

    goto :goto_6

    :cond_7
    iget v14, v13, Landroid/graphics/Point;->x:I

    .line 163
    .local v14, "endPoint":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 164
    .local v5, "center":I
    if-ge v15, v5, :cond_8

    if-lt v14, v5, :cond_9

    :cond_8
    if-le v15, v5, :cond_e

    if-le v14, v5, :cond_e

    .line 168
    :cond_9
    if-eqz v6, :cond_a

    move/from16 v19, v10

    move/from16 v20, v11

    float-to-double v10, v3

    .end local v10    # "slope":F
    .end local v11    # "yIntercept":F
    .local v19, "slope":F
    .local v20, "yIntercept":F
    goto :goto_7

    .end local v19    # "slope":F
    .end local v20    # "yIntercept":F
    .restart local v10    # "slope":F
    .restart local v11    # "yIntercept":F
    :cond_a
    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "slope":F
    .end local v11    # "yIntercept":F
    .restart local v19    # "slope":F
    .restart local v20    # "yIntercept":F
    float-to-double v10, v4

    :goto_7
    move/from16 v22, v14

    move/from16 v21, v15

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .end local v14    # "endPoint":I
    .end local v15    # "startPoint":I
    .local v21, "startPoint":I
    .local v22, "endPoint":I
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double v10, v17, v10

    double-to-int v10, v10

    iget v11, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    const/4 v14, 0x2

    mul-int/2addr v11, v14

    div-int/2addr v10, v11

    .line 170
    .local v10, "distance":I
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 172
    if-eqz v6, :cond_c

    .line 173
    iget v11, v1, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_b

    move v14, v10

    goto :goto_8

    :cond_b
    neg-int v14, v10

    :goto_8
    add-int/2addr v11, v14

    iput v11, v13, Landroid/graphics/Point;->x:I

    goto :goto_a

    .line 175
    :cond_c
    iget v11, v1, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-lez v14, :cond_d

    move v14, v10

    goto :goto_9

    :cond_d
    neg-int v14, v10

    :goto_9
    add-int/2addr v11, v14

    iput v11, v13, Landroid/graphics/Point;->y:I

    .line 177
    :goto_a
    return-object v13

    .line 181
    .end local v5    # "center":I
    .end local v19    # "slope":F
    .end local v20    # "yIntercept":F
    .end local v21    # "startPoint":I
    .end local v22    # "endPoint":I
    .local v10, "slope":F
    .restart local v11    # "yIntercept":F
    :cond_e
    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "slope":F
    .end local v11    # "yIntercept":F
    .restart local v19    # "slope":F
    .restart local v20    # "yIntercept":F
    iget v5, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v8

    int-to-double v10, v5

    iget v5, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v9

    int-to-double v14, v5

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    .line 182
    .local v10, "distanceVert":D
    iget v5, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v8

    int-to-double v14, v5

    iget v5, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v9

    int-to-double v0, v5

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 184
    .local v0, "distanceHoriz":D
    cmpl-double v5, v10, v17

    if-nez v5, :cond_f

    .line 185
    return-object v13

    .line 187
    :cond_f
    cmpl-double v5, v0, v17

    if-nez v5, :cond_10

    .line 188
    return-object v12

    .line 191
    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v5, v14, v16

    if-lez v5, :cond_11

    move-object v5, v13

    goto :goto_b

    :cond_11
    move-object v5, v12

    :goto_b
    return-object v5
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBoundsOut"    # Landroid/graphics/Rect;
    .param p4, "bottomOffset"    # I

    .line 330
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .line 331
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 333
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    .line 333
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 335
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 336
    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 7
    .param p1, "aspectRatio"    # F
    .param p2, "minEdgeSize"    # F
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I

    .line 344
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 345
    .local v0, "smallestDisplaySize":I
    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 349
    .local v1, "minSize":I
    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    int-to-float v4, v1

    mul-float/2addr v2, v4

    .line 364
    .local v2, "widthAtMaxAspectRatioForMinSize":F
    int-to-float v4, v1

    invoke-static {v2, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v4

    .line 365
    .local v4, "radius":F
    mul-float v5, v4, v4

    mul-float v6, p1, p1

    add-float/2addr v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    .line 367
    .local v3, "height":I
    int-to-float v5, v3

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .end local v2    # "widthAtMaxAspectRatioForMinSize":F
    .end local v4    # "radius":F
    goto :goto_1

    .line 351
    .end local v3    # "height":I
    :cond_1
    :goto_0
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_2

    .line 353
    move v2, v1

    .line 354
    .local v2, "width":I
    int-to-float v3, v2

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "height":I
    goto :goto_1

    .line 357
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_2
    move v3, v1

    .line 358
    .restart local v3    # "height":I
    int-to-float v2, v3

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 367
    .restart local v2    # "width":I
    :goto_1
    nop

    .line 369
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v4
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 276
    .local v0, "tmpBounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 277
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 278
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 279
    .local v1, "widthFraction":F
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 280
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 281
    .local v2, "heightFraction":F
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_0

    .line 282
    return v1

    .line 283
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_1

    .line 284
    add-float/2addr v5, v2

    return v5

    .line 285
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_2

    .line 286
    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v5, v1

    add-float/2addr v3, v5

    return v3

    .line 288
    :cond_2
    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v5, v2

    add-float/2addr v3, v5

    return v3
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 92
    const v1, 0x10e0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 93
    invoke-direct {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->calculateSnapTargets()V

    .line 94
    return-void
.end method

.method public setMinimized(Z)V
    .locals 0
    .param p1, "isMinimized"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    .line 101
    return-void
.end method
