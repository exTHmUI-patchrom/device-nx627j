.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 43
    move/from16 v8, p2

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v0, v9, :cond_1

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    .line 47
    .local v12, "measureMatchParentChildren":Z
    const/4 v0, 0x0

    .line 48
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 49
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 53
    .local v2, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    move-result v13

    .line 54
    .local v13, "count":I
    move v15, v0

    move v14, v1

    move v5, v2

    const/4 v0, 0x0

    .end local v1    # "maxWidth":I
    .end local v2    # "childState":I
    .local v0, "i":I
    .local v5, "childState":I
    .local v14, "maxWidth":I
    .local v15, "maxHeight":I
    :goto_2
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    const/4 v0, -0x1

    if-ge v4, v13, :cond_a

    .line 55
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    goto :goto_3

    .line 54
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    move/from16 v18, v4

    goto/16 :goto_6

    .line 57
    .restart local v3    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move/from16 v16, v1

    .line 59
    .local v16, "matchWidth":Z
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    move/from16 v17, v0

    .line 60
    .local v17, "matchHeight":Z
    if-eqz v12, :cond_7

    if-nez v16, :cond_6

    if-eqz v17, :cond_7

    .line 61
    :cond_6
    iget-object v0, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move-object v1, v3

    move-object v10, v2

    move v2, v7

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v11, v3

    move/from16 v3, v18

    .end local v3    # "child":Landroid/view/View;
    .local v11, "child":Landroid/view/View;
    move/from16 v18, v4

    move v4, v8

    .end local v4    # "i":I
    .local v18, "i":I
    move v9, v5

    move/from16 v5, v19

    .end local v5    # "childState":I
    .local v9, "childState":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "state":I
    if-eqz v12, :cond_8

    if-nez v16, :cond_8

    .line 71
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 73
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 76
    :cond_8
    if-eqz v12, :cond_9

    if-nez v17, :cond_9

    .line 77
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 79
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    .line 83
    :cond_9
    invoke-static {v9, v0}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    move-result v0

    .line 54
    .end local v9    # "childState":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "child":Landroid/view/View;
    .end local v16    # "matchWidth":Z
    .end local v17    # "matchHeight":Z
    .local v0, "childState":I
    move v5, v0

    .end local v0    # "childState":I
    .restart local v5    # "childState":I
    :goto_6
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .local v0, "i":I
    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_2

    .line 88
    .end local v0    # "i":I
    :cond_a
    move v9, v5

    .end local v5    # "childState":I
    .restart local v9    # "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    .end local v15    # "maxHeight":I
    .local v1, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 96
    .end local v14    # "maxWidth":I
    .local v2, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 97
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_b

    .line 98
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 99
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 102
    :cond_b
    invoke-static {v2, v7, v9}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v5, v9, 0x10

    .line 103
    invoke-static {v1, v8, v5}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v5

    .line 102
    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    .line 107
    iget-object v4, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 108
    .local v4, "matchCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_7
    move/from16 v5, v20

    .end local v20    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_e

    .line 109
    iget-object v10, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 110
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v14, v0, :cond_c

    .line 114
    nop

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 114
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "childWidthMeasureSpec":I
    goto :goto_8

    .line 119
    .end local v14    # "childWidthMeasureSpec":I
    :cond_c
    nop

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 119
    invoke-static {v7, v14, v15}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v14

    .line 125
    .restart local v14    # "childWidthMeasureSpec":I
    :goto_8
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v15, v0, :cond_d

    .line 126
    nop

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v15, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v0

    .line 126
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "childHeightMeasureSpec":I
    goto :goto_9

    .line 131
    .end local v15    # "childHeightMeasureSpec":I
    :cond_d
    const/high16 v0, 0x40000000    # 2.0f

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 131
    invoke-static {v8, v15, v0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v15

    .restart local v15    # "childHeightMeasureSpec":I
    :goto_9
    move v0, v15

    .line 136
    .end local v15    # "childHeightMeasureSpec":I
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {v10, v14, v0}, Landroid/view/View;->measure(II)V

    .line 108
    .end local v0    # "childHeightMeasureSpec":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "childWidthMeasureSpec":I
    add-int/lit8 v20, v5, 0x1

    .end local v5    # "i":I
    .restart local v20    # "i":I
    const/4 v0, -0x1

    goto/16 :goto_7

    .line 139
    .end local v20    # "i":I
    :cond_e
    iget-object v0, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    return-void
.end method
