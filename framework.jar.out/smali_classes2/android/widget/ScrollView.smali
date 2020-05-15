.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 177
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 131
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 151
    const/4 v0, 0x2

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 152
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 161
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 162
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 186
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 188
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 196
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 301
    .local v2, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 303
    .end local v2    # "childHeight":I
    :cond_1
    return v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 1797
    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    .line 1815
    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1821
    sub-int v0, p2, p1

    return v0

    .line 1823
    :cond_1
    return p0

    .line 1813
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .line 1194
    if-eqz p1, :cond_1

    .line 1195
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1198
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1201
    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 1648
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1650
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1652
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1654
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1657
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1659
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1661
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 940
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 941
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 950
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 952
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 953
    .local v3, "count":I
    const/4 v4, 0x0

    move v5, v2

    move-object v2, v1

    move v1, v4

    .local v1, "i":I
    .local v2, "focusCandidate":Landroid/view/View;
    .local v5, "foundFullyContainedFocusable":Z
    :goto_0
    if-ge v1, v3, :cond_8

    .line 954
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 955
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 956
    .local v7, "viewTop":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 958
    .local v8, "viewBottom":I
    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    .line 964
    const/4 v9, 0x1

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v4

    .line 967
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v2, :cond_1

    .line 969
    move-object v2, v6

    .line 970
    move v5, v10

    goto :goto_3

    .line 972
    :cond_1
    if-eqz p1, :cond_2

    .line 973
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 975
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v8, v11, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v9, v4

    .line 977
    .local v9, "viewIsCloserToBoundary":Z
    :goto_2
    if-eqz v5, :cond_5

    .line 978
    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    .line 984
    move-object v2, v6

    goto :goto_3

    .line 987
    :cond_5
    if-eqz v10, :cond_6

    .line 989
    move-object v2, v6

    .line 990
    const/4 v5, 0x1

    goto :goto_3

    .line 991
    :cond_6
    if-eqz v9, :cond_7

    .line 996
    move-object v2, v6

    .line 953
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "viewTop":I
    .end local v8    # "viewBottom":I
    .end local v9    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    .end local v1    # "i":I
    :cond_8
    return-object v2
.end method

.method private flingWithNestedDispatch(I)V
    .locals 3
    .param p1, "velocityY"    # I

    .line 1637
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1638
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1639
    .local v0, "canFling":Z
    :goto_1
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1640
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 1641
    if-eqz v0, :cond_3

    .line 1642
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 1645
    :cond_3
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 916
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 917
    .local v2, "child":Landroid/view/View;
    nop

    .line 918
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 917
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 920
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 443
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 444
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 445
    .local v0, "scrollY":I
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 446
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    .line 447
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 448
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 449
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 446
    :cond_0
    return v1

    .line 451
    .end local v0    # "scrollY":I
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 455
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 460
    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    .line 245
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 247
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 249
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 250
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 253
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 255
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 256
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 464
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 466
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .line 1173
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 1605
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1606
    return v0

    .line 1609
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1610
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .line 1181
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1182
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1184
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1185
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1184
    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 774
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 775
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 779
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 780
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 781
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 782
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 783
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 786
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 473
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1086
    const/4 v0, 0x1

    .line 1088
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1089
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1090
    .local v2, "containerTop":I
    add-int v3, v2, v1

    .line 1091
    .local v3, "containerBottom":I
    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1093
    .local v4, "up":Z
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1094
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_1

    .line 1095
    move-object v5, p0

    .line 1098
    :cond_1
    if-lt p2, v2, :cond_2

    if-gt p3, v3, :cond_2

    .line 1099
    const/4 v0, 0x0

    goto :goto_2

    .line 1101
    :cond_2
    if-eqz v4, :cond_3

    sub-int v6, p2, v2

    goto :goto_1

    :cond_3
    sub-int v6, p3, v3

    .line 1102
    .local v6, "delta":I
    :goto_1
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1105
    .end local v6    # "delta":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1107
    :cond_4
    return v0
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1372
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1375
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1377
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1379
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1380
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1382
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 1393
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1394
    .local v0, "delta":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1395
    .local v2, "scroll":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1396
    if-eqz p2, :cond_1

    .line 1397
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1399
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1402
    :cond_2
    :goto_1
    return v2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 260
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 265
    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 269
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 273
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 274
    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 287
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 292
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 278
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .locals 9
    .param p1, "direction"    # I

    .line 1119
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1120
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1122
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1124
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 1126
    .local v2, "maxJump":I
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1127
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1128
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1129
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 1130
    .local v3, "scrollDelta":I
    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1131
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1132
    .end local v3    # "scrollDelta":I
    goto :goto_2

    .line 1134
    :cond_1
    move v3, v2

    .line 1136
    .restart local v3    # "scrollDelta":I
    const/16 v4, 0x21

    const/4 v5, 0x0

    const/16 v6, 0x82

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1137
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    goto :goto_0

    .line 1138
    :cond_2
    if-ne p1, v6, :cond_3

    .line 1139
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1140
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1141
    .local v4, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    .line 1142
    .local v7, "screenBottom":I
    sub-int v8, v4, v7

    if-ge v8, v2, :cond_3

    .line 1143
    sub-int v3, v4, v7

    .line 1147
    .end local v4    # "daBottom":I
    .end local v7    # "screenBottom":I
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 1148
    return v5

    .line 1150
    :cond_4
    if-ne p1, v6, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    neg-int v4, v3

    :goto_1
    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1153
    .end local v3    # "scrollDelta":I
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1154
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1160
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1161
    .local v3, "descendantFocusability":I
    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1162
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1163
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1165
    .end local v3    # "descendantFocusability":I
    :cond_6
    const/4 v3, 0x1

    return v3
.end method

.method public computeScroll()V
    .locals 19

    .line 1313
    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1330
    iget v11, v10, Landroid/widget/ScrollView;->mScrollX:I

    .line 1331
    .local v11, "oldX":I
    iget v12, v10, Landroid/widget/ScrollView;->mScrollY:I

    .line 1332
    .local v12, "oldY":I
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 1333
    .local v13, "x":I
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 1335
    .local v14, "y":I
    if-ne v11, v13, :cond_0

    if-eq v12, v14, :cond_4

    .line 1336
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v15

    .line 1337
    .local v15, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v9

    .line 1338
    .local v9, "overscrollMode":I
    const/4 v0, 0x1

    if-eqz v9, :cond_2

    if-ne v9, v0, :cond_1

    if-lez v15, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    move/from16 v16, v0

    .line 1341
    .local v16, "canOverscroll":Z
    sub-int v1, v13, v11

    sub-int v2, v14, v12

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v10, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/16 v17, 0x0

    move-object v0, v10

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v18, v9

    move/from16 v9, v17

    .end local v9    # "overscrollMode":I
    .local v18, "overscrollMode":I
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1343
    iget v0, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, v10, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v10, v0, v1, v11, v12}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1345
    if-eqz v16, :cond_4

    .line 1346
    if-gez v14, :cond_3

    if-ltz v12, :cond_3

    .line 1347
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1348
    :cond_3
    if-le v14, v15, :cond_4

    if-gt v12, v15, :cond_4

    .line 1349
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1354
    .end local v15    # "range":I
    .end local v16    # "canOverscroll":Z
    .end local v18    # "overscrollMode":I
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1358
    .end local v11    # "oldX":I
    .end local v12    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_5
    goto :goto_2

    .line 1359
    :cond_6
    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_7

    .line 1360
    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1361
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1364
    :cond_7
    :goto_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1414
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1416
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1417
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1418
    .local v2, "screenTop":I
    add-int v3, v2, v0

    .line 1420
    .local v3, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1423
    .local v4, "fadingEdge":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    .line 1424
    add-int/2addr v2, v4

    .line 1428
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1429
    sub-int/2addr v3, v4

    .line 1432
    :cond_2
    const/4 v5, 0x0

    .line 1434
    .local v5, "scrollYDelta":I
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-le v6, v2, :cond_4

    .line 1439
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v0, :cond_3

    .line 1441
    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_0

    .line 1444
    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 1448
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1449
    .local v1, "bottom":I
    sub-int v6, v1, v3

    .line 1450
    .local v6, "distanceToBottom":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1452
    .end local v1    # "bottom":I
    .end local v6    # "distanceToBottom":I
    goto :goto_2

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_6

    .line 1457
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, v0, :cond_5

    .line 1459
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_1

    .line 1462
    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    .line 1466
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1468
    :cond_6
    :goto_2
    return v5
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 1273
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 6

    .line 1253
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1254
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 1255
    .local v1, "contentHeight":I
    if-nez v0, :cond_0

    .line 1256
    return v1

    .line 1259
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1260
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1261
    .local v4, "scrollY":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1262
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_1

    .line 1263
    sub-int/2addr v3, v4

    goto :goto_0

    .line 1264
    :cond_1
    if-le v4, v2, :cond_2

    .line 1265
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 1268
    :cond_2
    :goto_0
    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 389
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1739
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1740
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 1741
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1742
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    .line 1743
    .local v1, "clipToPadding":Z
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1749
    .local v2, "restoreCount":I
    if-eqz v1, :cond_0

    .line 1750
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    .line 1751
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 1752
    .local v5, "height":I
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v6, v6

    .line 1753
    .local v6, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v7, v7

    .local v7, "translateY":F
    goto :goto_0

    .line 1755
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    .line 1756
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    .line 1757
    .restart local v5    # "height":I
    const/4 v6, 0x0

    .line 1758
    .restart local v6    # "translateX":F
    move v7, v3

    .line 1760
    .restart local v7    # "translateY":F
    :goto_0
    const/4 v8, 0x0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1761
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1762
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1763
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1765
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1767
    .end local v2    # "restoreCount":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :cond_2
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1773
    .restart local v2    # "restoreCount":I
    if-eqz v1, :cond_3

    .line 1774
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    .line 1775
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 1776
    .restart local v5    # "height":I
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v6, v6

    .line 1777
    .restart local v6    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v7, v7

    .restart local v7    # "translateY":F
    goto :goto_1

    .line 1779
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    .line 1780
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    .line 1781
    .restart local v5    # "height":I
    const/4 v6, 0x0

    .line 1782
    .restart local v6    # "translateX":F
    move v7, v3

    .line 1784
    .restart local v7    # "translateY":F
    :goto_1
    neg-int v8, v4

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 1785
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    add-float/2addr v9, v7

    .line 1784
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1786
    const/high16 v8, 0x43340000    # 180.0f

    int-to-float v9, v4

    invoke-virtual {p1, v8, v9, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1787
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1788
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1789
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1791
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1794
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "restoreCount":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :cond_5
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1856
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1857
    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1858
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 401
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 403
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_3

    .line 404
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 405
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 407
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 409
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 411
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    .line 409
    :cond_1
    return v2

    .line 413
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_2
    return v2

    .line 416
    :cond_3
    const/4 v0, 0x0

    .line 417
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 428
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 430
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 432
    goto :goto_0

    .line 420
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 421
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 423
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 425
    goto :goto_0

    .line 434
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v4

    nop

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    .line 439
    :cond_8
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .line 1621
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1622
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 1623
    .local v0, "height":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1625
    .local v2, "bottom":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v7, v2, v0

    .line 1626
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    .line 1625
    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1628
    iget-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_0

    .line 1629
    const-string v1, "ScrollView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1632
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1634
    .end local v0    # "height":I
    .end local v2    # "bottom":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .line 1055
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1056
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1058
    .local v2, "height":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1059
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1061
    if-eqz v1, :cond_1

    .line 1062
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1063
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1064
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1065
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1066
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1070
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 877
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .line 221
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 226
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 227
    .local v1, "bottomEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 228
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 229
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 232
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 240
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .line 207
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 212
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 213
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 216
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public isFillViewport()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1284
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1286
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 1287
    .local v2, "verticalPadding":I
    nop

    .line 1288
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1287
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1291
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1292
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 1297
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1299
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1302
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    .line 1304
    .local v2, "usedTotal":I
    nop

    .line 1305
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1304
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1308
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1309
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1538
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1540
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1542
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1544
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1546
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1548
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 793
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .local v0, "axisValue":F
    :goto_0
    goto :goto_1

    .line 795
    .end local v0    # "axisValue":F
    :cond_1
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    .line 798
    :cond_2
    const/4 v0, 0x0

    .line 801
    .restart local v0    # "axisValue":F
    :goto_1
    iget v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 802
    .local v1, "delta":I
    if-eqz v1, :cond_5

    .line 803
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    .line 804
    .local v2, "range":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 805
    .local v3, "oldScrollY":I
    sub-int v4, v3, v1

    .line 806
    .local v4, "newScrollY":I
    if-gez v4, :cond_3

    .line 807
    const/4 v4, 0x0

    goto :goto_2

    .line 808
    :cond_3
    if-le v4, v2, :cond_4

    .line 809
    move v4, v2

    .line 811
    :cond_4
    :goto_2
    if-eq v4, v3, :cond_5

    .line 812
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v4}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 813
    const/4 v5, 0x1

    return v5

    .line 819
    .end local v0    # "axisValue":F
    .end local v1    # "delta":I
    .end local v2    # "range":I
    .end local v3    # "oldScrollY":I
    .end local v4    # "newScrollY":I
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 904
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 905
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 906
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 907
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 908
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 909
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 910
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 911
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 883
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 884
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 886
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 887
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 888
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 889
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 891
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 893
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 894
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 895
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 899
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 497
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 498
    .local v2, "action":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 499
    return v4

    .line 502
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 503
    return v4

    .line 509
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 510
    return v6

    .line 513
    :cond_2
    and-int/lit16 v5, v2, 0xff

    const/4 v7, 0x6

    if-eq v5, v7, :cond_a

    const/4 v7, -0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 524
    :pswitch_0
    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 525
    .local v5, "activePointerId":I
    if-ne v5, v7, :cond_3

    .line 527
    goto/16 :goto_0

    .line 530
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 531
    .local v8, "pointerIndex":I
    if-ne v8, v7, :cond_4

    .line 532
    const-string v3, "ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in onInterceptTouchEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    goto/16 :goto_0

    .line 537
    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 538
    .local v7, "y":I
    iget v9, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 539
    .local v9, "yDiff":I
    iget v10, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v9, v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v10

    and-int/2addr v3, v10

    if-nez v3, :cond_b

    .line 540
    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 541
    iput v7, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 542
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 543
    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 544
    iput v6, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 545
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_5

    .line 546
    const-string v3, "ScrollView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 548
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 549
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_6

    .line 550
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 552
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_6
    goto :goto_0

    .line 591
    .end local v5    # "activePointerId":I
    .end local v7    # "y":I
    .end local v8    # "pointerIndex":I
    .end local v9    # "yDiff":I
    :pswitch_1
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 592
    iput v7, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 593
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 594
    iget-object v10, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v11, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 597
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    .line 598
    goto :goto_0

    .line 557
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 558
    .local v5, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v7, v5}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v7

    if-nez v7, :cond_8

    .line 559
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 560
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 561
    goto :goto_0

    .line 568
    :cond_8
    iput v5, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 569
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 571
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 572
    iget-object v6, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 579
    iget-object v6, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 580
    iget-object v6, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 581
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v4, :cond_9

    .line 582
    const-string v4, "ScrollView-scroll"

    invoke-static {v4}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 584
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 585
    goto :goto_0

    .line 600
    .end local v5    # "y":I
    :cond_a
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 608
    :cond_b
    :goto_0
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1552
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1555
    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v1, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1558
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1560
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1561
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v2, :cond_1

    .line 1562
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1563
    iput-object v1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1566
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1567
    .local v1, "childHeight":I
    :goto_0
    sub-int v2, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1571
    .local v2, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v2, :cond_3

    .line 1572
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1

    .line 1573
    :cond_3
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_4

    .line 1574
    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1579
    .end local v1    # "childHeight":I
    .end local v2    # "scrollRange":I
    :cond_4
    :goto_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1580
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 350
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 352
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 357
    .local v0, "heightMode":I
    if-nez v0, :cond_1

    .line 358
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 362
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 366
    .local v2, "targetSdkVersion":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 367
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    .line 368
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 369
    .local v4, "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .local v5, "heightPadding":I
    goto :goto_0

    .line 371
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    :cond_2
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 372
    .restart local v4    # "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    .line 375
    .restart local v5    # "heightPadding":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 376
    .local v6, "desiredHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v6, :cond_3

    .line 377
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v4, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v7

    .line 379
    .local v7, "childWidthMeasureSpec":I
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 381
    .local v8, "childHeightMeasureSpec":I
    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 384
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "targetSdkVersion":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    .end local v6    # "desiredHeight":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "childHeightMeasureSpec":I
    :cond_3
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1730
    if-nez p4, :cond_0

    .line 1731
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1732
    const/4 v0, 0x1

    return v0

    .line 1734
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 1718
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1719
    .local v0, "oldScrollY":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1720
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v0

    .line 1721
    .local v1, "myConsumed":I
    sub-int v8, p5, v1

    .line 1722
    .local v8, "myUnconsumed":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 1723
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 1703
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1704
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1705
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 11
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 826
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 828
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 829
    .local v1, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 830
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 831
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 832
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 833
    if-eqz p4, :cond_0

    .line 834
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 836
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_0
    goto :goto_0

    .line 837
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 840
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 841
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1498
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1499
    const/16 p1, 0x82

    goto :goto_0

    .line 1500
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1501
    const/16 p1, 0x21

    .line 1504
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1505
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1506
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .line 1509
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1510
    return v1

    .line 1513
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1514
    return v1

    .line 1517
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1828
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 1831
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1832
    return-void

    .line 1834
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 1835
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1836
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1837
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 1838
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1842
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 1845
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1847
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1848
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1849
    .local v1, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 1850
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1586
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1587
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_2

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1593
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1595
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1596
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1597
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1599
    .end local v1    # "scrollDelta":I
    :cond_1
    return-void

    .line 1588
    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1698
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .line 1712
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 1713
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v10, p0

    .line 613
    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 615
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 617
    .local v12, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 619
    .local v13, "actionMasked":I
    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 620
    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 622
    :cond_0
    iget v1, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 624
    const/4 v1, -0x1

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 759
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 760
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_6

    .line 753
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 754
    .local v0, "index":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 755
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 756
    goto/16 :goto_6

    .line 744
    .end local v0    # "index":I
    :pswitch_3
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_16

    .line 745
    iget-object v2, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v4, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 748
    :cond_1
    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 749
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_6

    .line 655
    :pswitch_4
    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 656
    .local v9, "activePointerIndex":I
    if-ne v9, v1, :cond_2

    .line 657
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    goto/16 :goto_6

    .line 661
    :cond_2
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v8, v1

    .line 662
    .local v8, "y":I
    iget v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v1, v8

    .line 663
    .local v1, "deltaY":I
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v2, v2, v15

    sub-int/2addr v1, v2

    .line 665
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v15

    int-to-float v2, v2

    invoke-virtual {v12, v14, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 666
    iget v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v3, v3, v15

    add-int/2addr v2, v3

    iput v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 668
    :cond_3
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_6

    .line 669
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 670
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_4

    .line 671
    invoke-interface {v2, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 673
    :cond_4
    iput-boolean v15, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 674
    if-lez v1, :cond_5

    .line 675
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v1, v3

    goto :goto_0

    .line 677
    :cond_5
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v1, v3

    .line 680
    .end local v1    # "deltaY":I
    .end local v2    # "parent":Landroid/view/ViewParent;
    .local v7, "deltaY":I
    :cond_6
    :goto_0
    move v7, v1

    iget-boolean v1, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_16

    .line 682
    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int v1, v8, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 684
    iget v6, v10, Landroid/widget/ScrollView;->mScrollY:I

    .line 685
    .local v6, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 686
    .local v5, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v4

    .line 687
    .local v4, "overscrollMode":I
    if-eqz v4, :cond_8

    if-ne v4, v15, :cond_7

    if-lez v5, :cond_7

    goto :goto_1

    :cond_7
    goto :goto_2

    :cond_8
    :goto_1
    move v0, v15

    :goto_2
    move/from16 v16, v0

    .line 692
    .local v16, "canOverscroll":Z
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v2, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v0, v10, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/16 v19, 0x1

    move/from16 v20, v0

    move-object v0, v10

    move/from16 v21, v2

    move v2, v7

    move/from16 v22, v4

    move/from16 v4, v21

    .end local v4    # "overscrollMode":I
    .local v22, "overscrollMode":I
    move/from16 v23, v5

    move/from16 v5, v17

    .end local v5    # "range":I
    .local v23, "range":I
    move/from16 v17, v6

    move/from16 v6, v23

    .end local v6    # "oldY":I
    .local v17, "oldY":I
    move v14, v7

    move/from16 v7, v18

    .end local v7    # "deltaY":I
    .local v14, "deltaY":I
    move/from16 v18, v8

    move/from16 v8, v20

    .end local v8    # "y":I
    .local v18, "y":I
    move/from16 v24, v9

    move/from16 v9, v19

    .end local v9    # "activePointerIndex":I
    .local v24, "activePointerIndex":I
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 695
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 698
    :cond_9
    iget v0, v10, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v6, v0, v17

    .line 699
    .local v6, "scrolledDeltaY":I
    sub-int v7, v14, v6

    .line 700
    .local v7, "unconsumedY":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object v0, v10

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 701
    iget v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 702
    iget-object v0, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 703
    iget v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 724
    move/from16 v3, v24

    goto/16 :goto_4

    .line 704
    :cond_a
    if-eqz v16, :cond_f

    .line 705
    add-int v0, v17, v14

    .line 706
    .local v0, "pulledToY":I
    if-gez v0, :cond_c

    .line 707
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 708
    move/from16 v3, v24

    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .end local v24    # "activePointerIndex":I
    .local v3, "activePointerIndex":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 707
    invoke-virtual {v1, v2, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 709
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_b

    .line 710
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 719
    .end local v23    # "range":I
    .local v1, "range":I
    :cond_b
    move/from16 v1, v23

    goto :goto_3

    .line 712
    .end local v1    # "range":I
    .end local v3    # "activePointerIndex":I
    .restart local v23    # "range":I
    .restart local v24    # "activePointerIndex":I
    :cond_c
    move/from16 v3, v24

    .end local v24    # "activePointerIndex":I
    .restart local v3    # "activePointerIndex":I
    move/from16 v1, v23

    if-le v0, v1, :cond_d

    .line 713
    .end local v23    # "range":I
    .restart local v1    # "range":I
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 714
    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    .line 713
    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 715
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_d

    .line 716
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 719
    :cond_d
    :goto_3
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_10

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 720
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_10

    .line 721
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .end local v0    # "pulledToY":I
    .end local v1    # "range":I
    .end local v6    # "scrolledDeltaY":I
    .end local v7    # "unconsumedY":I
    .end local v16    # "canOverscroll":Z
    .end local v17    # "oldY":I
    .end local v22    # "overscrollMode":I
    goto :goto_4

    .line 724
    .end local v3    # "activePointerIndex":I
    .restart local v24    # "activePointerIndex":I
    :cond_f
    move/from16 v3, v24

    .end local v24    # "activePointerIndex":I
    .restart local v3    # "activePointerIndex":I
    :cond_10
    :goto_4
    goto/16 :goto_6

    .line 727
    .end local v3    # "activePointerIndex":I
    .end local v14    # "deltaY":I
    .end local v18    # "y":I
    :pswitch_5
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_16

    .line 728
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 729
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, v10, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 730
    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 732
    .local v2, "initialVelocity":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_11

    .line 733
    neg-int v3, v2

    invoke-direct {v10, v3}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_5

    .line 734
    :cond_11
    iget-object v3, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 735
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v22

    .line 734
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 739
    :cond_12
    :goto_5
    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 740
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    .line 741
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v2    # "initialVelocity":I
    goto :goto_6

    .line 626
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_13

    .line 627
    return v0

    .line 629
    :cond_13
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v15

    iput-boolean v1, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_14

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 631
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_14

    .line 632
    invoke-interface {v1, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 640
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_14
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 641
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 642
    iget-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_15

    .line 643
    iget-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 644
    const/4 v1, 0x0

    iput-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 649
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 650
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 651
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 652
    nop

    .line 764
    :cond_16
    :goto_6
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_17

    .line 765
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 767
    :cond_17
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 768
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 1019
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1020
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1022
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1023
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1024
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1025
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1026
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1027
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 1028
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1031
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 1032
    :cond_2
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1033
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 1034
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1037
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1039
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 846
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 847
    return v1

    .line 849
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 850
    return v2

    .line 852
    :cond_1
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_2

    const v0, 0x1020038

    if-eq p1, v0, :cond_2

    const v0, 0x102003a

    if-eq p1, v0, :cond_4

    .line 872
    return v2

    .line 864
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v3

    .line 865
    .local v0, "viewportHeight":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 866
    .local v3, "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v3, v4, :cond_3

    .line 867
    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 868
    return v1

    .line 870
    .end local v0    # "viewportHeight":I
    .end local v3    # "targetScrollY":I
    :cond_3
    return v2

    .line 855
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v3

    .line 856
    .restart local v0    # "viewportHeight":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v3, v0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 857
    .restart local v3    # "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v3, v4, :cond_5

    .line 858
    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 859
    return v1

    .line 861
    .end local v0    # "viewportHeight":I
    .end local v3    # "targetScrollY":I
    :cond_5
    return v2
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1473
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1474
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1475
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1478
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1481
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1482
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1524
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1525
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1524
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1527
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 477
    if-eqz p1, :cond_0

    .line 478
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 480
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 481
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1532
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1533
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1534
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1671
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1673
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1674
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1675
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1676
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1679
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .line 327
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 328
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 329
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 331
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1683
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1684
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 1685
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1686
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1687
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1688
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 1690
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1691
    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1693
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1694
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .line 345
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 346
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1210
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    return-void

    .line 1214
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 1215
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1216
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 1217
    .local v2, "height":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1218
    .local v4, "bottom":I
    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1219
    .local v5, "maxY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1220
    .local v6, "scrollY":I
    add-int v7, v6, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p2, v7, v6

    .line 1222
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v7, v8, v6, v3, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1223
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1224
    .end local v2    # "height":I
    .end local v4    # "bottom":I
    .end local v5    # "maxY":I
    .end local v6    # "scrollY":I
    goto :goto_0

    .line 1225
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1226
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1227
    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_2

    .line 1228
    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1229
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1232
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1234
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 1235
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1244
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1245
    return-void
.end method
