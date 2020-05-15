.class public final Lcom/android/internal/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;

    .line 5167
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5173
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5176
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5177
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 5564
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5565
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5567
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5570
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5571
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5574
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .line 5583
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5584
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5585
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5586
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5583
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5589
    .end local v0    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 5590
    return-void

    .line 5593
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 5594
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5595
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 5597
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5598
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5599
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5601
    .end local v0    # "visibility":I
    :goto_1
    return-void
.end method

.method private invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5577
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5578
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5580
    :cond_0
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z
    .locals 9
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .line 5273
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5274
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5275
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    .line 5276
    .local v7, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 5277
    move v2, v0

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5279
    const/4 v1, 0x0

    return v1

    .line 5281
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 5282
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v1

    .line 5283
    .local v1, "endBindNs":J
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    sub-long v5, v1, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5284
    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5285
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5286
    iput p3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5288
    :cond_1
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "dispatchRecycled"    # Z

    .line 5769
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5770
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5771
    if-eqz p2, :cond_0

    .line 5772
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5774
    :cond_0
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5775
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5776
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 5307
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 5308
    .local v6, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_4

    .line 5313
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v7

    .line 5314
    .local v7, "offsetPosition":I
    if-ltz v7, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 5319
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, v6

    move v2, v7

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    .line 5321
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5323
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 5324
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5325
    .local v1, "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5326
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5327
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5328
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5330
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5333
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5334
    iput-object v6, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5335
    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5336
    return-void

    .line 5315
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5317
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5309
    .end local v7    # "offsetPosition":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 5190
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5191
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5192
    return-void
.end method

.method clearOldPositions()V
    .locals 5

    .line 6153
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6154
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6155
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6156
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6154
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6158
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6159
    .local v2, "scrapCount":I
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 6160
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6159
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6162
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 6163
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6164
    .local v3, "changedScrapCount":I
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 6165
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6168
    .end local v1    # "i":I
    .end local v3    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .line 5846
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5847
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5848
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5850
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .line 5357
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5361
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5362
    return p1

    .line 5364
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0

    .line 5358
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5359
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5997
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 5998
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6000
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 6001
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6003
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 6004
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6007
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "position"    # I

    .line 5855
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .local v2, "changedScrapSize":I
    if-nez v0, :cond_0

    .end local v2    # "changedScrapSize":I
    goto :goto_2

    .line 5856
    .restart local v2    # "changedScrapSize":I
    :cond_0
    nop

    .line 5859
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_2

    .line 5860
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5861
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 5862
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5863
    return-object v5

    .line 5859
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5867
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5868
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 5869
    .local v3, "offsetPosition":I
    if-lez v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 5870
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    .line 5871
    .local v5, "id":J
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 5872
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5873
    .local v7, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_3

    .line 5874
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5875
    return-object v7

    .line 5871
    .end local v7    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5880
    .end local v0    # "i":I
    .end local v3    # "offsetPosition":I
    .end local v5    # "id":J
    :cond_4
    return-object v1

    .line 5856
    .end local v2    # "changedScrapSize":I
    :cond_5
    :goto_2
    return-object v1
.end method

.method getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 6101
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 6102
    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .line 5838
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 5221
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .line 5945
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5946
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 5947
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5948
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5949
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 5950
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5951
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5960
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5961
    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5965
    :cond_0
    return-object v2

    .line 5966
    :cond_1
    if-nez p4, :cond_2

    .line 5970
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5971
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5972
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 5946
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5978
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5979
    .local v1, "cacheSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x0

    if-ltz v2, :cond_7

    .line 5980
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5981
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_6

    .line 5982
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_5

    .line 5983
    if-nez p4, :cond_4

    .line 5984
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5986
    :cond_4
    return-object v4

    .line 5987
    :cond_5
    if-nez p4, :cond_6

    .line 5988
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5989
    return-object v3

    .line 5979
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5993
    .end local v2    # "i":I
    :cond_7
    return-object v3
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 5891
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5894
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5895
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5896
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 5897
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5898
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5899
    return-object v3

    .line 5894
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5903
    .end local v2    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 5904
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v2

    .line 5905
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 5908
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5909
    .local v1, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 5910
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 5911
    .local v3, "layoutIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 5915
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    .line 5916
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 5917
    const/16 v4, 0x2020

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5919
    return-object v1

    .line 5912
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5924
    .end local v1    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "layoutIndex":I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5925
    .local v2, "cacheSize":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 5926
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5929
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 5930
    if-nez p2, :cond_5

    .line 5931
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5937
    :cond_5
    return-object v3

    .line 5925
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5940
    .end local v1    # "i":I
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 5842
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 5382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 5386
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .line 6171
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6172
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6173
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6174
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 6175
    .local v3, "layoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 6176
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6172
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6179
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 6137
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6138
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6139
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6140
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6141
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 6142
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6143
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6139
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6146
    .end local v0    # "cachedCount":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 6148
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6150
    :goto_1
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .line 6045
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6046
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6047
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6048
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 6053
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6046
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6056
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 6017
    if-ge p1, p2, :cond_0

    .line 6018
    move v0, p1

    .line 6019
    .local v0, "start":I
    move v1, p2

    .line 6020
    .local v1, "end":I
    const/4 v2, -0x1

    .local v2, "inBetweenOffset":I
    goto :goto_0

    .line 6022
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "inBetweenOffset":I
    :cond_0
    move v0, p2

    .line 6023
    .restart local v0    # "start":I
    move v1, p1

    .line 6024
    .restart local v1    # "end":I
    const/4 v2, 0x1

    .line 6026
    .restart local v2    # "inBetweenOffset":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6027
    .local v3, "cachedCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 6028
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6029
    .local v6, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_3

    iget v7, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v7, v0, :cond_3

    iget v7, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v7, v1, :cond_1

    .line 6030
    goto :goto_2

    .line 6032
    :cond_1
    iget v7, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v7, p1, :cond_2

    .line 6033
    sub-int v7, p2, p1

    invoke-virtual {v6, v7, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6035
    :cond_2
    invoke-virtual {v6, v2, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6027
    .end local v6    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6042
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 6065
    add-int v0, p1, p2

    .line 6066
    .local v0, "removedEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6067
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6068
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6069
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    .line 6070
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v0, :cond_0

    .line 6076
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    .line 6077
    :cond_0
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 6079
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6080
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6067
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6084
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 6011
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 6012
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    .line 6013
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 5784
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5785
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$802(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 5786
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$902(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)Z

    .line 5787
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5788
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5789
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 2

    .line 5638
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5639
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5640
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5639
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5642
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5643
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5644
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5646
    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .line 5663
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5667
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5668
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5669
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 5616
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5617
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5618
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5620
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5621
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 5622
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5623
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5625
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5626
    return-void
.end method

.method recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5677
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5684
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5689
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5694
    nop

    .line 5695
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$700(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 5696
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 5698
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 5699
    .local v3, "forceRecycle":Z
    :goto_0
    const/4 v4, 0x0

    .line 5700
    .local v4, "cached":Z
    const/4 v5, 0x0

    .line 5705
    .local v5, "recycled":Z
    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5706
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v6, :cond_7

    const/16 v6, 0x20e

    .line 5707
    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 5712
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5713
    .local v6, "cachedViewSize":I
    iget v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v6, v7, :cond_3

    if-lez v6, :cond_3

    .line 5714
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5715
    add-int/lit8 v6, v6, -0x1

    .line 5718
    :cond_3
    move v1, v6

    .line 5719
    .local v1, "targetCacheIndex":I
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->access$600()Z

    move-result v7

    if-eqz v7, :cond_6

    if-lez v6, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v8, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5721
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 5723
    add-int/lit8 v7, v6, -0x1

    .line 5724
    .local v7, "cacheIndex":I
    :goto_1
    if-ltz v7, :cond_5

    .line 5725
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v8, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5726
    .local v8, "cachedPos":I
    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 5727
    goto :goto_2

    .line 5729
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 5730
    .end local v8    # "cachedPos":I
    goto :goto_1

    .line 5731
    :cond_5
    :goto_2
    add-int/lit8 v1, v7, 0x1

    .line 5733
    .end local v7    # "cacheIndex":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5734
    const/4 v1, 0x1

    .line 5736
    .end local v4    # "cached":Z
    .end local v6    # "cachedViewSize":I
    .local v1, "cached":Z
    move v4, v1

    .end local v1    # "cached":Z
    .restart local v4    # "cached":Z
    :cond_7
    if-nez v4, :cond_8

    .line 5737
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5738
    const/4 v5, 0x1

    .line 5754
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5755
    if-nez v4, :cond_9

    if-nez v5, :cond_9

    if-eqz v0, :cond_9

    .line 5756
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5758
    :cond_9
    return-void

    .line 5690
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5685
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5678
    :cond_c
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5680
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5681
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_d

    move v1, v2

    nop

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 5634
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5635
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 5801
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5802
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5803
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5812
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 5813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5815
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    .line 5816
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5804
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 5805
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5809
    :cond_4
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    .line 5810
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5818
    :goto_2
    return-void
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .line 6127
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6128
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6129
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6130
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 6131
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6128
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6134
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .locals 2
    .param p1, "pool"    # Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6091
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 6092
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 6094
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6095
    if-eqz p1, :cond_1

    .line 6096
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 6098
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "extension"    # Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 6087
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 6088
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .line 5200
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5201
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5202
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 18
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 5410
    if-ltz v7, :cond_17

    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_17

    .line 5414
    const/4 v0, 0x0

    .line 5415
    .local v0, "fromScrapOrHiddenOrCache":Z
    const/4 v1, 0x0

    .line 5417
    .local v1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 5418
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5419
    if-eqz v1, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    move v0, v2

    .line 5422
    :cond_1
    if-nez v1, :cond_6

    .line 5423
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5424
    if-eqz v1, :cond_6

    .line 5425
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5427
    if-nez v8, :cond_4

    .line 5430
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5431
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5432
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5433
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 5434
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5435
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5437
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5439
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 5441
    :cond_5
    const/4 v0, 0x1

    .line 5445
    :cond_6
    :goto_2
    if-nez v1, :cond_f

    .line 5446
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 5447
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_e

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 5453
    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 5455
    .local v3, "type":I
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5456
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v3, v8}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5458
    if-eqz v1, :cond_7

    .line 5460
    iput v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5461
    const/4 v0, 0x1

    .line 5464
    :cond_7
    if-nez v1, :cond_a

    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    if-eqz v4, :cond_a

    .line 5467
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 5468
    invoke-virtual {v4, v6, v7, v3}, Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/android/internal/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v4

    .line 5469
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_a

    .line 5470
    iget-object v5, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5471
    if-eqz v1, :cond_9

    .line 5474
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_8

    .end local v4    # "view":Landroid/view/View;
    goto :goto_3

    .line 5475
    .restart local v4    # "view":Landroid/view/View;
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5472
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5481
    .end local v4    # "view":Landroid/view/View;
    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 5486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5487
    if-eqz v1, :cond_b

    .line 5488
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5489
    sget-boolean v4, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v4, :cond_b

    .line 5490
    invoke-direct {v6, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5494
    :cond_b
    if-nez v1, :cond_f

    .line 5495
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5496
    .local v4, "start":J
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v11, p3, v11

    if-eqz v11, :cond_c

    iget-object v11, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 5497
    move v12, v3

    move-wide v13, v4

    move-wide/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v11

    if-nez v11, :cond_c

    .line 5499
    const/4 v9, 0x0

    return-object v9

    .line 5501
    :cond_c
    iget-object v11, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v11, v11, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget-object v12, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11, v12, v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5502
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->access$600()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 5504
    iget-object v11, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v11

    .line 5505
    .local v11, "innerView":Lcom/android/internal/widget/RecyclerView;
    if-eqz v11, :cond_d

    .line 5506
    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v12, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5510
    .end local v11    # "innerView":Lcom/android/internal/widget/RecyclerView;
    :cond_d
    iget-object v11, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    .line 5511
    .local v11, "end":J
    iget-object v13, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    sub-long v14, v11, v4

    invoke-virtual {v13, v3, v14, v15}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    .end local v2    # "offsetPosition":I
    .end local v3    # "type":I
    .end local v4    # "start":J
    .end local v11    # "end":J
    goto :goto_4

    .line 5448
    .restart local v2    # "offsetPosition":I
    :cond_e
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistency detected. Invalid item position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ").state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5450
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5521
    .end local v0    # "fromScrapOrHiddenOrCache":Z
    .end local v1    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "offsetPosition":I
    .local v11, "fromScrapOrHiddenOrCache":Z
    .local v12, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_f
    :goto_4
    move v11, v0

    move-object v12, v1

    if-eqz v11, :cond_10

    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_10

    .line 5522
    const/16 v0, 0x2000

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5523
    invoke-virtual {v12, v10, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5524
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_10

    .line 5525
    nop

    .line 5526
    invoke-static {v12}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 5527
    .local v0, "changeFlags":I
    or-int/lit16 v0, v0, 0x1000

    .line 5528
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5529
    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v3

    .line 5528
    invoke-virtual {v1, v2, v12, v0, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v1

    .line 5530
    .local v1, "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v12, v1}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5534
    .end local v0    # "changeFlags":I
    .end local v1    # "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_10
    const/4 v13, 0x0

    .line 5535
    .local v13, "bound":Z
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5537
    iput v7, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    .line 5538
    :cond_11
    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5543
    :cond_12
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v14

    .line 5544
    .local v14, "offsetPosition":I
    move-object v0, v6

    move-object v1, v12

    move v2, v14

    move v3, v7

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v13

    .line 5547
    .end local v14    # "offsetPosition":I
    :cond_13
    :goto_5
    iget-object v0, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5549
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_14

    .line 5550
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5551
    .local v1, "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 5552
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_14
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 5553
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5554
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 5556
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_15
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5558
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :goto_6
    iput-object v12, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5559
    if-eqz v11, :cond_16

    if-eqz v13, :cond_16

    goto :goto_7

    :cond_16
    move v9, v10

    :goto_7
    iput-boolean v9, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5560
    return-object v12

    .line 5411
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v11    # "fromScrapOrHiddenOrCache":Z
    .end local v12    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v13    # "bound":Z
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5412
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5827
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$900(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5828
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5830
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5832
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$802(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 5833
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->access$902(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)Z

    .line 5834
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5835
    return-void
.end method

.method updateViewCacheSize()V
    .locals 4

    .line 5205
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5206
    .local v0, "extraCache":I
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5209
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5210
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_1

    .line 5211
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5210
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5213
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 7
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5235
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5240
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    return v0

    .line 5242
    :cond_0
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_4

    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5246
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5248
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5249
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 5250
    return v1

    .line 5253
    .end local v0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5254
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v5, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 5256
    :cond_3
    return v2

    .line 5243
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6108
    add-int v0, p1, p2

    .line 6109
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6110
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6111
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6112
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_0

    .line 6113
    goto :goto_1

    .line 6116
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 6117
    .local v4, "pos":I
    if-lt v4, p1, :cond_1

    if-ge v4, v0, :cond_1

    .line 6118
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6119
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6110
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "pos":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6124
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
