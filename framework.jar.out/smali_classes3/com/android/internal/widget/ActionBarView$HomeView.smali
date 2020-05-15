.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1399
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1402
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1403
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1404
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    .line 1406
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1408
    :cond_0
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3

    .line 1440
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1442
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1447
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1476
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1460
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1461
    const/4 v0, 0x1

    return v0
.end method

.method public getStartOffset()I
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUpWidth()I
    .locals 1

    .line 1491
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1452
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1456
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1481
    const v0, 0x10204a4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1482
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1483
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1484
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1547
    sub-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    .line 1548
    .local v3, "vCenter":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result v4

    .line 1549
    .local v4, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v5

    .line 1550
    .local v5, "width":I
    const/4 v6, 0x0

    .line 1551
    .local v6, "upOffset":I
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 1552
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1553
    .local v7, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    .line 1554
    .local v8, "upHeight":I
    iget-object v9, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 1555
    .local v9, "upWidth":I
    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v9

    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v6, v10, v11

    .line 1556
    div-int/lit8 v10, v8, 0x2

    sub-int v10, v3, v10

    .line 1557
    .local v10, "upTop":I
    add-int v11, v10, v8

    .line 1560
    .local v11, "upBottom":I
    if-eqz v4, :cond_0

    .line 1561
    move v12, v5

    .line 1562
    .local v12, "upRight":I
    sub-int v13, v12, v9

    .line 1563
    .local v13, "upLeft":I
    sub-int v14, p4, v6

    .line 1569
    .end local p4    # "r":I
    .local v14, "r":I
    move/from16 v15, p2

    goto :goto_0

    .line 1565
    .end local v12    # "upRight":I
    .end local v13    # "upLeft":I
    .end local v14    # "r":I
    .restart local p4    # "r":I
    :cond_0
    move v12, v9

    .line 1566
    .restart local v12    # "upRight":I
    const/4 v13, 0x0

    .line 1567
    .restart local v13    # "upLeft":I
    add-int v15, p2, v6

    .line 1569
    .end local p2    # "l":I
    .local v15, "l":I
    move/from16 v14, p4

    .end local p4    # "r":I
    .restart local v14    # "r":I
    :goto_0
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1, v13, v10, v12, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .end local v7    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "upHeight":I
    .end local v9    # "upWidth":I
    .end local v10    # "upTop":I
    .end local v11    # "upBottom":I
    .end local v12    # "upRight":I
    .end local v13    # "upLeft":I
    goto :goto_1

    .line 1572
    .end local v14    # "r":I
    .end local v15    # "l":I
    .restart local p2    # "l":I
    .restart local p4    # "r":I
    :cond_1
    move/from16 v15, p2

    move/from16 v14, p4

    .end local p2    # "l":I
    .end local p4    # "r":I
    .restart local v14    # "r":I
    .restart local v15    # "l":I
    :goto_1
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1573
    .local v1, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 1574
    .local v7, "iconHeight":I
    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 1575
    .local v8, "iconWidth":I
    sub-int v9, v14, v15

    div-int/lit8 v9, v9, 0x2

    .line 1576
    .local v9, "hCenter":I
    iget v10, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v11, v7, 0x2

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1577
    .local v10, "iconTop":I
    add-int v11, v10, v7

    .line 1580
    .local v11, "iconBottom":I
    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v12

    .line 1581
    .local v12, "marginStart":I
    div-int/lit8 v13, v8, 0x2

    sub-int v13, v9, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1582
    .local v13, "delta":I
    if-eqz v4, :cond_2

    .line 1583
    sub-int v16, v5, v6

    sub-int v16, v16, v13

    .line 1584
    .local v16, "iconRight":I
    sub-int v17, v16, v8

    .line 1587
    .local v1, "iconLeft":I
    .local v18, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    move-object/from16 v18, v1

    move/from16 v1, v17

    goto :goto_3

    .line 1586
    .end local v16    # "iconRight":I
    .end local v18    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int v17, v6, v13

    .line 1587
    .local v17, "iconLeft":I
    add-int v16, v17, v8

    goto :goto_2

    .end local v17    # "iconLeft":I
    .local v1, "iconLeft":I
    .restart local v16    # "iconRight":I
    .restart local v18    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    move/from16 v19, v16

    .line 1589
    .end local v16    # "iconRight":I
    .local v19, "iconRight":I
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move/from16 v0, v19

    invoke-virtual {v2, v1, v10, v0, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1590
    .end local v19    # "iconRight":I
    .local v0, "iconRight":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1496
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1497
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1498
    .local v0, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 1499
    .local v1, "upMargins":I
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1500
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1501
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1502
    .local v2, "width":I
    :goto_0
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v10, v4, v5

    .line 1504
    .local v10, "height":I
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 1505
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v7, v2

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1506
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1507
    .local v3, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 1508
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1509
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 1508
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1510
    .end local v3    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    .line 1512
    sub-int/2addr v2, v1

    .line 1515
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1516
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1517
    .local v4, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1518
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1520
    .local v6, "heightSize":I
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    goto :goto_2

    .line 1525
    :cond_3
    move v2, v5

    .line 1526
    goto :goto_2

    .line 1522
    :cond_4
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1523
    nop

    .line 1531
    :goto_2
    if-eq v4, v8, :cond_6

    if-eq v4, v7, :cond_5

    goto :goto_3

    .line 1536
    :cond_5
    move v10, v6

    .line 1537
    goto :goto_3

    .line 1533
    :cond_6
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1534
    nop

    .line 1542
    :goto_3
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1543
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1468
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1469
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_0
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1429
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1431
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .line 1415
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1416
    return-void
.end method

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .line 1411
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    return-void
.end method

.method public setUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1434
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1436
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1437
    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1423
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1424
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1425
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1426
    return-void
.end method
