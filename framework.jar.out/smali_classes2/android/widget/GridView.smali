.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 131
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 113
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 114
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 119
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 120
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 122
    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 124
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 141
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 144
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 146
    .local v5, "hSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 148
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 150
    .local v6, "vSpacing":I
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 152
    const/4 v7, 0x3

    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 153
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 157
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 158
    .local v7, "columnWidth":I
    if-lez v7, :cond_1

    .line 159
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 162
    :cond_1
    const/4 v8, 0x5

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 163
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 165
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 166
    .end local v2    # "index":I
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setGravity(I)V

    .line 170
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 816
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p3

    .line 817
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 820
    .local v2, "offset":I
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 822
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 3
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 843
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p3, v1

    .line 844
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 847
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 849
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 2240
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2242
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 2246
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 2249
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2250
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 2251
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2254
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2256
    :cond_0
    if-gez v2, :cond_3

    .line 2258
    const/4 v2, 0x0

    goto :goto_0

    .line 2262
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2263
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 2265
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_2

    .line 2268
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2271
    :cond_2
    if-lez v2, :cond_3

    .line 2273
    const/4 v2, 0x0

    .line 2277
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 2278
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2281
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1648
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1649
    return v1

    .line 1652
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1653
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1656
    :cond_1
    const/4 v0, 0x0

    .line 1657
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1658
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1659
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 1660
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 1661
    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1662
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1663
    const/4 v0, 0x1

    .line 1667
    :cond_2
    if-nez v0, :cond_24

    if-eq v2, v4, :cond_24

    .line 1668
    const/4 v3, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1c

    .line 1720
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1721
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v4

    :goto_1
    move v0, v3

    goto/16 :goto_1c

    .line 1714
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1715
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v4

    :goto_3
    move v0, v3

    goto/16 :goto_1c

    .line 1706
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v4

    :goto_5
    move v0, v3

    goto/16 :goto_1c

    .line 1708
    :cond_9
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1709
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v4

    :goto_7
    move v0, v3

    goto/16 :goto_1c

    .line 1698
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1699
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v1

    goto :goto_9

    :cond_d
    :goto_8
    move v3, v4

    :goto_9
    move v0, v3

    goto/16 :goto_1c

    .line 1700
    :cond_e
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1701
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    move v3, v1

    goto :goto_b

    :cond_10
    :goto_a
    move v3, v4

    :goto_b
    move v0, v3

    goto/16 :goto_1c

    .line 1731
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1732
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1733
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_c

    :cond_11
    move v3, v1

    goto :goto_d

    :cond_12
    :goto_c
    move v3, v4

    :goto_d
    move v0, v3

    goto/16 :goto_1c

    .line 1734
    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1735
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1736
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_e

    :cond_14
    move v3, v1

    goto :goto_f

    :cond_15
    :goto_e
    move v3, v4

    :goto_f
    move v0, v3

    goto/16 :goto_1c

    .line 1676
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1677
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_17

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_10

    :cond_16
    move v3, v1

    goto :goto_11

    :cond_17
    :goto_10
    move v3, v4

    :goto_11
    move v0, v3

    goto/16 :goto_1c

    .line 1670
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1671
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_19

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_12

    :cond_18
    move v3, v1

    goto :goto_13

    :cond_19
    :goto_12
    move v3, v4

    :goto_13
    move v0, v3

    goto/16 :goto_1c

    .line 1690
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1691
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_14

    :cond_1a
    move v3, v1

    goto :goto_15

    :cond_1b
    :goto_14
    move v3, v4

    :goto_15
    move v0, v3

    goto :goto_1c

    .line 1692
    :cond_1c
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1693
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_16

    :cond_1d
    move v3, v1

    goto :goto_17

    :cond_1e
    :goto_16
    move v3, v4

    :goto_17
    move v0, v3

    goto :goto_1c

    .line 1682
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1683
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_18

    :cond_1f
    move v3, v1

    goto :goto_19

    :cond_20
    :goto_18
    move v3, v4

    :goto_19
    move v0, v3

    goto :goto_1c

    .line 1684
    :cond_21
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1685
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_1a

    :cond_22
    move v3, v1

    goto :goto_1b

    :cond_23
    :goto_1a
    move v3, v4

    :goto_1b
    move v0, v3

    .line 1742
    :cond_24
    :goto_1c
    if-eqz v0, :cond_25

    .line 1743
    return v4

    .line 1746
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1747
    return v4

    .line 1750
    :cond_26
    packed-switch v2, :pswitch_data_0

    .line 1758
    return v1

    .line 1756
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1754
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1752
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 620
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 621
    .local v0, "lastPosition":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    .line 623
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 626
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 628
    .local v3, "lastBottom":I
    iget v4, p0, Landroid/widget/GridView;->mBottom:I

    iget v5, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 632
    .local v4, "end":I
    sub-int v5, v4, v3

    .line 634
    .local v5, "bottomOffset":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 635
    .local v6, "firstChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 639
    .local v7, "firstTop":I
    if-lez v5, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v8, :cond_0

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_3

    .line 640
    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_1

    .line 642
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 646
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 647
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v8, :cond_3

    .line 650
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    sub-int/2addr v8, v1

    .line 651
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p2

    .line 650
    invoke-direct {p0, v8, v1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 653
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 657
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "lastBottom":I
    .end local v4    # "end":I
    .end local v5    # "bottomOffset":I
    .end local v6    # "firstChild":Landroid/view/View;
    .end local v7    # "firstTop":I
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 660
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 668
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 671
    .local v2, "start":I
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 675
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 676
    .local v4, "topOffset":I
    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 677
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 678
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 682
    .local v7, "lastPosition":I
    if-lez v4, :cond_3

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_0

    if-le v6, v3, :cond_3

    .line 683
    :cond_0
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_1

    .line 685
    sub-int v9, v6, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 689
    :cond_1
    neg-int v9, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 690
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_3

    .line 693
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, p1

    :goto_0
    add-int/2addr v8, v7

    .line 694
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    .line 693
    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 696
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 700
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 7
    .param p1, "availableSpace"    # I

    .line 969
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 970
    .local v0, "requestedHorizontalSpacing":I
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 971
    .local v1, "stretchMode":I
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 972
    .local v2, "requestedColumnWidth":I
    const/4 v3, 0x0

    .line 974
    .local v3, "didNotInitiallyFit":Z
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 975
    if-lez v2, :cond_0

    .line 977
    add-int v4, p1, v0

    add-int v5, v2, v0

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 981
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 985
    :cond_1
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 988
    :goto_0
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    .line 989
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 992
    :cond_2
    if-eqz v1, :cond_6

    .line 1000
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v2

    sub-int v4, p1, v4

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    mul-int/2addr v6, v0

    sub-int/2addr v4, v6

    .line 1003
    .local v4, "spaceLeftOver":I
    if-gez v4, :cond_3

    .line 1004
    const/4 v3, 0x1

    .line 1007
    :cond_3
    packed-switch v1, :pswitch_data_0

    .end local v4    # "spaceLeftOver":I
    goto :goto_1

    .line 1027
    .restart local v4    # "spaceLeftOver":I
    :pswitch_0
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1028
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v6, v5, :cond_4

    .line 1029
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v5

    div-int v5, v4, v6

    add-int/2addr v5, v0

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1032
    :cond_4
    add-int v5, v0, v4

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .end local v4    # "spaceLeftOver":I
    goto :goto_1

    .line 1010
    .restart local v4    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v4, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1011
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1012
    goto :goto_1

    .line 1016
    :pswitch_2
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1017
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v6, v5, :cond_5

    .line 1018
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    div-int v5, v4, v6

    add-int/2addr v5, v0

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1021
    :cond_5
    add-int v5, v0, v4

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1023
    goto :goto_1

    .line 995
    .end local v4    # "spaceLeftOver":I
    :cond_6
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 996
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 997
    nop

    .line 1039
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v1, v2

    .line 307
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 308
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 311
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 312
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 313
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 314
    move-object v0, v2

    .line 319
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 321
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 322
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_0

    .line 324
    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 325
    return-object v0
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .line 451
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 452
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 454
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 455
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 457
    .end local p1    # "lastPosition":I
    .local v1, "lastPosition":I
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 12
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 713
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 714
    .local v0, "fadingEdgeLength":I
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 715
    .local v1, "selectedPosition":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 716
    .local v2, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 719
    .local v3, "verticalSpacing":I
    const/4 v4, -0x1

    .line 721
    .local v4, "rowEnd":I
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 722
    rem-int v5, v1, v2

    sub-int v5, v1, v5

    .local v5, "rowStart":I
    goto :goto_0

    .line 724
    .end local v5    # "rowStart":I
    :cond_0
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 726
    .local v5, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v5, v2

    sub-int v8, v5, v8

    sub-int v4, v7, v8

    .line 727
    const/4 v7, 0x0

    sub-int v8, v4, v2

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 733
    .local v5, "rowStart":I
    :goto_0
    invoke-direct {p0, p2, v0, v5}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 734
    .local v7, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v2, v5}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v8

    .line 737
    .local v8, "bottomSelectionPixel":I
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    invoke-direct {p0, v9, p1, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 739
    .local v6, "sel":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 741
    iget-object v9, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 742
    .local v9, "referenceView":Landroid/view/View;
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 743
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 745
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_2

    .line 746
    sub-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 747
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 748
    add-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    .line 750
    :cond_2
    add-int v10, v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 751
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 752
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 756
    :goto_2
    return-object v6
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .line 441
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 442
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 443
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 446
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 447
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 13
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 461
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    .line 462
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 463
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 466
    .local v2, "verticalSpacing":I
    const/4 v3, -0x1

    .line 468
    .local v3, "rowEnd":I
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 469
    rem-int v4, v0, v1

    sub-int v4, v0, v4

    .local v4, "rowStart":I
    goto :goto_0

    .line 471
    .end local v4    # "rowStart":I
    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 473
    .local v4, "invertedSelection":I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v5

    rem-int v7, v4, v1

    sub-int v7, v4, v7

    sub-int v3, v6, v7

    .line 474
    const/4 v6, 0x0

    sub-int v7, v3, v1

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 477
    .local v4, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 478
    .local v6, "fadingEdgeLength":I
    invoke-direct {p0, p1, v6, v4}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 480
    .local v7, "topSelectionPixel":I
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-direct {p0, v8, v7, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 481
    .local v5, "sel":Landroid/view/View;
    iput v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 483
    iget-object v8, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 485
    .local v8, "referenceView":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    .line 486
    add-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 487
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 488
    sub-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 489
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 491
    :cond_2
    invoke-direct {p0, p2, v6, v1, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v9

    .line 493
    .local v9, "bottomSelectionPixel":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v10, v9, v10

    .line 494
    .local v10, "offset":I
    invoke-virtual {p0, v10}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 495
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 496
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 497
    add-int v11, v3, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 498
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 501
    .end local v9    # "bottomSelectionPixel":I
    .end local v10    # "offset":I
    :goto_2
    return-object v5
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 559
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 562
    .local v0, "numColumns":I
    const/4 v1, -0x1

    .line 564
    .local v1, "motionRowEnd":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 565
    rem-int v2, p1, v0

    sub-int v2, p1, v2

    .local v2, "motionRowStart":I
    goto :goto_0

    .line 567
    .end local v2    # "motionRowStart":I
    :cond_0
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 569
    .local v2, "invertedSelection":I
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v3

    rem-int v5, v2, v0

    sub-int v5, v2, v5

    sub-int v1, v4, v5

    .line 570
    const/4 v4, 0x0

    sub-int v5, v1, v0

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 573
    .local v2, "motionRowStart":I
    :goto_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0, v4, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v3

    .line 576
    .local v3, "temp":Landroid/view/View;
    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 578
    iget-object v4, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 580
    .local v4, "referenceView":Landroid/view/View;
    if-nez v4, :cond_2

    .line 581
    const/4 v5, 0x0

    return-object v5

    .line 584
    :cond_2
    iget v5, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 589
    .local v5, "verticalSpacing":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_4

    .line 590
    sub-int v6, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 591
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 592
    add-int v7, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 594
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 595
    .local v8, "childCount":I
    if-lez v8, :cond_3

    .line 596
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 598
    .end local v8    # "childCount":I
    :cond_3
    goto :goto_2

    .line 599
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    :cond_4
    add-int v6, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 600
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 601
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {p0, v6, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 603
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 604
    .restart local v8    # "childCount":I
    if-lez v8, :cond_5

    .line 605
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 609
    .end local v8    # "childCount":I
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 610
    return-object v3

    .line 611
    :cond_6
    if-eqz v6, :cond_7

    .line 612
    return-object v6

    .line 614
    :cond_7
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 406
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 407
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 410
    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-le p2, v1, :cond_2

    if-ltz p1, :cond_2

    .line 412
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 414
    move-object v0, v2

    .line 417
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 419
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 421
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 422
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_0

    .line 424
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 425
    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 428
    :cond_3
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 429
    return-object v0
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .line 771
    move v0, p1

    .line 772
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 773
    sub-int/2addr v0, p2

    .line 775
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .line 788
    move v0, p1

    .line 789
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 790
    add-int/2addr v0, p2

    .line 792
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .line 1988
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1989
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    .line 1994
    .local v1, "invertedIndex":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 1995
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    .line 1996
    .local v2, "rowStart":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "rowEnd":I
    goto :goto_0

    .line 1998
    .end local v2    # "rowStart":I
    .end local v5    # "rowEnd":I
    :cond_0
    add-int/lit8 v2, v0, -0x1

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v5, v2, v5

    .line 1999
    .restart local v5    # "rowEnd":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, v5, v2

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2002
    .restart local v2    # "rowStart":I
    :goto_0
    const/16 v6, 0x11

    if-eq p2, v6, :cond_9

    const/16 v6, 0x21

    if-eq p2, v6, :cond_7

    const/16 v6, 0x42

    if-eq p2, v6, :cond_5

    const/16 v6, 0x82

    if-eq p2, v6, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 2023
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2018
    :pswitch_0
    if-ne p1, v2, :cond_1

    if-nez v2, :cond_1

    move v3, v4

    nop

    :cond_1
    return v3

    .line 2021
    :pswitch_1
    if-ne p1, v5, :cond_2

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_2

    move v3, v4

    nop

    :cond_2
    return v3

    .line 2009
    :cond_3
    if-nez v2, :cond_4

    move v3, v4

    nop

    :cond_4
    return v3

    .line 2006
    :cond_5
    if-ne p1, v2, :cond_6

    move v3, v4

    nop

    :cond_6
    return v3

    .line 2015
    :cond_7
    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_8

    move v3, v4

    nop

    :cond_8
    return v3

    .line 2012
    :cond_9
    if-ne p1, v5, :cond_a

    move v3, v4

    nop

    :cond_a
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    move-object v9, p0

    move v10, p1

    .line 1431
    iget-boolean v0, v9, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1433
    iget-object v0, v9, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v11

    .line 1434
    .local v11, "activeView":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 1437
    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, v11

    move v2, v10

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1438
    return-object v11

    .line 1444
    .end local v11    # "activeView":Landroid/view/View;
    :cond_0
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v9, v10, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v11

    .line 1447
    .local v11, "child":Landroid/view/View;
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, v9

    move-object v1, v11

    move v2, v10

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1449
    return-object v11
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 23
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    move-object/from16 v7, p0

    .line 329
    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    .line 330
    .local v8, "columnWidth":I
    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 332
    .local v9, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v10

    .line 337
    .local v10, "isLayoutRtl":Z
    const/4 v1, 0x3

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v2

    iget-object v3, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    .line 339
    iget v3, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v3, v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    sub-int/2addr v2, v1

    .local v2, "nextLeft":I
    goto :goto_2

    .line 341
    .end local v2    # "nextLeft":I
    :cond_1
    iget-object v2, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 342
    iget v3, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v3, v1, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    add-int/2addr v2, v1

    .restart local v2    # "nextLeft":I
    :goto_2
    move v1, v2

    .line 345
    .end local v2    # "nextLeft":I
    .local v1, "nextLeft":I
    iget-boolean v2, v7, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v13, 0x1

    if-nez v2, :cond_3

    .line 346
    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v2, p1, v2

    iget v3, v7, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 357
    .local v2, "last":I
    move/from16 v14, p1

    .end local v2    # "last":I
    .end local p1    # "startPos":I
    .local v14, "startPos":I
    .local v15, "last":I
    :goto_3
    move v15, v2

    goto :goto_5

    .line 348
    .end local v14    # "startPos":I
    .end local v15    # "last":I
    .restart local p1    # "startPos":I
    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 349
    .restart local v2    # "last":I
    iget v3, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/2addr v3, v13

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 351
    .end local p1    # "startPos":I
    .local v0, "startPos":I
    sub-int v3, v2, v0

    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v3, v4, :cond_5

    .line 352
    iget v3, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, v2, v0

    sub-int/2addr v3, v4

    add-int v4, v8, v9

    mul-int/2addr v3, v4

    .line 353
    .local v3, "deltaLeft":I
    if-eqz v10, :cond_4

    const/4 v4, -0x1

    goto :goto_4

    :cond_4
    move v4, v13

    :goto_4
    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 357
    .end local v0    # "startPos":I
    .end local v2    # "last":I
    .end local v3    # "deltaLeft":I
    .restart local v14    # "startPos":I
    .restart local v15    # "last":I
    :cond_5
    move v14, v0

    goto :goto_3

    :goto_5
    const/4 v0, 0x0

    .line 359
    .local v0, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v16

    .line 360
    .local v16, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v17

    .line 361
    .local v17, "inClick":Z
    iget v5, v7, Landroid/widget/GridView;->mSelectedPosition:I

    .line 363
    .local v5, "selectedPosition":I
    const/4 v2, 0x0

    .line 364
    .local v2, "child":Landroid/view/View;
    if-eqz v10, :cond_6

    const/4 v3, -0x1

    goto :goto_6

    :cond_6
    move v3, v13

    :goto_6
    move/from16 v18, v3

    .line 365
    .local v18, "nextChildDir":I
    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object v4, v2

    move v0, v14

    .end local v1    # "nextLeft":I
    .end local v2    # "child":Landroid/view/View;
    .local v0, "pos":I
    .local v4, "child":Landroid/view/View;
    .local v19, "selectedView":Landroid/view/View;
    .local v20, "nextLeft":I
    :goto_7
    move v3, v0

    .end local v0    # "pos":I
    .local v3, "pos":I
    if-ge v3, v15, :cond_c

    .line 367
    if-ne v3, v5, :cond_7

    move v0, v13

    goto :goto_8

    :cond_7
    move v0, v11

    :goto_8
    move/from16 v21, v0

    .line 370
    .local v21, "selected":Z
    if-eqz p3, :cond_8

    const/4 v6, -0x1

    goto :goto_9

    :cond_8
    sub-int v0, v3, v14

    move v6, v0

    .line 371
    .local v6, "where":I
    :goto_9
    move-object v0, v7

    move v1, v3

    move/from16 v2, p2

    move v11, v3

    move/from16 v3, p3

    .end local v3    # "pos":I
    .local v11, "pos":I
    move-object v12, v4

    move/from16 v4, v20

    .end local v4    # "child":Landroid/view/View;
    .local v12, "child":Landroid/view/View;
    move/from16 v22, v5

    move/from16 v5, v21

    .end local v5    # "selectedPosition":I
    .local v22, "selectedPosition":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v4

    .line 373
    .end local v12    # "child":Landroid/view/View;
    .restart local v4    # "child":Landroid/view/View;
    mul-int v0, v18, v8

    add-int v20, v20, v0

    .line 374
    add-int/lit8 v0, v15, -0x1

    if-ge v11, v0, :cond_9

    .line 375
    mul-int v0, v18, v9

    add-int v20, v20, v0

    .line 378
    :cond_9
    if-eqz v21, :cond_b

    if-nez v16, :cond_a

    if-eqz v17, :cond_b

    .line 379
    :cond_a
    move-object v0, v4

    .line 365
    .end local v6    # "where":I
    .end local v19    # "selectedView":Landroid/view/View;
    .end local v21    # "selected":Z
    .local v0, "selectedView":Landroid/view/View;
    move-object/from16 v19, v0

    .end local v0    # "selectedView":Landroid/view/View;
    .restart local v19    # "selectedView":Landroid/view/View;
    :cond_b
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "pos":I
    .local v0, "pos":I
    move/from16 v5, v22

    const/4 v11, 0x0

    goto :goto_7

    .line 383
    .end local v0    # "pos":I
    .end local v22    # "selectedPosition":I
    .restart local v5    # "selectedPosition":I
    :cond_c
    move-object v12, v4

    move/from16 v22, v5

    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "selectedPosition":I
    .restart local v12    # "child":Landroid/view/View;
    .restart local v22    # "selectedPosition":I
    iput-object v12, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 385
    if-eqz v19, :cond_d

    .line 386
    iget-object v0, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 389
    :cond_d
    return-object v19
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 19
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    move-object/from16 v0, p0

    .line 885
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 886
    .local v2, "fadingEdgeLength":I
    iget v3, v0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 887
    .local v3, "selectedPosition":I
    iget v4, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 888
    .local v4, "numColumns":I
    iget v5, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 892
    .local v5, "verticalSpacing":I
    const/4 v6, -0x1

    .line 894
    .local v6, "rowEnd":I
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    .line 895
    sub-int v7, v3, p1

    sub-int v10, v3, p1

    rem-int/2addr v10, v4

    sub-int/2addr v7, v10

    .line 897
    .local v7, "oldRowStart":I
    rem-int v10, v3, v4

    sub-int v10, v3, v10

    .local v10, "rowStart":I
    goto :goto_0

    .line 899
    .end local v7    # "oldRowStart":I
    .end local v10    # "rowStart":I
    :cond_0
    iget v7, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v3

    .line 901
    .local v7, "invertedSelection":I
    iget v10, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v9

    rem-int v11, v7, v4

    sub-int v11, v7, v11

    sub-int v6, v10, v11

    .line 902
    sub-int v10, v6, v4

    add-int/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 904
    .restart local v10    # "rowStart":I
    iget v11, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v11, v9

    sub-int v12, v3, p1

    sub-int/2addr v11, v12

    .line 905
    .end local v7    # "invertedSelection":I
    .local v11, "invertedSelection":I
    iget v7, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v9

    rem-int v12, v11, v4

    sub-int v12, v11, v12

    sub-int/2addr v7, v12

    .line 906
    .local v7, "oldRowStart":I
    sub-int v12, v7, v4

    add-int/2addr v12, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 909
    .end local v11    # "invertedSelection":I
    :goto_0
    sub-int v11, v10, v7

    .line 911
    .local v11, "rowDelta":I
    move/from16 v12, p2

    invoke-direct {v0, v12, v2, v10}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v13

    .line 912
    .local v13, "topSelectionPixel":I
    move/from16 v14, p3

    invoke-direct {v0, v14, v2, v4, v10}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v15

    .line 916
    .local v15, "bottomSelectionPixel":I
    iput v10, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 921
    if-lez v11, :cond_3

    .line 926
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v8, :cond_1

    .line 927
    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move/from16 v16, v8

    :goto_1
    move/from16 v8, v16

    .line 929
    .local v8, "oldBottom":I
    iget-boolean v9, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    add-int v1, v8, v5

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    .line 930
    .end local v2    # "fadingEdgeLength":I
    .local v1, "sel":Landroid/view/View;
    .local v17, "fadingEdgeLength":I
    iget-object v2, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 932
    .local v2, "referenceView":Landroid/view/View;
    invoke-direct {v0, v2, v13, v15}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 933
    .end local v8    # "oldBottom":I
    nop

    .line 952
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto :goto_7

    .line 933
    .end local v1    # "sel":Landroid/view/View;
    .end local v17    # "fadingEdgeLength":I
    .local v2, "fadingEdgeLength":I
    :cond_3
    move/from16 v17, v2

    .end local v2    # "fadingEdgeLength":I
    .restart local v17    # "fadingEdgeLength":I
    if-gez v11, :cond_6

    .line 937
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_4

    .line 938
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_3
    move v1, v8

    .line 940
    .local v1, "oldTop":I
    iget-boolean v2, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_4

    :cond_5
    move v2, v10

    :goto_4
    sub-int v8, v1, v5

    const/4 v9, 0x0

    invoke-direct {v0, v2, v8, v9}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 941
    .local v2, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 943
    .local v8, "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v13, v15}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 944
    .end local v1    # "oldTop":I
    nop

    .line 952
    move-object v1, v8

    goto :goto_7

    .line 948
    .end local v2    # "sel":Landroid/view/View;
    .end local v8    # "referenceView":Landroid/view/View;
    :cond_6
    const/4 v9, 0x0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_7

    .line 949
    move v8, v9

    goto :goto_5

    :cond_7
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_5
    move v1, v8

    .line 951
    .restart local v1    # "oldTop":I
    iget-boolean v2, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_8

    move v2, v6

    goto :goto_6

    :cond_8
    move v2, v10

    :goto_6
    const/4 v8, 0x1

    invoke-direct {v0, v2, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 952
    .restart local v2    # "sel":Landroid/view/View;
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 955
    .local v1, "referenceView":Landroid/view/View;
    :goto_7
    iget-boolean v8, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_9

    .line 956
    sub-int v8, v10, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 957
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 958
    add-int v8, v10, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_8

    .line 960
    :cond_9
    add-int v8, v6, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 961
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 962
    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 965
    :goto_8
    return-object v2
.end method

.method private pinToBottom(I)V
    .locals 3
    .param p1, "childrenBottom"    # I

    .line 515
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 516
    .local v0, "count":I
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    .line 517
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 518
    .local v1, "bottom":I
    sub-int v2, p1, v1

    .line 519
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 520
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 523
    .end local v1    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 2
    .param p1, "childrenTop"    # I

    .line 505
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 507
    .local v0, "top":I
    sub-int v1, p1, v0

    .line 508
    .local v1, "offset":I
    if-gez v1, :cond_0

    .line 509
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 512
    .end local v0    # "top":I
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z
    .param p8, "where"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1472
    move/from16 v5, p8

    const-string/jumbo v6, "setupGridItem"

    const-wide/16 v7, 0x8

    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1474
    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 1475
    .local v10, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v11

    if-eq v10, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 1476
    .local v11, "updateChildSelected":Z
    :goto_1
    iget v12, v0, Landroid/widget/GridView;->mTouchMode:I

    .line 1477
    .local v12, "mode":I
    const/4 v13, 0x3

    if-lez v12, :cond_2

    if-ge v12, v13, :cond_2

    iget v14, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v14, v2, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 1479
    .local v14, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eq v14, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 1480
    .local v7, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_5

    if-nez v11, :cond_5

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v8, 0x1

    .line 1485
    .local v8, "needToMeasure":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1486
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_6

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1489
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .local v13, "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_6
    move-object v13, v15

    iget-object v6, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    iput v6, v13, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1490
    iget-object v6, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    iput-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1495
    if-eqz v11, :cond_7

    .line 1496
    invoke-virtual {v1, v10}, Landroid/view/View;->setSelected(Z)V

    .line 1497
    if-eqz v10, :cond_7

    .line 1498
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1502
    :cond_7
    if-eqz v7, :cond_8

    .line 1503
    invoke-virtual {v1, v14}, Landroid/view/View;->setPressed(Z)V

    .line 1506
    :cond_8
    iget v6, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_a

    .line 1507
    instance-of v6, v1, Landroid/widget/Checkable;

    if-eqz v6, :cond_9

    .line 1508
    move-object v6, v1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v9, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    invoke-interface {v6, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    .line 1509
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0xb

    if-lt v6, v9, :cond_a

    .line 1511
    iget-object v6, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1515
    :cond_a
    :goto_6
    if-eqz p7, :cond_d

    iget-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v6, :cond_d

    .line 1516
    invoke-virtual {v0, v1, v5, v13}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1520
    if-eqz p7, :cond_c

    .line 1521
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    iget v6, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v6, v2, :cond_b

    goto :goto_8

    .line 1530
    :cond_b
    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    .line 1523
    :cond_c
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_7

    .line 1526
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1527
    const/4 v9, 0x1

    invoke-virtual {v0, v1, v5, v13, v9}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1530
    :goto_9
    if-eqz v8, :cond_e

    .line 1531
    nop

    .line 1532
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v2, v13, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1531
    invoke-static {v9, v6, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1534
    .local v2, "childHeightSpec":I
    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    .line 1535
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v9, v13, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1534
    const/4 v4, 0x0

    invoke-static {v6, v4, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1536
    .local v4, "childWidthSpec":I
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 1537
    .end local v2    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    goto :goto_a

    .line 1538
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1541
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1542
    .local v2, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1545
    .local v4, "h":I
    if-eqz p4, :cond_f

    move/from16 v15, p3

    goto :goto_b

    :cond_f
    sub-int v15, p3, v4

    :goto_b
    move/from16 v17, v15

    .line 1547
    .local v17, "childTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v5

    .line 1548
    .local v5, "layoutDirection":I
    iget v6, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v6, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1549
    .local v6, "absoluteGravity":I
    move/from16 v18, v5

    and-int/lit8 v5, v6, 0x7

    .line 1549
    .end local v5    # "layoutDirection":I
    .local v18, "layoutDirection":I
    move/from16 v19, v6

    const/4 v6, 0x1

    .line 1549
    .end local v6    # "absoluteGravity":I
    .local v19, "absoluteGravity":I
    if-eq v5, v6, :cond_12

    const/4 v6, 0x3

    if-eq v5, v6, :cond_11

    const/4 v6, 0x5

    if-eq v5, v6, :cond_10

    .line 1560
    move/from16 v5, p5

    goto :goto_c

    .line 1557
    :cond_10
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v5, p5, v5

    sub-int/2addr v5, v2

    .line 1558
    .local v5, "childLeft":I
    goto :goto_c

    .line 1551
    .end local v5    # "childLeft":I
    :cond_11
    move/from16 v5, p5

    .line 1552
    .restart local v5    # "childLeft":I
    goto :goto_c

    .line 1554
    .end local v5    # "childLeft":I
    :cond_12
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int v5, p5, v5

    .line 1555
    .restart local v5    # "childLeft":I
    nop

    .line 1560
    :goto_c
    nop

    .line 1564
    if-eqz v8, :cond_13

    .line 1565
    add-int v6, v5, v2

    .line 1566
    .local v6, "childRight":I
    move/from16 v20, v2

    move/from16 v2, v17

    add-int v3, v2, v4

    .line 1567
    .end local v17    # "childTop":I
    .local v2, "childTop":I
    .local v3, "childBottom":I
    .local v20, "w":I
    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 1568
    .end local v3    # "childBottom":I
    .end local v6    # "childRight":I
    goto :goto_d

    .line 1569
    .end local v20    # "w":I
    .local v2, "w":I
    .restart local v17    # "childTop":I
    :cond_13
    move/from16 v20, v2

    move/from16 v2, v17

    .line 1569
    .end local v17    # "childTop":I
    .local v2, "childTop":I
    .restart local v20    # "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1570
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1573
    :goto_d
    iget-boolean v3, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1574
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1577
    :cond_14
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1578
    return-void
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .line 1824
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1825
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1830
    .local v1, "numColumns":I
    const/4 v2, 0x0

    .line 1832
    .local v2, "moved":Z
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1833
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 1834
    .local v3, "startOfRowPos":I
    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "endOfRowPos":I
    goto :goto_0

    .line 1836
    .end local v3    # "startOfRowPos":I
    .end local v5    # "endOfRowPos":I
    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 1837
    .local v3, "invertedSelection":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    div-int v6, v3, v1

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    .line 1838
    .restart local v5    # "endOfRowPos":I
    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1841
    .local v3, "startOfRowPos":I
    :goto_0
    const/16 v6, 0x21

    const/4 v7, 0x6

    if-eq p1, v6, :cond_2

    const/16 v6, 0x82

    if-eq p1, v6, :cond_1

    goto :goto_1

    .line 1850
    :cond_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 1851
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1852
    add-int v6, v0, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1853
    const/4 v2, 0x1

    goto :goto_1

    .line 1843
    :cond_2
    if-lez v3, :cond_3

    .line 1844
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1845
    sub-int v6, v0, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1846
    const/4 v2, 0x1

    .line 1858
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v6

    .line 1859
    .local v6, "isLayoutRtl":Z
    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v3, :cond_6

    if-ne p1, v9, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-ne p1, v8, :cond_6

    if-eqz v6, :cond_6

    .line 1861
    :cond_5
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1862
    add-int/lit8 v7, v0, -0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1863
    const/4 v2, 0x1

    goto :goto_2

    .line 1864
    :cond_6
    if-ge v0, v5, :cond_9

    if-ne p1, v9, :cond_7

    if-nez v6, :cond_8

    :cond_7
    if-ne p1, v8, :cond_9

    if-nez v6, :cond_9

    .line 1866
    :cond_8
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1867
    add-int/lit8 v4, v0, 0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1868
    const/4 v2, 0x1

    .line 1871
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 1872
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1873
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1876
    :cond_a
    if-eqz v2, :cond_b

    .line 1877
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1880
    :cond_b
    return v2
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 1135
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1138
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1139
    new-instance v1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 1140
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1143
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1144
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1145
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1146
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p4, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1148
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1149
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1150
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    .line 1152
    :cond_1
    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    .line 1154
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1155
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1157
    .end local v1    # "invertedIndex":I
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 9

    .line 2285
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2286
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2287
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2288
    .local v2, "numColumns":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    .line 2290
    .local v3, "rowCount":I
    mul-int/lit8 v4, v3, 0x64

    .line 2292
    .local v4, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2293
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2294
    .local v5, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2295
    .local v6, "height":I
    if-lez v6, :cond_0

    .line 2296
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 2299
    :cond_0
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2300
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2301
    .local v7, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2302
    if-lez v6, :cond_1

    .line 2303
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v6

    sub-int/2addr v4, v8

    .line 2306
    :cond_1
    return v4

    .line 2308
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "numColumns":I
    .end local v3    # "rowCount":I
    .end local v4    # "extent":I
    .end local v5    # "top":I
    .end local v6    # "height":I
    .end local v7    # "bottom":I
    :cond_2
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .line 2313
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2314
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2315
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2316
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2317
    .local v3, "height":I
    if-lez v3, :cond_1

    .line 2318
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2319
    .local v4, "numColumns":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    .line 2323
    .local v5, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int v6, v5, v4

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v7

    goto :goto_0

    .line 2324
    :cond_0
    move v6, v1

    .line 2325
    .local v6, "oddItemsOnFirstRow":I
    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    .line 2326
    .local v7, "whichRow":I
    mul-int/lit8 v8, v7, 0x64

    mul-int/lit8 v9, v2, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    .line 2327
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 2326
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2330
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "top":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "oddItemsOnFirstRow":I
    .end local v7    # "whichRow":I
    :cond_1
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .line 2336
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2337
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 2338
    .local v1, "rowCount":I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2339
    .local v2, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2341
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2343
    :cond_0
    return v2
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2426
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2427
    const-string/jumbo v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2428
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .param p1, "down"    # Z

    .line 256
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 257
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 259
    .local v1, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 261
    .local v2, "count":I
    const/16 v3, 0x22

    if-eqz p1, :cond_3

    .line 262
    const/4 v4, 0x0

    .line 263
    .local v4, "paddingTop":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v4

    .line 266
    :cond_0
    if-lez v2, :cond_1

    .line 267
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 268
    .local v3, "startOffset":I
    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v5, v2

    .line 269
    .local v5, "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v6, :cond_2

    .line 270
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 272
    :cond_2
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 273
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 274
    .end local v3    # "startOffset":I
    .end local v4    # "paddingTop":I
    .end local v5    # "position":I
    goto :goto_3

    .line 275
    :cond_3
    const/4 v4, 0x0

    .line 276
    .local v4, "paddingBottom":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_4

    .line 277
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v4

    .line 279
    :cond_4
    if-lez v2, :cond_5

    .line 280
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    .line 281
    .restart local v3    # "startOffset":I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 282
    .restart local v5    # "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_6

    .line 283
    sub-int/2addr v5, v0

    goto :goto_2

    .line 285
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 287
    :goto_2
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 288
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 290
    .end local v3    # "startOffset":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "position":I
    :goto_3
    return-void
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .line 527
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 528
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 530
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 531
    .local v1, "numColumns":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 533
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 534
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 532
    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    .line 538
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 539
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 540
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 538
    :cond_2
    sub-int/2addr v2, v1

    goto :goto_1

    .line 545
    .end local v1    # "numColumns":I
    .end local v2    # "i":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .line 1795
    const/4 v0, 0x0

    .line 1796
    .local v0, "moved":Z
    const/4 v1, 0x2

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 1797
    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1798
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1799
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1800
    const/4 v0, 0x1

    goto :goto_0

    .line 1801
    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 1802
    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1803
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1804
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1805
    const/4 v0, 0x1

    .line 1808
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1809
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1812
    :cond_2
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2348
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .line 2188
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 2052
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 2087
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2232
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .line 2205
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .line 2107
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .line 2158
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 2138
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 28

    .line 1161
    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1162
    .local v2, "blockLayoutRequests":Z
    const/4 v0, 0x1

    if-nez v2, :cond_0

    .line 1163
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1167
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1171
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v4, :cond_2

    .line 1172
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    if-nez v2, :cond_1

    .line 1408
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1174
    :cond_1
    return-void

    .line 1407
    :catchall_0
    move-exception v0

    move/from16 v22, v2

    goto/16 :goto_14

    .line 1177
    :cond_2
    :try_start_2
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1178
    .local v4, "childrenTop":I
    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 1180
    .local v5, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1182
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 1185
    .local v7, "delta":I
    const/4 v8, 0x0

    .line 1186
    .local v8, "oldSel":Landroid/view/View;
    const/4 v9, 0x0

    .line 1187
    .local v9, "oldFirst":Landroid/view/View;
    const/4 v10, 0x0

    .line 1190
    .local v10, "newSel":Landroid/view/View;
    iget v11, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_0

    .line 1209
    iget v11, v1, Landroid/widget/GridView;->mSelectedPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 1203
    :pswitch_0
    :try_start_3
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v11, :cond_4

    .line 1204
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int v7, v11, v12

    goto :goto_1

    .line 1192
    :pswitch_1
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v11, v12

    .line 1193
    .local v11, "index":I
    if-ltz v11, :cond_4

    if-ge v11, v6, :cond_4

    .line 1194
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v12

    goto :goto_1

    .line 1201
    .end local v11    # "index":I
    :pswitch_2
    goto :goto_1

    .line 1209
    :goto_0
    :try_start_4
    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    sub-int/2addr v11, v12

    .line 1210
    .restart local v11    # "index":I
    if-ltz v11, :cond_3

    if-ge v11, v6, :cond_3

    .line 1211
    :try_start_5
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v8, v12

    .line 1215
    :cond_3
    :try_start_6
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 1218
    .end local v11    # "index":I
    :cond_4
    :goto_1
    iget-boolean v11, v1, Landroid/widget/GridView;->mDataChanged:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1219
    .local v11, "dataChanged":Z
    if-eqz v11, :cond_5

    .line 1220
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1225
    :cond_5
    :try_start_8
    iget v12, v1, Landroid/widget/GridView;->mItemCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v12, :cond_7

    .line 1226
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1407
    if-nez v2, :cond_6

    .line 1408
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1228
    :cond_6
    return-void

    .line 1231
    :cond_7
    :try_start_a
    iget v12, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1233
    const/4 v12, 0x0

    .line 1234
    .local v12, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v13, 0x0

    .line 1235
    .local v13, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v14, -0x1

    .line 1240
    .local v14, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1241
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_a

    .line 1242
    :try_start_b
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1243
    .local v17, "focusHost":Landroid/view/View;
    move-object/from16 v3, v17

    if-eqz v3, :cond_a

    .line 1244
    .end local v17    # "focusHost":Landroid/view/View;
    .local v3, "focusHost":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v18, v16

    .line 1245
    .local v18, "focusChild":Landroid/view/View;
    move-object/from16 v0, v18

    if-eqz v0, :cond_a

    .line 1246
    .end local v18    # "focusChild":Landroid/view/View;
    .local v0, "focusChild":Landroid/view/View;
    if-eqz v11, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v16

    if-nez v16, :cond_9

    move-object/from16 v19, v12

    iget-boolean v12, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v19, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v12, :cond_8

    goto :goto_2

    .line 1256
    :cond_8
    move-object/from16 v12, v19

    goto :goto_3

    .line 1250
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    move-object v12, v3

    .line 1251
    .end local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v12, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    nop

    .line 1252
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 1256
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v13, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v27, v13

    move-object v13, v12

    move-object/from16 v12, v27

    .local v12, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v13, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v14, v16

    .end local v0    # "focusChild":Landroid/view/View;
    .end local v3    # "focusHost":Landroid/view/View;
    goto :goto_4

    .line 1263
    :cond_a
    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v12, v19

    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_4
    :try_start_c
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1264
    .local v0, "firstPosition":I
    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1266
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v11, :cond_c

    .line 1267
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5
    move/from16 v20, v16

    .end local v16    # "i":I
    .local v20, "i":I
    move/from16 v21, v11

    move/from16 v11, v20

    if-ge v11, v6, :cond_b

    .line 1268
    .end local v20    # "i":I
    .local v11, "i":I
    .local v21, "dataChanged":Z
    move/from16 v22, v2

    :try_start_d
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "blockLayoutRequests":Z
    .local v22, "blockLayoutRequests":Z
    move/from16 v23, v14

    add-int v14, v0, v11

    .end local v14    # "accessibilityFocusPosition":I
    .local v23, "accessibilityFocusPosition":I
    invoke-virtual {v3, v2, v14}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1267
    add-int/lit8 v16, v11, 0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    move/from16 v11, v21

    move/from16 v2, v22

    move/from16 v14, v23

    goto :goto_5

    .line 1275
    .end local v16    # "i":I
    .end local v22    # "blockLayoutRequests":Z
    .end local v23    # "accessibilityFocusPosition":I
    .restart local v2    # "blockLayoutRequests":Z
    .restart local v14    # "accessibilityFocusPosition":I
    :cond_b
    move/from16 v22, v2

    move/from16 v23, v14

    .end local v2    # "blockLayoutRequests":Z
    .end local v14    # "accessibilityFocusPosition":I
    .restart local v22    # "blockLayoutRequests":Z
    .restart local v23    # "accessibilityFocusPosition":I
    goto :goto_6

    .line 1271
    .end local v21    # "dataChanged":Z
    .end local v22    # "blockLayoutRequests":Z
    .end local v23    # "accessibilityFocusPosition":I
    .restart local v2    # "blockLayoutRequests":Z
    .local v11, "dataChanged":Z
    .restart local v14    # "accessibilityFocusPosition":I
    :cond_c
    move/from16 v22, v2

    move/from16 v21, v11

    move/from16 v23, v14

    .end local v2    # "blockLayoutRequests":Z
    .end local v11    # "dataChanged":Z
    .end local v14    # "accessibilityFocusPosition":I
    .restart local v21    # "dataChanged":Z
    .restart local v22    # "blockLayoutRequests":Z
    .restart local v23    # "accessibilityFocusPosition":I
    invoke-virtual {v3, v6, v0}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1275
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1276
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1278
    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v11, -0x1

    packed-switch v2, :pswitch_data_1

    .line 1306
    if-nez v6, :cond_13

    .line 1307
    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_8

    .line 1303
    :pswitch_3
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    .line 1304
    .local v2, "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1299
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_4
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v14, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1300
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1296
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_5
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v14, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1297
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1292
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_6
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1293
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1294
    goto/16 :goto_f

    .line 1280
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_7
    if-eqz v10, :cond_d

    .line 1281
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    :goto_7
    goto/16 :goto_f

    .line 1283
    .end local v2    # "sel":Landroid/view/View;
    :cond_d
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    .line 1285
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1287
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_8
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1288
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1289
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1290
    goto/16 :goto_f

    .line 1307
    .end local v2    # "sel":Landroid/view/View;
    :goto_8
    if-nez v2, :cond_10

    .line 1308
    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_9

    .line 1309
    :cond_e
    nop

    .line 1308
    const/4 v2, 0x0

    goto :goto_a

    .line 1309
    :cond_f
    :goto_9
    nop

    .line 1308
    move v2, v11

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1310
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    .line 1312
    :cond_10
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    .line 1313
    .local v2, "last":I
    iget-object v14, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_b

    :cond_11
    move v14, v2

    goto :goto_c

    .line 1314
    :cond_12
    :goto_b
    nop

    .line 1313
    move v14, v11

    :goto_c
    invoke-virtual {v1, v14}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1315
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v14

    .end local v2    # "last":I
    move-object v2, v14

    .line 1316
    .local v2, "sel":Landroid/view/View;
    goto :goto_f

    .line 1318
    .end local v2    # "sel":Landroid/view/View;
    :cond_13
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_15

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v14, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v14, :cond_15

    .line 1319
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v8, :cond_14

    .line 1320
    nop

    .line 1319
    move v14, v4

    goto :goto_d

    .line 1320
    :cond_14
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    .line 1319
    :goto_d
    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    .line 1321
    :cond_15
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v14, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v14, :cond_17

    .line 1322
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v9, :cond_16

    .line 1323
    nop

    .line 1322
    move v14, v4

    goto :goto_e

    .line 1323
    :cond_16
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 1322
    :goto_e
    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    .line 1325
    :cond_17
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v14

    move-object v2, v14

    .line 1332
    .restart local v2    # "sel":Landroid/view/View;
    :goto_f
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1334
    if-eqz v2, :cond_18

    .line 1335
    invoke-virtual {v1, v11, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1336
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1362
    move/from16 v24, v0

    goto :goto_11

    .line 1338
    :cond_18
    iget v14, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v14, :cond_19

    iget v14, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v11, 0x3

    if-ge v14, v11, :cond_19

    const/4 v11, 0x1

    goto :goto_10

    :cond_19
    const/4 v11, 0x0

    .line 1340
    .local v11, "inTouchMode":Z
    :goto_10
    if-eqz v11, :cond_1b

    .line 1342
    iget v14, v1, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v24, v0

    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .end local v0    # "firstPosition":I
    .local v24, "firstPosition":I
    sub-int/2addr v14, v0

    invoke-virtual {v1, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1343
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1a

    .line 1344
    iget v14, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v14, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1346
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    goto :goto_11

    .end local v24    # "firstPosition":I
    .local v0, "firstPosition":I
    :cond_1b
    move/from16 v24, v0

    .end local v0    # "firstPosition":I
    .restart local v24    # "firstPosition":I
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_1d

    .line 1350
    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v14, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v14

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1351
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 1352
    iget v14, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v14, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1354
    .end local v0    # "child":Landroid/view/View;
    :cond_1c
    goto :goto_11

    .line 1356
    :cond_1d
    const/4 v14, 0x0

    iput v14, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1357
    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1362
    .end local v11    # "inTouchMode":Z
    :goto_11
    if-eqz v15, :cond_21

    .line 1363
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v11

    .line 1364
    .local v11, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v11, :cond_21

    .line 1365
    if-eqz v13, :cond_1f

    .line 1366
    invoke-virtual {v13}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1367
    nop

    .line 1368
    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1369
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_1e

    if-eqz v14, :cond_1e

    .line 1370
    nop

    .line 1371
    :try_start_e
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    .line 1370
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 1372
    .local v0, "virtualViewId":I
    const/16 v1, 0x40

    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1374
    .end local v0    # "virtualViewId":I
    .end local v2    # "sel":Landroid/view/View;
    .local v25, "sel":Landroid/view/View;
    goto :goto_12

    .line 1375
    .end local v25    # "sel":Landroid/view/View;
    .restart local v2    # "sel":Landroid/view/View;
    :cond_1e
    move-object/from16 v25, v2

    .end local v2    # "sel":Landroid/view/View;
    .restart local v25    # "sel":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1377
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_12
    nop

    .line 1390
    move-object/from16 v26, v3

    move/from16 v14, v23

    move-object/from16 v1, p0

    goto :goto_13

    .line 1407
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v4    # "childrenTop":I
    .end local v5    # "childrenBottom":I
    .end local v6    # "childCount":I
    .end local v7    # "delta":I
    .end local v8    # "oldSel":Landroid/view/View;
    .end local v9    # "oldFirst":Landroid/view/View;
    .end local v10    # "newSel":Landroid/view/View;
    .end local v11    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v15    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v21    # "dataChanged":Z
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "firstPosition":I
    .end local v25    # "sel":Landroid/view/View;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_14

    .line 1377
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "childrenTop":I
    .restart local v5    # "childrenBottom":I
    .restart local v6    # "childCount":I
    .restart local v7    # "delta":I
    .restart local v8    # "oldSel":Landroid/view/View;
    .restart local v9    # "oldFirst":Landroid/view/View;
    .restart local v10    # "newSel":Landroid/view/View;
    .restart local v11    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v15    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local v21    # "dataChanged":Z
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "firstPosition":I
    :cond_1f
    move-object/from16 v25, v2

    .end local v2    # "sel":Landroid/view/View;
    .restart local v25    # "sel":Landroid/view/View;
    move/from16 v14, v23

    const/4 v0, -0x1

    if-eq v14, v0, :cond_20

    .line 1379
    .end local v23    # "accessibilityFocusPosition":I
    .local v14, "accessibilityFocusPosition":I
    move-object/from16 v1, p0

    :try_start_f
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v0, v14, v0

    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 1379
    move-object/from16 v26, v3

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1382
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v0, "position":I
    .local v26, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1383
    .local v2, "restoreView":Landroid/view/View;
    if-eqz v2, :cond_22

    .line 1384
    invoke-virtual {v2}, Landroid/view/View;->requestAccessibilityFocus()Z

    .end local v0    # "position":I
    .end local v2    # "restoreView":Landroid/view/View;
    .end local v11    # "newAccessibilityFocusedView":Landroid/view/View;
    goto :goto_13

    .line 1390
    .end local v26    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_20
    move-object/from16 v26, v3

    move-object/from16 v1, p0

    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v26    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    goto :goto_13

    .end local v14    # "accessibilityFocusPosition":I
    .end local v25    # "sel":Landroid/view/View;
    .end local v26    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v2, "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v23    # "accessibilityFocusPosition":I
    :cond_21
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v14, v23

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v23    # "accessibilityFocusPosition":I
    .restart local v14    # "accessibilityFocusPosition":I
    .restart local v25    # "sel":Landroid/view/View;
    .restart local v26    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_22
    :goto_13
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1391
    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1392
    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 1393
    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1394
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1396
    :cond_23
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1397
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1399
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1401
    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_24

    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1405
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1407
    .end local v4    # "childrenTop":I
    .end local v5    # "childrenBottom":I
    .end local v6    # "childCount":I
    .end local v7    # "delta":I
    .end local v8    # "oldSel":Landroid/view/View;
    .end local v9    # "oldFirst":Landroid/view/View;
    .end local v10    # "newSel":Landroid/view/View;
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v15    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v21    # "dataChanged":Z
    .end local v24    # "firstPosition":I
    .end local v25    # "sel":Landroid/view/View;
    .end local v26    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-nez v22, :cond_25

    .line 1408
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1411
    :cond_25
    return-void

    .line 1407
    :catchall_2
    move-exception v0

    goto :goto_14

    .end local v22    # "blockLayoutRequests":Z
    .local v2, "blockLayoutRequests":Z
    :catchall_3
    move-exception v0

    move/from16 v22, v2

    .end local v2    # "blockLayoutRequests":Z
    .restart local v22    # "blockLayoutRequests":Z
    :goto_14
    if-nez v22, :cond_26

    .line 1408
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_26
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 240
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 241
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    if-ltz p1, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    return p1

    .line 246
    :cond_2
    :goto_0
    return v1

    .line 242
    :cond_3
    :goto_1
    return v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1943
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1945
    const/4 v0, -0x1

    .line 1946
    .local v0, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1947
    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1951
    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1952
    .local v1, "otherRect":Landroid/graphics/Rect;
    const v2, 0x7fffffff

    .line 1953
    .local v2, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 1954
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1956
    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1957
    goto :goto_1

    .line 1960
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1961
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1962
    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1963
    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 1965
    .local v6, "distance":I
    if-ge v6, v2, :cond_1

    .line 1966
    move v2, v6

    .line 1967
    move v0, v4

    .line 1954
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "distance":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1972
    .end local v1    # "otherRect":Landroid/graphics/Rect;
    .end local v2    # "minDistance":I
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_2
    if-ltz v0, :cond_3

    .line 1973
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 1975
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1977
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2397
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2399
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 2400
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2401
    .local v1, "columnsCount":I
    div-int v2, v0, v1

    .line 2405
    .local v2, "rowsCount":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_0

    .line 2406
    rem-int v3, p2, v1

    .line 2407
    .local v3, "column":I
    div-int v4, p2, v1

    .line 2412
    .local v4, "row":I
    move v5, v4

    goto :goto_0

    .line 2409
    .end local v3    # "column":I
    .end local v4    # "row":I
    :cond_0
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, p2

    .line 2411
    .local v3, "invertedIndex":I
    add-int/lit8 v4, v1, -0x1

    rem-int v5, v3, v1

    sub-int/2addr v4, v5

    .line 2412
    .local v4, "column":I
    add-int/lit8 v5, v2, -0x1

    div-int v6, v3, v1

    sub-int v3, v5, v6

    .end local v3    # "invertedIndex":I
    move v5, v3

    move v3, v4

    .line 2415
    .end local v4    # "column":I
    .local v3, "column":I
    .local v5, "row":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2416
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_1

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v9, v6

    .line 2417
    .local v9, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v11

    .line 2418
    .local v11, "isSelected":Z
    const/4 v6, 0x1

    const/4 v8, 0x1

    move v7, v3

    move v10, v11

    invoke-static/range {v5 .. v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 2420
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2421
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2354
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2356
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2357
    .local v0, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 2358
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 2359
    .local v2, "selectionMode":I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    .line 2361
    .local v3, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2363
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 2364
    :cond_0
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2366
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1634
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1639
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1644
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 1045
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1047
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1048
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1049
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1050
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1052
    .local v4, "heightSize":I
    if-nez v1, :cond_1

    .line 1053
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v5, :cond_0

    .line 1054
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .end local v3    # "widthSize":I
    .local v5, "widthSize":I
    :goto_0
    goto :goto_1

    .line 1056
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_0
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    goto :goto_0

    .line 1058
    .end local v3    # "widthSize":I
    .restart local v5    # "widthSize":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v3, v5

    .line 1061
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_1
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 1062
    .local v5, "childWidth":I
    invoke-direct {v0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v6

    .line 1064
    .local v6, "didNotInitiallyFit":Z
    const/4 v7, 0x0

    .line 1065
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1067
    .local v8, "childState":I
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_2
    iput v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1068
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1069
    .local v9, "count":I
    const/4 v12, 0x1

    if-lez v9, :cond_4

    .line 1070
    iget-object v13, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v0, v10, v13}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1072
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1073
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_3

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1075
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    :cond_3
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1078
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1079
    iput-boolean v12, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1081
    nop

    .line 1082
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v15

    iget v12, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1081
    invoke-static {v15, v10, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v12

    .line 1084
    .local v12, "childHeightSpec":I
    iget v15, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    .line 1085
    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1084
    invoke-static {v11, v10, v15}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v11

    .line 1086
    .local v11, "childWidthSpec":I
    invoke-virtual {v13, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1088
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1089
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v8, v15}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v8

    .line 1091
    iget-object v15, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v10, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v15, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1092
    iget-object v10, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, -0x1

    invoke-virtual {v10, v13, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1096
    .end local v11    # "childWidthSpec":I
    .end local v12    # "childHeightSpec":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    if-nez v2, :cond_5

    .line 1097
    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    .line 1098
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    .line 1101
    :cond_5
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_9

    .line 1102
    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1104
    .local v11, "ourSize":I
    iget v12, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1105
    .local v12, "numColumns":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v13, v16

    .end local v16    # "i":I
    .local v13, "i":I
    if-ge v13, v9, :cond_8

    .line 1106
    add-int/2addr v11, v7

    .line 1107
    add-int v14, v13, v12

    if-ge v14, v9, :cond_6

    .line 1108
    iget v14, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v11, v14

    .line 1110
    :cond_6
    if-lt v11, v4, :cond_7

    .line 1111
    move v11, v4

    .line 1112
    goto :goto_4

    .line 1105
    :cond_7
    add-int v16, v13, v12

    .end local v13    # "i":I
    .restart local v16    # "i":I
    goto :goto_3

    .line 1115
    .end local v16    # "i":I
    :cond_8
    :goto_4
    move v4, v11

    .line 1118
    .end local v11    # "ourSize":I
    .end local v12    # "numColumns":I
    :cond_9
    if-ne v1, v10, :cond_b

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 1119
    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iget v11, v0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v10, v11

    iget v11, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    .line 1122
    .local v10, "ourSize":I
    if-gt v10, v3, :cond_a

    if-eqz v6, :cond_b

    .line 1123
    :cond_a
    const/high16 v11, 0x1000000

    or-int/2addr v3, v11

    .line 1127
    .end local v10    # "ourSize":I
    :cond_b
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1128
    move/from16 v10, p1

    iput v10, v0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1129
    return-void
.end method

.method pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 1769
    const/4 v0, -0x1

    .line 1771
    .local v0, "nextPage":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    .line 1772
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1773
    :cond_0
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 1774
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1777
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 1778
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1779
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1780
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1781
    return v1

    .line 1784
    :cond_2
    return v2
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2371
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2372
    return v1

    .line 2375
    :cond_0
    const v0, 0x1020037

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2379
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2380
    .local v0, "numColumns":I
    const-string v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2381
    .local v2, "row":I
    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2382
    .local v3, "position":I
    if-ltz v2, :cond_2

    .line 2385
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 2386
    return v1

    .line 2391
    .end local v0    # "numColumns":I
    .end local v2    # "row":I
    .end local v3    # "position":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method sequenceScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 1888
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1889
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1890
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1894
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 1895
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 1896
    .local v3, "startOfRow":I
    add-int v6, v3, v1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "endOfRow":I
    goto :goto_0

    .line 1898
    .end local v3    # "startOfRow":I
    .end local v6    # "endOfRow":I
    :cond_0
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    .line 1899
    .local v3, "invertedSelection":I
    add-int/lit8 v6, v2, -0x1

    div-int v7, v3, v1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    .line 1900
    .restart local v6    # "endOfRow":I
    sub-int v7, v6, v1

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1903
    .local v3, "startOfRow":I
    :goto_0
    const/4 v7, 0x0

    .line 1904
    .local v7, "moved":Z
    const/4 v8, 0x0

    .line 1905
    .local v8, "showScroll":Z
    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1907
    :pswitch_0
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_3

    .line 1909
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1910
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1911
    const/4 v7, 0x1

    .line 1913
    if-ne v0, v6, :cond_1

    move v4, v5

    nop

    :cond_1
    move v8, v4

    goto :goto_1

    .line 1918
    :pswitch_1
    if-lez v0, :cond_3

    .line 1920
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1921
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1922
    const/4 v7, 0x1

    .line 1924
    if-ne v0, v3, :cond_2

    move v4, v5

    nop

    :cond_2
    move v8, v4

    .line 1929
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 1930
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1931
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1934
    :cond_4
    if-eqz v8, :cond_5

    .line 1935
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1938
    :cond_5
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 65
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 195
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 200
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 201
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 204
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 207
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 210
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iput v0, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 211
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 213
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 215
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 216
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 218
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 221
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 222
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_0

    .line 224
    .end local v0    # "position":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 226
    .restart local v0    # "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 227
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 228
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 229
    .end local v0    # "position":I
    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 232
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 235
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 236
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .line 2169
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2170
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2171
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2173
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 2038
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2039
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2040
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2042
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .line 2065
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2066
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2067
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2069
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .line 2216
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2217
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2218
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2220
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 185
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1590
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1591
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 1593
    :cond_0
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    .line 1595
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1596
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1599
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1600
    return-void
.end method

.method setSelectionInt(I)V
    .locals 5
    .param p1, "position"    # I

    .line 1609
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1611
    .local v0, "previousSelectedPosition":I
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1615
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1616
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1618
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 1619
    :cond_1
    iget v1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1620
    .local v1, "next":I
    :goto_0
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    .line 1621
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    goto :goto_1

    :cond_2
    move v2, v0

    .line 1623
    .local v2, "previous":I
    :goto_1
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    .line 1624
    .local v3, "nextRow":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    .line 1626
    .local v4, "previousRow":I
    if-eq v3, v4, :cond_3

    .line 1627
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1630
    :cond_3
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .line 2150
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2151
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2152
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2154
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .line 2122
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2123
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2124
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2126
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 868
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 869
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 858
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 859
    return-void
.end method
