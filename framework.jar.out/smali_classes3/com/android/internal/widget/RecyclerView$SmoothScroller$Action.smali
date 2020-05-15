.class public Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 10855
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10856
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 10864
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10865
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 10874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10840
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10848
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10875
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10876
    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 10877
    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10878
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10879
    return-void
.end method

.method private validate()V
    .locals 2

    .line 10938
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 10939
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10941
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 10944
    return-void

    .line 10942
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 10965
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .line 10947
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .line 10956
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 10974
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .line 10901
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 10897
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10898
    return-void
.end method

.method runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 10905
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 10906
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10907
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10908
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 10909
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10910
    return-void

    .line 10912
    .end local v0    # "position":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_4

    .line 10913
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 10914
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 10915
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 10916
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    .line 10918
    :cond_1
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 10921
    :cond_2
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 10924
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10925
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 10928
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10931
    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_1

    .line 10933
    :cond_4
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10935
    :goto_1
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 10969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10970
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10971
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 10951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10952
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10953
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 10960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10961
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 10962
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 10984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10985
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10986
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 10997
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10998
    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 10999
    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11000
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11002
    return-void
.end method
