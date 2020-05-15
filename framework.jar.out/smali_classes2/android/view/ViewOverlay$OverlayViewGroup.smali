.class Landroid/view/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final mHostView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .line 136
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 137
    iput-object p2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    .line 143
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRenderNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    iget v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 144
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 147
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 159
    :cond_1
    return-void

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 178
    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 189
    .local v2, "parentLocation":[I
    new-array v1, v1, [I

    .line 190
    .local v1, "hostViewLocation":[I
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 191
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    const/4 v3, 0x0

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 193
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 195
    .end local v1    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 205
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    return-void

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 3

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    .line 218
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 220
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 221
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    .line 251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    .line 254
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    .local v0, "numDrawables":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 256
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 292
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 293
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 296
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 285
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 288
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 276
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 277
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 280
    :cond_0
    return-void
.end method

.method public invalidate(Z)V
    .locals 1
    .param p1, "invalidateCache"    # Z

    .line 301
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 302
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 305
    :cond_0
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 351
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 353
    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 354
    aput v0, p1, v0

    .line 355
    aput v0, p1, v2

    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 357
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 362
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 236
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 237
    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 1

    .line 317
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentCaches()V

    .line 318
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    .line 321
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .line 325
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentIfNeeded()V

    .line 326
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 329
    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 1
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .line 309
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 310
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 313
    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 333
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 340
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate()V

    .line 347
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 263
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 162
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 170
    :cond_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 209
    if-eqz p1, :cond_0

    .line 213
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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
