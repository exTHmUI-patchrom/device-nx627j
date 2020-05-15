.class public abstract Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private final mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10599
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10614
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 10615
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 10597
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 10709
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10710
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 10711
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10713
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10714
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 10716
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v2, :cond_2

    .line 10717
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10718
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    .line 10719
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 10721
    :cond_2
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10722
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10725
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_5

    .line 10726
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10727
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    .line 10728
    .local v1, "hadJumpTarget":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    .line 10729
    if-eqz v1, :cond_5

    .line 10731
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_4

    .line 10732
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10733
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_1

    .line 10735
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10739
    .end local v1    # "hadJumpTarget":Z
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 10759
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 10752
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 10745
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 10653
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .line 10705
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10768
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 10769
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .line 10687
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 10695
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .line 10785
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 10787
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 10788
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 10789
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 10772
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10773
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10778
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 10644
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10645
    return-void
.end method

.method start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 10630
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10631
    iput-object p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 10632
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10635
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->access$1102(Lcom/android/internal/widget/RecyclerView$State;I)I

    .line 10636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10637
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10638
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10639
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 10640
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10641
    return-void

    .line 10633
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final stop()V
    .locals 2

    .line 10663
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 10664
    return-void

    .line 10666
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 10667
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->access$1102(Lcom/android/internal/widget/RecyclerView$State;I)I

    .line 10668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10669
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10670
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10671
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10673
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-static {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->access$1200(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 10675
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 10676
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10677
    return-void
.end method
