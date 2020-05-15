.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 142
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    .line 148
    .local v0, "adapter":Landroid/widget/DayPickerPagerAdapter;
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v1

    .line 149
    .local v1, "current":Landroid/widget/SimpleMonthView;
    if-eq v1, p2, :cond_1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 152
    return-object v2

    .line 156
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v2

    .line 157
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 158
    invoke-virtual {p0, v3}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 160
    .local v4, "child":Landroid/view/View;
    if-eq v4, p2, :cond_2

    if-eq v4, v1, :cond_2

    .line 161
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 164
    return-object v5

    .line 157
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 54
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->populate()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v3

    .line 59
    .local v3, "count":I
    nop

    .line 60
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v4, v7, :cond_1

    .line 61
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v7, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 63
    .local v4, "measureMatchParentChildren":Z
    :goto_1
    const/4 v8, 0x0

    .line 64
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    .line 65
    .local v9, "maxWidth":I
    const/4 v10, 0x0

    .line 67
    .local v10, "childState":I
    move v11, v10

    move v10, v8

    move v8, v5

    .local v8, "i":I
    .local v10, "maxHeight":I
    .local v11, "childState":I
    :goto_2
    const/4 v12, -0x1

    if-ge v8, v3, :cond_4

    .line 68
    invoke-virtual {v0, v8}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 69
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_3

    .line 70
    invoke-virtual {v0, v13, v1, v2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 72
    .local v14, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 73
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 74
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v11, v15}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v11

    .line 75
    if-eqz v4, :cond_3

    .line 76
    iget v15, v14, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-eq v15, v12, :cond_2

    iget v15, v14, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v15, v12, :cond_3

    .line 78
    :cond_2
    iget-object v12, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 85
    .end local v8    # "i":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v13

    add-int/2addr v8, v13

    add-int/2addr v9, v8

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v13

    add-int/2addr v8, v13

    add-int/2addr v10, v8

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 90
    .end local v10    # "maxHeight":I
    .local v8, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 94
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_5

    .line 95
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 96
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 99
    :cond_5
    invoke-static {v9, v1, v11}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v13

    shl-int/lit8 v14, v11, 0x10

    .line 100
    invoke-static {v8, v2, v14}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v14

    .line 99
    invoke-virtual {v0, v13, v14}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    .line 103
    iget-object v13, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 104
    if-le v3, v6, :cond_8

    .line 105
    nop

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_8

    .line 106
    iget-object v6, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 108
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 112
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-ne v14, v12, :cond_6

    .line 113
    nop

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 113
    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "childWidthMeasureSpec":I
    goto :goto_4

    .line 117
    .end local v14    # "childWidthMeasureSpec":I
    :cond_6
    nop

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .line 117
    invoke-static {v1, v14, v15}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v14

    .line 122
    .restart local v14    # "childWidthMeasureSpec":I
    :goto_4
    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v15, v12, :cond_7

    .line 123
    nop

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    .line 123
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "childHeightMeasureSpec":I
    goto :goto_5

    .line 127
    .end local v15    # "childHeightMeasureSpec":I
    :cond_7
    nop

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v7, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 127
    invoke-static {v2, v15, v7}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v15

    .restart local v15    # "childHeightMeasureSpec":I
    :goto_5
    move v7, v15

    .line 132
    .end local v15    # "childHeightMeasureSpec":I
    .local v7, "childHeightMeasureSpec":I
    invoke-virtual {v6, v14, v7}, Landroid/view/View;->measure(II)V

    .line 105
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childHeightMeasureSpec":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v14    # "childWidthMeasureSpec":I
    add-int/lit8 v5, v5, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_3

    .line 136
    .end local v5    # "i":I
    :cond_8
    iget-object v5, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 137
    return-void
.end method
