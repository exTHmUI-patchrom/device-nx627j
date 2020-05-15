.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private mFullScreen:Z

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 2
    .param p1, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 80
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 52
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 81
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTouchModal(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    .line 85
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setFocusable(Z)V

    .line 87
    return-void
.end method

.method static synthetic lambda$update$0([ILandroid/view/View;IIII)V
    .locals 3
    .param p0, "mLocationOnScreen"    # [I
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 211
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int v2, p2, p4

    sub-int/2addr v1, v2

    aput v1, p0, v0

    .line 212
    const/4 v0, 0x1

    aget v1, p0, v0

    sub-int v2, p3, p5

    sub-int/2addr v1, v2

    aput v1, p0, v0

    .line 213
    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 289
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 290
    return-void
.end method

.method protected detachFromAnchor()V
    .locals 2

    .line 294
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 298
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 299
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 303
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    .line 310
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    .line 311
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    .line 312
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 315
    :cond_1
    return-void

    .line 304
    :cond_2
    :goto_0
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 249
    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 251
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 252
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 254
    iput p6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 255
    iput p7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 256
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public getAnimationStyle()I
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasContentView()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected hasDecorView()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .line 354
    if-nez p1, :cond_0

    .line 357
    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 264
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "AutofillPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAsDropDown(): anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", xoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 273
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 275
    nop

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 277
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 278
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v9

    .line 277
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 279
    .local v1, "aboveAnchor":Z
    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v4

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 282
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 284
    return-void
.end method

.method public update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "virtualBounds"    # Landroid/graphics/Rect;

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    .line 117
    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7d8

    goto :goto_1

    .line 118
    :cond_1
    const/16 v3, 0x3ed

    .line 117
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillPopupWindow;->setWindowLayoutType(I)V

    .line 124
    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_3

    .line 125
    const/4 p2, 0x0

    .line 126
    const/4 p3, 0x0

    .line 130
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 131
    .local v1, "outPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 132
    iget p4, v1, Landroid/graphics/Point;->x:I

    .line 133
    if-eq p5, v2, :cond_2

    .line 134
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p5

    .line 136
    .end local p3    # "offsetY":I
    .local v3, "offsetY":I
    move p3, v3

    .end local v1    # "outPoint":Landroid/graphics/Point;
    .end local v3    # "offsetY":I
    .restart local p3    # "offsetY":I
    :cond_2
    move-object v1, p1

    .line 137
    .local v1, "actualAnchor":Landroid/view/View;
    goto :goto_2

    .end local v1    # "actualAnchor":Landroid/view/View;
    :cond_3
    if-eqz p6, :cond_4

    .line 138
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p6, Landroid/graphics/Rect;->left:I

    aput v4, v3, v0

    iget v4, p6, Landroid/graphics/Rect;->top:I

    aput v4, v3, v1

    .line 139
    .local v3, "mLocationOnScreen":[I
    new-instance v4, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V

    .line 204
    .local v4, "actualAnchor":Landroid/view/View;
    iget v5, p6, Landroid/graphics/Rect;->left:I

    iget v6, p6, Landroid/graphics/Rect;->top:I

    iget v7, p6, Landroid/graphics/Rect;->right:I

    iget v8, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollX(I)V

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollY(I)V

    .line 210
    new-instance v5, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;

    invoke-direct {v5, v3}, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;-><init>([I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 214
    invoke-virtual {v4, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 215
    .end local v3    # "mLocationOnScreen":[I
    nop

    .line 216
    move-object v1, v4

    goto :goto_2

    .end local v4    # "actualAnchor":Landroid/view/View;
    :cond_4
    move-object v1, p1

    .line 219
    .restart local v1    # "actualAnchor":Landroid/view/View;
    :goto_2
    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-nez v3, :cond_5

    .line 221
    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_3

    .line 222
    :cond_5
    if-ne p5, v2, :cond_6

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_3

    .line 227
    :cond_6
    const v0, 0x103030b

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    .line 229
    :goto_3
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    invoke-virtual {p0, p4}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    .line 231
    invoke-virtual {p0, p5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    .line 232
    invoke-virtual {p0, v1, p2, p3}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_4

    .line 234
    :cond_7
    move-object v3, p0

    move-object v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    .line 236
    :goto_4
    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 240
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    goto :goto_0

    .line 241
    :cond_0
    const/4 v0, 0x3

    .line 242
    .local v0, "layoutDirection":I
    :goto_0
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 244
    return-void
.end method
