.class public abstract Lcom/android/internal/widget/SimpleItemAnimator;
.super Lcom/android/internal/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 116
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    .line 122
    :cond_0
    iget v4, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 10
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 153
    iget v7, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 154
    .local v7, "fromLeft":I
    iget v8, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 156
    .local v8, "fromTop":I
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget v0, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 158
    .local v0, "toLeft":I
    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 161
    .end local v0    # "toLeft":I
    .local v6, "toTop":I
    .local v9, "toLeft":I
    :goto_0
    move v9, v0

    move v6, v1

    goto :goto_1

    .line 160
    .end local v6    # "toTop":I
    .end local v9    # "toLeft":I
    :cond_0
    iget v0, p4, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 161
    .restart local v0    # "toLeft":I
    iget v1, p4, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_0

    .line 163
    .end local v0    # "toLeft":I
    .restart local v6    # "toTop":I
    .restart local v9    # "toLeft":I
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/SimpleItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 11
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 92
    iget v6, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 93
    .local v6, "oldLeft":I
    iget v7, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 94
    .local v7, "oldTop":I
    iget-object v8, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 95
    .local v8, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_0
    move v9, v0

    .line 96
    .local v9, "newLeft":I
    if-nez p3, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_1
    move v10, v0

    .line 97
    .local v10, "newTop":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v6, v9, :cond_2

    if-eq v7, v10, :cond_3

    .line 98
    :cond_2
    nop

    .line 99
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v9

    .line 100
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    .line 98
    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 104
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v3, v7

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 135
    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 144
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_1
    :goto_0
    iget v3, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v5, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public abstract animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 86
    iget-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

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

.method public final dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 304
    return-void
.end method

.method public final dispatchAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 346
    return-void
.end method

.method public final dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->onChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 319
    return-void
.end method

.method public final dispatchChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->onChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 359
    return-void
.end method

.method public final dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 294
    return-void
.end method

.method public final dispatchMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 337
    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 280
    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 328
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 405
    return-void
.end method

.method public onAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 394
    return-void
.end method

.method public onChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 455
    return-void
.end method

.method public onChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 442
    return-void
.end method

.method public onMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 428
    return-void
.end method

.method public onMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 417
    return-void
.end method

.method public onRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 382
    return-void
.end method

.method public onRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 371
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 74
    return-void
.end method
