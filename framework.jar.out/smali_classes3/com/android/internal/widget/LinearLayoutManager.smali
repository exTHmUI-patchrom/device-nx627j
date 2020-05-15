.class public Lcom/android/internal/widget/LinearLayoutManager;
.super Lcom/android/internal/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;,
        Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;,
        Lcom/android/internal/widget/LinearLayoutManager$SavedState;,
        Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialItemPrefetchCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

.field mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 162
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 135
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/android/internal/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 140
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 145
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 164
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 173
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 135
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/android/internal/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 140
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 145
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 174
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v1

    .line 175
    .local v1, "properties":Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    iget v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 176
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 177
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 179
    return-void
.end method

.method private computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    const/4 v0, 0x0

    return v0

    .line 1096
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1097
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1098
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1099
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1097
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 8
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1082
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    const/4 v0, 0x0

    return v0

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1086
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1087
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1088
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1086
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    return v0

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1108
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1109
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1110
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1108
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1697
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1698
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1701
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1679
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1683
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 7
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1719
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1720
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1719
    :goto_0
    return-object v0
.end method

.method private findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1736
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1737
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1736
    :goto_0
    return-object v0
.end method

.method private fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 879
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 880
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 881
    neg-int v2, v0

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 886
    add-int/2addr p1, v1

    .line 887
    if-eqz p4, :cond_0

    .line 889
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v0, v2, p1

    .line 890
    if-lez v0, :cond_0

    .line 891
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 892
    add-int v2, v0, v1

    return v2

    .line 895
    :cond_0
    return v1

    .line 883
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 903
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 904
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 905
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 907
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 911
    add-int/2addr p1, v1

    .line 912
    if-eqz p4, :cond_0

    .line 914
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v0, p1, v2

    .line 915
    if-lez v0, :cond_0

    .line 916
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 917
    sub-int v2, v1, v0

    return v2

    .line 920
    :cond_0
    return v1

    .line 909
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1667
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1657
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V
    .locals 16
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 672
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 677
    :cond_0
    const/4 v3, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 678
    .local v4, "scrapExtraEnd":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v5

    .line 679
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 680
    .local v6, "scrapSize":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 681
    .local v8, "firstChildPos":I
    move v9, v4

    move v4, v3

    move v3, v7

    .local v3, "i":I
    .local v4, "scrapExtraStart":I
    .local v9, "scrapExtraEnd":I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 682
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 683
    .local v10, "scrap":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 684
    goto :goto_2

    .line 686
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    .line 687
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v11, v8, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    iget-boolean v14, v0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v15, -0x1

    if-eq v13, v14, :cond_3

    .line 688
    move v12, v15

    nop

    .line 689
    .local v12, "direction":I
    :cond_3
    if-ne v12, v15, :cond_4

    .line 690
    iget-object v13, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-object v14, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v4, v13

    goto :goto_2

    .line 692
    :cond_4
    iget-object v13, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-object v14, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v9, v13

    .line 681
    .end local v10    # "scrap":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v11    # "position":I
    .end local v12    # "direction":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 700
    .end local v3    # "i":I
    :cond_5
    iget-object v3, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput-object v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 701
    if-lez v4, :cond_6

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 703
    .local v3, "anchor":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v11, p3

    invoke-direct {v0, v10, v11}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 704
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 705
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v7, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 706
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 707
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .end local v3    # "anchor":Landroid/view/View;
    goto :goto_3

    .line 710
    :cond_6
    move/from16 v11, p3

    :goto_3
    if-lez v9, :cond_7

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 712
    .restart local v3    # "anchor":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v12, p4

    invoke-direct {v0, v10, v12}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 713
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v9, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 714
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v7, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 715
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 716
    iget-object v10, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .end local v3    # "anchor":Landroid/view/View;
    goto :goto_4

    .line 718
    :cond_7
    move/from16 v12, p4

    :goto_4
    iget-object v3, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v7, 0x0

    iput-object v7, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 719
    return-void

    .line 674
    .end local v4    # "scrapExtraStart":I
    .end local v5    # "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "scrapSize":I
    .end local v8    # "firstChildPos":I
    .end local v9    # "scrapExtraEnd":I
    :cond_8
    :goto_5
    move/from16 v11, p3

    move/from16 v12, p4

    return-void
.end method

.method private logChildren()V
    .locals 5

    .line 1933
    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1935
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1936
    .local v1, "child":Landroid/view/View;
    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1937
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1936
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1939
    .end local v0    # "i":I
    :cond_0
    const-string v0, "LinearLayoutManager"

    const-string v1, "=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    return-void
.end method

.method private recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 1450
    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1453
    :cond_0
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1454
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LinearLayoutManager;->recycleViewsFromEnd(Lcom/android/internal/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1456
    :cond_1
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LinearLayoutManager;->recycleViewsFromStart(Lcom/android/internal/widget/RecyclerView$Recycler;I)V

    .line 1458
    :goto_0
    return-void

    .line 1451
    :cond_2
    :goto_1
    return-void
.end method

.method private recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 1333
    if-ne p2, p3, :cond_0

    .line 1334
    return-void

    .line 1339
    :cond_0
    if-le p3, p2, :cond_1

    .line 1340
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 1341
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1340
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1344
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_2

    .line 1345
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1344
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1348
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/android/internal/widget/RecyclerView$Recycler;I)V
    .locals 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .line 1406
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1407
    .local v0, "childCount":I
    if-gez p2, :cond_0

    .line 1412
    return-void

    .line 1414
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1415
    .local v1, "limit":I
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_3

    .line 1416
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 1417
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1418
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-lt v5, v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1419
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v5

    if-ge v5, v1, :cond_1

    goto :goto_1

    .line 1416
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1421
    .restart local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1422
    return-void

    .line 1426
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_6

    .line 1427
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1428
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1429
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_4

    goto :goto_3

    .line 1426
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1431
    .restart local v3    # "child":Landroid/view/View;
    :cond_5
    :goto_3
    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1432
    return-void

    .line 1436
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Lcom/android/internal/widget/RecyclerView$Recycler;I)V
    .locals 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .line 1361
    if-gez p2, :cond_0

    .line 1366
    return-void

    .line 1369
    :cond_0
    move v0, p2

    .line 1370
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1371
    .local v1, "childCount":I
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_3

    .line 1372
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 1373
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1374
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1375
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_1

    goto :goto_1

    .line 1372
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1377
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1378
    return-void

    .line 1382
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 1383
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1384
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    if-gt v5, v0, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1385
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v5

    if-le v5, v0, :cond_4

    goto :goto_3

    .line 1382
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1387
    .restart local v4    # "child":Landroid/view/View;
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1388
    return-void

    .line 1392
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 344
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 345
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 349
    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 752
    return v1

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, "focused":Landroid/view/View;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    .line 757
    return v2

    .line 759
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v3, v4, :cond_2

    .line 760
    return v1

    .line 762
    :cond_2
    iget-boolean v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_3

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 764
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 765
    .local v3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_8

    .line 766
    invoke-virtual {p3, v3}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 769
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 771
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 772
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 773
    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 774
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 775
    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 776
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 777
    iget-boolean v4, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_6

    .line 778
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    goto :goto_3

    .line 779
    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    :goto_3
    iput v4, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 782
    .end local v1    # "notVisible":Z
    :cond_7
    return v2

    .line 784
    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 792
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    .line 796
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_5

    .line 807
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 808
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 812
    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 819
    :goto_0
    return v2

    .line 822
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v3, :cond_c

    .line 823
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_8

    .line 825
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 826
    .local v3, "childSize":I
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 828
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 829
    return v2

    .line 831
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 832
    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 833
    .local v4, "startGap":I
    if-gez v4, :cond_5

    .line 834
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 835
    iput-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 836
    return v2

    .line 838
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 839
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 840
    .local v1, "endGap":I
    if-gez v1, :cond_6

    .line 841
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 842
    iput-boolean v2, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 843
    return v2

    .line 845
    :cond_6
    iget-boolean v5, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_7

    .line 846
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 847
    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 848
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    :goto_1
    iput v5, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 849
    .end local v1    # "endGap":I
    .end local v3    # "childSize":I
    .end local v4    # "startGap":I
    goto :goto_3

    .line 850
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 852
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 853
    .local v3, "pos":I
    iget v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v4, v3, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    move v4, v1

    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v4, v5, :cond_a

    move v1, v2

    nop

    :cond_a
    iput-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 856
    .end local v3    # "pos":I
    :cond_b
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 858
    :goto_3
    return v2

    .line 861
    .end local v0    # "child":Landroid/view/View;
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 863
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_d

    .line 864
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 867
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 870
    :goto_4
    return v2

    .line 797
    :cond_e
    :goto_5
    iput v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 798
    iput v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 802
    return v1

    .line 793
    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 723
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    return-void

    .line 730
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorFromChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    return-void

    .line 739
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 740
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 741
    return-void
.end method

.method private updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1149
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1150
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1151
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1153
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/OrientationHelper;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1156
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1158
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1159
    :cond_0
    move v0, v1

    :goto_0
    iput v0, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1160
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1161
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1163
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1164
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1166
    .end local v2    # "child":Landroid/view/View;
    .local v0, "scrollingOffset":I
    goto :goto_1

    .line 1167
    .end local v0    # "scrollingOffset":I
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1168
    .restart local v2    # "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1169
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_2

    .line 1170
    move v0, v1

    nop

    :cond_2
    iput v0, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1171
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1172
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1173
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1174
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    .end local v2    # "child":Landroid/view/View;
    .restart local v0    # "scrollingOffset":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1177
    if-eqz p3, :cond_3

    .line 1178
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1180
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1181
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 928
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 929
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 930
    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 931
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 933
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 934
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 935
    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 924
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 925
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 942
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 943
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 945
    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 946
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 947
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 948
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 950
    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 938
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 939
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1321
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1322
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1324
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 281
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 289
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1281
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 1282
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    .line 1287
    :cond_1
    const/4 v1, 0x1

    if-lez v0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 1288
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1289
    .local v3, "absDy":I
    invoke-direct {p0, v2, v3, v1, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 1290
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v1, p4}, Lcom/android/internal/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 1291
    return-void

    .line 1284
    .end local v2    # "layoutDirection":I
    .end local v3    # "absDy":I
    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 7
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1201
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1204
    .local v0, "fromEnd":Z
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .local v3, "anchorPos":I
    :goto_0
    goto :goto_2

    .line 1206
    .end local v0    # "fromEnd":Z
    .end local v3    # "anchorPos":I
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1207
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1208
    .restart local v0    # "fromEnd":Z
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_2

    .line 1209
    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    goto :goto_0

    .line 1211
    :cond_2
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1215
    .restart local v3    # "anchorPos":I
    :goto_2
    if-eqz v0, :cond_3

    .line 1216
    goto :goto_3

    .line 1217
    :cond_3
    const/4 v1, 0x1

    .line 1218
    .local v1, "direction":I
    :goto_3
    move v4, v3

    .line 1219
    .local v4, "targetPos":I
    move v5, v4

    move v4, v2

    .local v4, "i":I
    .local v5, "targetPos":I
    :goto_4
    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    if-ge v4, v6, :cond_4

    .line 1220
    if-ltz v5, :cond_4

    if-ge v5, p1, :cond_4

    .line 1221
    invoke-interface {p2, v5, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1225
    add-int/2addr v5, v1

    .line 1219
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1227
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p2, "layoutState"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1190
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1191
    .local v0, "pos":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1192
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-interface {p3, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1194
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .param p1, "targetPosition"    # I

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    return-object v0

    .line 447
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 448
    .local v1, "firstChildPos":I
    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    const/4 v2, -0x1

    nop

    :cond_2
    move v0, v2

    .line 449
    .local v0, "direction":I
    iget v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 450
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 452
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1068
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1058
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .line 1612
    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 1645
    return v2

    .line 1622
    :pswitch_0
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_0

    .line 1623
    return v3

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    return v1

    .line 1627
    :cond_1
    return v3

    .line 1614
    :pswitch_1
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_2

    .line 1615
    return v1

    .line 1616
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    return v3

    .line 1619
    :cond_3
    return v1

    .line 1633
    :cond_4
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_5

    move v2, v3

    goto :goto_0

    .line 1634
    :cond_5
    nop

    .line 1633
    :goto_0
    return v2

    .line 1639
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    move v2, v3

    goto :goto_1

    .line 1640
    :cond_7
    nop

    .line 1639
    :goto_1
    return v2

    .line 1630
    :cond_8
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 1631
    :cond_9
    nop

    .line 1630
    move v1, v2

    :goto_2
    return v1

    .line 1636
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_b

    goto :goto_3

    .line 1637
    :cond_b
    nop

    .line 1636
    move v1, v2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createLayoutState()Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .locals 1

    .line 971
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->createLayoutState()Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 961
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/android/internal/widget/OrientationHelper;->createOrientationHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;I)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 963
    :cond_1
    return-void
.end method

.method fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .line 1474
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1475
    .local v0, "start":I
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1477
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 1478
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1480
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V

    .line 1482
    :cond_1
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1483
    .local v1, "remainingSpace":I
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1484
    .local v3, "layoutChunkResult":Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;
    :cond_2
    iget-boolean v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1485
    invoke-virtual {v3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1486
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1487
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_4

    .line 1488
    goto :goto_0

    .line 1490
    :cond_4
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1497
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1498
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1499
    :cond_5
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1501
    iget v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1504
    :cond_6
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_8

    .line 1505
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1506
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_7

    .line 1507
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1509
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V

    .line 1511
    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1512
    nop

    .line 1518
    :cond_9
    :goto_0
    iget v2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v2, v0, v2

    return v2
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1814
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1815
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1797
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1798
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 1854
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1855
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1838
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .line 1860
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1861
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1862
    .local v0, "start":I
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1863
    .local v1, "end":I
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1864
    .local v2, "next":I
    :goto_0
    const/4 v3, 0x0

    .line 1865
    .local v3, "partiallyVisible":Landroid/view/View;
    move-object v4, v3

    move v3, p1

    .local v3, "i":I
    .local v4, "partiallyVisible":Landroid/view/View;
    :goto_1
    if-eq v3, p2, :cond_4

    .line 1866
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1867
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 1868
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 1869
    .local v7, "childEnd":I
    if-ge v6, v1, :cond_3

    if-le v7, v0, :cond_3

    .line 1870
    if-eqz p3, :cond_2

    .line 1871
    if-lt v6, v0, :cond_1

    if-gt v7, v1, :cond_1

    .line 1872
    return-object v5

    .line 1873
    :cond_1
    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    .line 1874
    move-object v4, v5

    goto :goto_2

    .line 1877
    :cond_2
    return-object v5

    .line 1865
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_3
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 1881
    .end local v3    # "i":I
    :cond_4
    return-object v4
.end method

.method findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 1751
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1752
    const/4 v0, 0x0

    .line 1753
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 1754
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 1755
    .local v2, "boundsStart":I
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1756
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 1757
    .local v4, "diff":I
    :goto_0
    move-object v5, v0

    move v0, p3

    .local v0, "i":I
    .local v5, "invalidMatch":Landroid/view/View;
    :goto_1
    if-eq v0, p4, :cond_5

    .line 1758
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1759
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 1760
    .local v7, "position":I
    if-ltz v7, :cond_4

    if-ge v7, p5, :cond_4

    .line 1761
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1762
    if-nez v5, :cond_4

    .line 1763
    move-object v5, v6

    goto :goto_3

    .line 1765
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v3, :cond_3

    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1766
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v2, :cond_2

    goto :goto_2

    .line 1771
    :cond_2
    return-object v6

    .line 1767
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 1768
    move-object v1, v6

    .line 1757
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    :cond_4
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    .line 1775
    .end local v0    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v0, v5

    :goto_4
    return-object v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 390
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 391
    const/4 v1, 0x0

    return-object v1

    .line 393
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 394
    .local v1, "firstChild":I
    sub-int v2, p1, v1

    .line 395
    .local v2, "viewPosition":I
    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 396
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 397
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 398
    return-object v3

    .line 402
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 186
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    return v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInitialItemPrefetchCount()I
    .locals 1

    .line 1275
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 16
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 1523
    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    .line 1524
    .local v10, "view":Landroid/view/View;
    const/4 v11, 0x1

    if-nez v10, :cond_0

    .line 1530
    iput-boolean v11, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1531
    return-void

    .line 1533
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 1534
    .local v12, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v0, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1535
    iget-boolean v0, v6, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, v11

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1537
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1539
    :cond_2
    invoke-virtual {v6, v10, v2}, Lcom/android/internal/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1542
    :cond_3
    iget-boolean v0, v6, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, v11

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1544
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1546
    :cond_5
    invoke-virtual {v6, v10, v2}, Lcom/android/internal/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1549
    :goto_2
    invoke-virtual {v6, v10, v2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1550
    iget-object v0, v6, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1552
    iget v0, v6, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v11, :cond_8

    .line 1553
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1555
    .local v0, "right":I
    iget-object v2, v6, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .local v2, "left":I
    goto :goto_3

    .line 1557
    .end local v0    # "right":I
    .end local v2    # "left":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1558
    .restart local v2    # "left":I
    iget-object v0, v6, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1560
    .restart local v0    # "right":I
    :goto_3
    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1561
    iget v1, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1562
    .local v1, "bottom":I
    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    .line 1576
    .local v3, "top":I
    move v4, v0

    move v15, v1

    move v13, v2

    move v14, v3

    goto :goto_4

    .line 1564
    .end local v1    # "bottom":I
    .end local v3    # "top":I
    :cond_7
    iget v1, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1565
    .local v1, "top":I
    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    .line 1576
    .local v3, "bottom":I
    move v4, v0

    move v14, v1

    move v13, v2

    move v15, v3

    goto :goto_4

    .line 1568
    .end local v0    # "right":I
    .end local v1    # "top":I
    .end local v2    # "left":I
    .end local v3    # "bottom":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1569
    .local v0, "top":I
    iget-object v2, v6, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1571
    .local v2, "bottom":I
    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9

    .line 1572
    iget v1, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1573
    .local v1, "right":I
    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    .line 1576
    .local v3, "left":I
    move v14, v0

    move v4, v1

    move v15, v2

    move v13, v3

    goto :goto_4

    .line 1575
    .end local v1    # "right":I
    .end local v3    # "left":I
    :cond_9
    iget v1, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1576
    .local v1, "left":I
    iget v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    move v14, v0

    move v13, v1

    move v15, v2

    move v4, v3

    .line 1581
    .end local v0    # "top":I
    .end local v1    # "left":I
    .end local v2    # "bottom":I
    .local v4, "right":I
    .local v13, "left":I
    .local v14, "top":I
    .local v15, "bottom":I
    :goto_4
    move-object v0, v6

    move-object v1, v10

    move v2, v13

    move v3, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1588
    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1589
    :cond_a
    iput-boolean v11, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1591
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1592
    return-void
.end method

.method onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .line 661
    return-void
.end method

.method public onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 221
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 223
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 225
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 8
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1887
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1888
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1889
    return-object v1

    .line 1892
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1893
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 1894
    return-object v1

    .line 1896
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1898
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 1899
    invoke-direct {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    .local v4, "referenceChild":Landroid/view/View;
    goto :goto_0

    .line 1901
    .end local v4    # "referenceChild":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    .line 1903
    .restart local v4    # "referenceChild":Landroid/view/View;
    :goto_0
    if-nez v4, :cond_3

    .line 1908
    return-object v1

    .line 1910
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1911
    const v5, 0x3eaaaaab

    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1912
    .local v5, "maxScroll":I
    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6, p4}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 1913
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v2, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1914
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput-boolean v6, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1915
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v2, p4, v6}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 1917
    if-ne v0, v3, :cond_4

    .line 1918
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocus":Landroid/view/View;
    goto :goto_1

    .line 1920
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1922
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_1
    if-eq v2, v4, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 1925
    :cond_5
    return-object v2

    .line 1923
    :cond_6
    :goto_2
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 229
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 11
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    .line 472
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 474
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 484
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v3, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 502
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    .line 505
    .local v0, "extra":I
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v4, :cond_5

    .line 506
    move v4, v0

    .line 507
    .local v4, "extraForEnd":I
    const/4 v5, 0x0

    .local v5, "extraForStart":I
    goto :goto_0

    .line 509
    .end local v4    # "extraForEnd":I
    .end local v5    # "extraForStart":I
    :cond_5
    move v5, v0

    .line 510
    .restart local v5    # "extraForStart":I
    move v4, v2

    .line 512
    .restart local v4    # "extraForEnd":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    .line 513
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v4, v6

    .line 514
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v6, v1, :cond_8

    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_8

    .line 519
    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 520
    .local v6, "existing":Landroid/view/View;
    if-eqz v6, :cond_8

    .line 523
    iget-boolean v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_6

    .line 524
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 525
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 526
    .local v7, "current":I
    iget v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v8, v7, v8

    .local v8, "upcomingOffset":I
    goto :goto_1

    .line 528
    .end local v7    # "current":I
    .end local v8    # "upcomingOffset":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 529
    invoke-virtual {v8}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    .line 530
    .restart local v7    # "current":I
    iget v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v7

    .line 532
    .restart local v8    # "upcomingOffset":I
    :goto_1
    if-lez v8, :cond_7

    .line 533
    add-int/2addr v5, v8

    goto :goto_2

    .line 535
    :cond_7
    sub-int/2addr v4, v8

    .line 542
    .end local v6    # "existing":Landroid/view/View;
    .end local v7    # "current":I
    .end local v8    # "upcomingOffset":I
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v6, v6, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_a

    .line 543
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_9

    .line 544
    move v1, v3

    nop

    .local v1, "firstLayoutDirection":I
    :cond_9
    goto :goto_3

    .line 546
    .end local v1    # "firstLayoutDirection":I
    :cond_a
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_b

    goto :goto_3

    .line 547
    :cond_b
    move v1, v3

    .line 550
    .restart local v1    # "firstLayoutDirection":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v6, v1}, Lcom/android/internal/widget/LinearLayoutManager;->onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 552
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 553
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 554
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v6, v6, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_e

    .line 556
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 557
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v5, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 558
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v6, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 559
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 560
    .local v6, "startOffset":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 561
    .local v7, "firstElement":I
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v8, :cond_c

    .line 562
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v8

    .line 565
    :cond_c
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v8}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 566
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 567
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v9, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 568
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v8, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 569
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 571
    .local v8, "endOffset":I
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_d

    .line 573
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 574
    invoke-direct {p0, v7, v6}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 575
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v5, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 576
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 577
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v6, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 579
    .end local v7    # "firstElement":I
    :cond_d
    nop

    .line 609
    move v7, v6

    goto :goto_4

    .line 581
    .end local v6    # "startOffset":I
    .end local v8    # "endOffset":I
    :cond_e
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 582
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 583
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v6, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 584
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v8, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 585
    .restart local v8    # "endOffset":I
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 586
    .local v6, "lastElement":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v7, :cond_f

    .line 587
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v5, v7

    .line 590
    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v7}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 591
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v5, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 592
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v9, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 593
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v7, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 594
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 596
    .local v7, "startOffset":I
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_10

    .line 597
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 599
    invoke-direct {p0, v6, v8}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 600
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 601
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 602
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v8, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 609
    .end local v6    # "lastElement":I
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_12

    .line 613
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v6, v9

    if-eqz v6, :cond_11

    .line 614
    invoke-direct {p0, v8, p1, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v3

    .line 615
    .local v3, "fixOffset":I
    add-int/2addr v7, v3

    .line 616
    add-int/2addr v8, v3

    .line 617
    invoke-direct {p0, v7, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v2

    .line 618
    .end local v3    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v7, v2

    .line 619
    add-int/2addr v8, v2

    .line 620
    .end local v2    # "fixOffset":I
    goto :goto_5

    .line 621
    :cond_11
    invoke-direct {p0, v7, p1, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v3

    .line 622
    .restart local v3    # "fixOffset":I
    add-int/2addr v7, v3

    .line 623
    add-int/2addr v8, v3

    .line 624
    invoke-direct {p0, v8, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v2

    .line 625
    .end local v3    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v7, v2

    .line 626
    add-int/2addr v8, v2

    .line 629
    .end local v2    # "fixOffset":I
    :cond_12
    :goto_5
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/android/internal/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 630
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_13

    .line 631
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_6

    .line 633
    :cond_13
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 635
    :goto_6
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 639
    return-void
.end method

.method public onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 643
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 645
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 646
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 647
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 648
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 265
    instance-of v0, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 266
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 274
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;-><init>(Lcom/android/internal/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 242
    .local v0, "state":Lcom/android/internal/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 244
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 245
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 246
    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, "refChild":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 249
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 251
    .end local v2    # "refChild":Landroid/view/View;
    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 253
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 254
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 255
    invoke-virtual {v4}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 257
    .end local v1    # "didLayoutFromEnd":Z
    .end local v2    # "refChild":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 260
    :goto_1
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 2002
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2004
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2005
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2006
    .local v0, "myPos":I
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2007
    .local v1, "targetPos":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 2008
    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 2009
    .local v4, "dropDirection":I
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 2010
    if-ne v4, v3, :cond_1

    .line 2011
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2012
    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2013
    invoke-virtual {v3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2014
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    .line 2011
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2016
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2017
    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2018
    invoke-virtual {v3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2016
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2021
    :cond_2
    if-ne v4, v2, :cond_3

    .line 2022
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2024
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2025
    invoke-virtual {v2, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2026
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2024
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2029
    :goto_1
    return-void
.end method

.method resolveIsInfinite()Z
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1185
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1184
    :goto_0
    return v0
.end method

.method scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1294
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1298
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1299
    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1300
    .local v0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1301
    .local v3, "absDy":I
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 1302
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 1303
    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1304
    .local v2, "consumed":I
    if-gez v2, :cond_2

    .line 1308
    return v1

    .line 1310
    :cond_2
    if-le v3, v2, :cond_3

    mul-int v1, v0, v2

    goto :goto_1

    :cond_3
    move v1, p1

    .line 1311
    .local v1, "scrolled":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    neg-int v5, v1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 1315
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v1, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1316
    return v1

    .line 1295
    .end local v0    # "layoutDirection":I
    .end local v1    # "scrolled":I
    .end local v2    # "consumed":I
    .end local v3    # "absDy":I
    :cond_4
    :goto_2
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1033
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1034
    const/4 v0, 0x0

    return v0

    .line 1036
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 990
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 991
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 992
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 996
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 1018
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1019
    iput p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1020
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 1024
    return-void
.end method

.method public scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 1045
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1046
    const/4 v0, 0x0

    return v0

    .line 1048
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 1259
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 1260
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 325
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 329
    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    .line 330
    return-void

    .line 332
    :cond_2
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 333
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 335
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .line 215
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 216
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 382
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1132
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1133
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 302
    return-void
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .line 1596
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1596
    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 436
    new-instance v0, Lcom/android/internal/widget/LinearSmoothScroller;

    .line 437
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, "linearSmoothScroller":Lcom/android/internal/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 440
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 1994
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method validateChildOrder()V
    .locals 11

    .line 1953
    const-string v0, "LinearLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validating child count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1955
    return-void

    .line 1957
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1958
    .local v2, "lastPos":I
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1959
    .local v3, "lastScreenLoc":I
    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    .line 1960
    move v4, v1

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1961
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1962
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1963
    .local v6, "pos":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 1964
    .local v7, "screenLoc":I
    if-ge v6, v2, :cond_2

    .line 1965
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1966
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1969
    :cond_2
    if-gt v7, v3, :cond_3

    .line 1960
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "pos":I
    .end local v7    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1970
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "pos":I
    .restart local v7    # "screenLoc":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1971
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    .end local v4    # "i":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "pos":I
    .end local v7    # "screenLoc":I
    :cond_4
    move v4, v1

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1976
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1977
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1978
    .restart local v6    # "pos":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 1979
    .restart local v7    # "screenLoc":I
    if-ge v6, v2, :cond_6

    .line 1980
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1981
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_5

    move v0, v1

    nop

    :cond_5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1984
    :cond_6
    if-lt v7, v3, :cond_7

    .line 1975
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "pos":I
    .end local v7    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1985
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "pos":I
    .restart local v7    # "screenLoc":I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1986
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1990
    .end local v4    # "i":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "pos":I
    .end local v7    # "screenLoc":I
    :cond_8
    return-void
.end method
