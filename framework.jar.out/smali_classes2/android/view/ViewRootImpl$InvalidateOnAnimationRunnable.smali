.class final Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InvalidateOnAnimationRunnable"
.end annotation


# instance fields
.field private mPosted:Z

.field private mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

.field private mTempViews:[Landroid/view/View;

.field private final mViewRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 7865
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 7868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    return-void
.end method

.method private postIfNeededLocked()V
    .locals 3

    .line 7941
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    if-nez v0, :cond_0

    .line 7942
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7943
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 7945
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7874
    monitor-enter p0

    .line 7875
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7876
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V

    .line 7877
    monitor-exit p0

    .line 7878
    return-void

    .line 7877
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7881
    monitor-enter p0

    .line 7882
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7883
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V

    .line 7884
    monitor-exit p0

    .line 7885
    return-void

    .line 7884
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 7888
    monitor-enter p0

    .line 7889
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7891
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    if-lez v0, :cond_1

    .line 7892
    .end local v0    # "i":I
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7893
    .local v0, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 7894
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7895
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 7897
    .end local v0    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    nop

    .line 7891
    move v0, v1

    goto :goto_0

    .line 7899
    .end local v1    # "i":I
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7900
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7901
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 7903
    :cond_2
    monitor-exit p0

    .line 7904
    return-void

    .line 7903
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .line 7910
    monitor-enter p0

    .line 7911
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 7913
    iget-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7914
    .local v1, "viewCount":I
    if-eqz v1, :cond_1

    .line 7915
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    if-eqz v3, :cond_0

    .line 7916
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    goto :goto_0

    :cond_0
    new-array v3, v1, [Landroid/view/View;

    .line 7915
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    iput-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 7917
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7920
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7921
    .local v2, "viewRectCount":I
    if-eqz v2, :cond_3

    .line 7922
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    if-eqz v4, :cond_2

    .line 7923
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    goto :goto_1

    :cond_2
    new-array v4, v2, [Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7922
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/View$AttachInfo$InvalidateInfo;

    iput-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7924
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7926
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7928
    move v3, v0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 7929
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 7930
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 7928
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7933
    .end local v3    # "i":I
    :cond_4
    nop

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_5

    .line 7934
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    aget-object v3, v3, v0

    .line 7935
    .local v3, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v4, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v5, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v6, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v7, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v8, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 7936
    invoke-virtual {v3}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 7933
    .end local v3    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7938
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 7926
    .end local v1    # "viewCount":I
    .end local v2    # "viewRectCount":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
