.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1456
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1457
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/inputmethodservice/KeyboardView$1;

    .line 1450
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .line 1477
    const/4 v0, -0x1

    .line 1479
    .local v0, "drop":I
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1480
    .local v1, "pastTime":[J
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "drop":I
    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    if-ge v0, v6, :cond_2

    .line 1481
    aget-wide v7, v1, v0

    cmp-long v7, v7, v4

    if-nez v7, :cond_0

    .line 1482
    goto :goto_1

    .line 1483
    :cond_0
    aget-wide v4, v1, v0

    const-wide/16 v6, 0xc8

    sub-long v6, p3, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1484
    move v3, v0

    .line 1480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    :cond_2
    :goto_1
    if-ne v0, v6, :cond_3

    if-gez v3, :cond_3

    .line 1488
    const/4 v3, 0x0

    .line 1490
    :cond_3
    if-ne v3, v0, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 1491
    :cond_4
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1492
    .local v7, "pastX":[F
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1493
    .local v8, "pastY":[F
    if-ltz v3, :cond_5

    .line 1494
    add-int/lit8 v9, v3, 0x1

    .line 1495
    .local v9, "start":I
    rsub-int/lit8 v10, v3, 0x4

    add-int/lit8 v10, v10, -0x1

    .line 1496
    .local v10, "count":I
    invoke-static {v7, v9, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    invoke-static {v8, v9, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1498
    invoke-static {v1, v9, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1499
    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v0, v2

    .line 1501
    .end local v9    # "start":I
    .end local v10    # "count":I
    :cond_5
    aput p1, v7, v0

    .line 1502
    aput p2, v8, v0

    .line 1503
    aput-wide p3, v1, v0

    .line 1504
    add-int/lit8 v0, v0, 0x1

    .line 1505
    if-ge v0, v6, :cond_6

    .line 1506
    aput-wide v4, v1, v0

    .line 1508
    :cond_6
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1468
    .local v0, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 1469
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1470
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    .line 1471
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    .line 1470
    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1469
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1473
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1474
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1463
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1464
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .line 1511
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    .line 1512
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 20
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1515
    move/from16 v2, p2

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1516
    .local v3, "pastX":[F
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1517
    .local v4, "pastY":[F
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1519
    .local v5, "pastTime":[J
    const/4 v6, 0x0

    aget v7, v3, v6

    .line 1520
    .local v7, "oldestX":F
    aget v8, v4, v6

    .line 1521
    .local v8, "oldestY":F
    aget-wide v9, v5, v6

    .line 1522
    .local v9, "oldestTime":J
    const/4 v11, 0x0

    .line 1523
    .local v11, "accumX":F
    const/4 v12, 0x0

    .line 1524
    .local v12, "accumY":F
    nop

    .line 1525
    .local v6, "N":I
    :goto_0
    const/4 v13, 0x4

    if-ge v6, v13, :cond_1

    .line 1526
    aget-wide v13, v5, v6

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    .line 1527
    goto :goto_1

    .line 1529
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1532
    :cond_1
    :goto_1
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_2
    if-ge v13, v6, :cond_5

    .line 1533
    aget-wide v15, v5, v13

    sub-long v14, v15, v9

    long-to-int v14, v14

    .line 1534
    .local v14, "dur":I
    if-nez v14, :cond_2

    .line 1532
    .end local v14    # "dur":I
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    goto :goto_5

    .line 1535
    .restart local v14    # "dur":I
    :cond_2
    aget v15, v3, v13

    sub-float/2addr v15, v7

    .line 1536
    .local v15, "dist":F
    move-object/from16 v17, v3

    int-to-float v3, v14

    .end local v3    # "pastX":[F
    .local v17, "pastX":[F
    div-float v3, v15, v3

    move-object/from16 v18, v5

    int-to-float v5, v1

    .end local v5    # "pastTime":[J
    .local v18, "pastTime":[J
    mul-float/2addr v3, v5

    .line 1537
    .local v3, "vel":F
    const/4 v5, 0x0

    cmpl-float v16, v11, v5

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v16, :cond_3

    move v11, v3

    goto :goto_3

    .line 1538
    :cond_3
    add-float v16, v11, v3

    mul-float v11, v16, v5

    .line 1540
    :goto_3
    aget v16, v4, v13

    sub-float v16, v16, v8

    .line 1541
    .end local v15    # "dist":F
    .local v16, "dist":F
    int-to-float v15, v14

    div-float v15, v16, v15

    int-to-float v5, v1

    mul-float/2addr v15, v5

    .line 1542
    .end local v3    # "vel":F
    .local v15, "vel":F
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-nez v3, :cond_4

    move v3, v15

    .line 1532
    .end local v14    # "dur":I
    .end local v15    # "vel":F
    .end local v16    # "dist":F
    :goto_4
    move v12, v3

    goto :goto_5

    .line 1543
    .restart local v14    # "dur":I
    .restart local v15    # "vel":F
    .restart local v16    # "dist":F
    :cond_4
    add-float v3, v12, v15

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    .end local v12    # "accumY":F
    .end local v14    # "dur":I
    .end local v15    # "vel":F
    .end local v16    # "dist":F
    .local v3, "accumY":F
    goto :goto_4

    .line 1532
    .end local v3    # "accumY":F
    .restart local v12    # "accumY":F
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    goto :goto_2

    .line 1545
    .end local v13    # "i":I
    .end local v17    # "pastX":[F
    .end local v18    # "pastTime":[J
    .local v3, "pastX":[F
    .restart local v5    # "pastTime":[J
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "pastX":[F
    .end local v5    # "pastTime":[J
    .restart local v17    # "pastX":[F
    .restart local v18    # "pastTime":[J
    const/4 v3, 0x0

    cmpg-float v5, v11, v3

    if-gez v5, :cond_6

    neg-float v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_6

    .line 1546
    :cond_6
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_6
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    .line 1547
    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-gez v3, :cond_7

    neg-float v3, v2

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_7

    .line 1548
    :cond_7
    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_7
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    .line 1549
    return-void
.end method

.method public getXVelocity()F
    .locals 1

    .line 1552
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .line 1556
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
