.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 46
    sget-object v1, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 47
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .line 132
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 134
    return v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isStacked()Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    .line 147
    if-eqz p1, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 149
    const v0, 0x1020411

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 151
    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 157
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 157
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 160
    .end local v2    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    .line 142
    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    .local v0, "widthSize":I
    iget-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 66
    iget v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 71
    :cond_0
    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2

    .line 81
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 84
    .local v3, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_2
    move v3, p1

    .line 89
    .restart local v3    # "initialWidthMeasureSpec":I
    :goto_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 91
    iget-boolean v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v4

    .line 93
    .local v4, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    .line 94
    .local v5, "measuredWidthState":I
    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_3

    .line 95
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 98
    const/4 v1, 0x1

    .line 102
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    :cond_3
    if-eqz v1, :cond_4

    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 108
    :cond_4
    const/4 v4, 0x0

    .line 109
    .local v4, "minHeight":I
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    .line 110
    .local v2, "firstVisible":I
    if-ltz v2, :cond_7

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 112
    .local v5, "firstButton":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .local v6, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 115
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 116
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    .line 117
    .local v7, "secondVisible":I
    if-ltz v7, :cond_5

    .line 118
    int-to-float v8, v4

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x41800000    # 16.0f

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 121
    .end local v7    # "secondVisible":I
    :cond_5
    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 126
    .end local v5    # "firstButton":Landroid/view/View;
    .end local v6    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result v5

    if-eq v5, v4, :cond_8

    .line 127
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 129
    :cond_8
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 53
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    .line 59
    :cond_1
    return-void
.end method
