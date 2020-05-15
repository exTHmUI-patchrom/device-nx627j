.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "WatchListDecorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private mBottomPanel:Landroid/view/View;

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field private mListView:Landroid/widget/ListView;

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/view/ViewTreeObserver;

.field private mPendingScroll:I

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method private applyMeasureToChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredWidth()I

    move-result v1

    .line 118
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 117
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 120
    .local v1, "width":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 122
    .local v1, "childWidthMeasureSpec":I
    goto :goto_0

    .line 123
    .end local v1    # "childWidthMeasureSpec":I
    :cond_0
    nop

    .line 124
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 123
    invoke-static {p2, v1, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 130
    .restart local v1    # "childWidthMeasureSpec":I
    :goto_0
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v4, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredHeight()I

    move-result v4

    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 134
    .local v3, "height":I
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 136
    .end local v3    # "height":I
    .local v2, "childHeightMeasureSpec":I
    goto :goto_1

    .line 137
    .end local v2    # "childHeightMeasureSpec":I
    :cond_1
    nop

    .line 138
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 137
    invoke-static {p3, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 143
    .restart local v2    # "childHeightMeasureSpec":I
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 144
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 281
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 280
    :goto_0
    return v0
.end method

.method private getPaddingLeftWithForeground()I
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 266
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 265
    :goto_0
    return v0
.end method

.method private getPaddingRightWithForeground()I
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 271
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 270
    :goto_0
    return v0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 275
    :goto_0
    return v0
.end method

.method private measureAndGetHeight(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 147
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 155
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setScrolling(Landroid/view/View;F)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "translationY"    # F

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 76
    nop

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 82
    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 84
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 86
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_1

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "only one ListView child allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    .line 90
    .local v2, "gravity":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-nez v3, :cond_2

    .line 91
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    goto :goto_1

    .line 92
    :cond_2
    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-nez v3, :cond_3

    .line 93
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 76
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "gravity":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 102
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 103
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 108
    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 110
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 160
    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v9

    .line 162
    .local v9, "count":I
    nop

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-ne v0, v1, :cond_1

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v11

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    .line 165
    .local v12, "measureMatchParentChildren":Z
    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 169
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 171
    .local v2, "childState":I
    move v14, v0

    move v13, v1

    move v15, v2

    move v0, v11

    .end local v1    # "maxWidth":I
    .end local v2    # "childState":I
    .local v0, "i":I
    .local v13, "maxWidth":I
    .local v14, "maxHeight":I
    .local v15, "childState":I
    :goto_2
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v9, :cond_6

    .line 172
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 173
    .local v4, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_3

    .line 171
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    move/from16 v17, v5

    goto :goto_4

    .line 174
    .restart local v4    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v0, v6

    move-object v1, v4

    move v2, v7

    move-object v10, v4

    move v4, v8

    .end local v4    # "child":Landroid/view/View;
    .local v10, "child":Landroid/view/View;
    move/from16 v17, v5

    move/from16 v5, v16

    .end local v5    # "i":I
    .local v17, "i":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/WatchListDecorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 175
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 177
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 176
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 178
    .end local v13    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    nop

    .line 179
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 178
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 180
    .end local v14    # "maxHeight":I
    .local v2, "maxHeight":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->combineMeasuredStates(II)I

    move-result v3

    .line 181
    .end local v15    # "childState":I
    .local v3, "childState":I
    if-eqz v12, :cond_5

    .line 182
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_5

    .line 184
    :cond_4
    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "child":Landroid/view/View;
    :cond_5
    move v13, v1

    move v14, v2

    move v15, v3

    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v3    # "childState":I
    .restart local v13    # "maxWidth":I
    .restart local v14    # "maxHeight":I
    .restart local v15    # "childState":I
    :goto_4
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .local v0, "i":I
    goto :goto_2

    .line 191
    .end local v0    # "i":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 196
    .end local v14    # "maxHeight":I
    .local v0, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 199
    .end local v13    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 200
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_7

    .line 201
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 205
    :cond_7
    invoke-static {v1, v7, v15}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v15, 0x10

    .line 206
    invoke-static {v0, v8, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 205
    invoke-virtual {v6, v3, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->setMeasuredDimension(II)V

    .line 209
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_a

    .line 210
    iget v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    if-eqz v3, :cond_8

    .line 211
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 212
    iput v11, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 215
    :cond_8
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 216
    invoke-direct {v6, v4, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v4

    .line 215
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 217
    .local v3, "paddingTop":I
    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 218
    invoke-direct {v6, v5, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v5

    .line 217
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 220
    .local v4, "paddingBottom":I
    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ne v3, v5, :cond_9

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 221
    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 222
    :cond_9
    iget v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    iget-object v10, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/2addr v5, v10

    iput v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 223
    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v10, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 224
    invoke-virtual {v10}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v10

    iget-object v13, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 225
    invoke-virtual {v13}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v13

    .line 223
    invoke-virtual {v5, v10, v3, v13, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 229
    .end local v3    # "paddingTop":I
    .end local v4    # "paddingBottom":I
    :cond_a
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 230
    .end local v9    # "count":I
    .local v3, "count":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    .line 231
    nop

    .local v11, "i":I
    :goto_5
    move v4, v11

    .end local v11    # "i":I
    .local v4, "i":I
    if-ge v4, v3, :cond_d

    .line 232
    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 233
    .local v5, "child":Landroid/view/View;
    iget-object v9, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_b

    iget-object v9, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-eq v5, v9, :cond_c

    iget-object v9, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eq v5, v9, :cond_c

    .line 234
    :cond_b
    invoke-direct {v6, v5, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 231
    .end local v5    # "child":Landroid/view/View;
    :cond_c
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "i":I
    .restart local v11    # "i":I
    goto :goto_5

    .line 238
    .end local v11    # "i":I
    :cond_d
    return-void
.end method

.method public onScrollChanged()V
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "firstChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 294
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 296
    .end local v0    # "firstChild":Landroid/view/View;
    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 305
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_4

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "lastChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 309
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 312
    .end local v0    # "lastChild":Landroid/view/View;
    goto :goto_1

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_1

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 320
    :cond_6
    :goto_1
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 3
    .param p1, "foregroundGravity"    # I

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 251
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 252
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 253
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 255
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 257
    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 258
    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 259
    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 262
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    return-void
.end method
