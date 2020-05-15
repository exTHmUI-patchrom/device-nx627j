.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lcom/android/internal/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 59
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010300

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .line 64
    const/4 v4, 0x0

    const v5, 0x1010300

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .line 70
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const v0, 0x800003

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 320
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 76
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 78
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 79
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 80
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 81
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 82
    return-void
.end method

.method private createPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 14

    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 217
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 218
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 219
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 221
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 222
    .local v3, "smallestWidth":I
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 224
    .local v4, "minSmallestWidthCascading":I
    if-lt v3, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 227
    .local v5, "enableCascadingSubmenus":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 228
    new-instance v12, Lcom/android/internal/view/menu/CascadingMenuPopup;

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .local v6, "popup":Lcom/android/internal/view/menu/MenuPopup;
    goto :goto_1

    .line 231
    .end local v6    # "popup":Lcom/android/internal/view/menu/MenuPopup;
    :cond_1
    new-instance v6, Lcom/android/internal/view/menu/StandardMenuPopup;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v12, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v13, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    .line 236
    .restart local v6    # "popup":Lcom/android/internal/view/menu/MenuPopup;
    :goto_1
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 237
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 240
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 241
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 242
    iget-boolean v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 243
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuPopup;->setGravity(I)V

    .line 245
    return-object v6
.end method

.method private showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    .line 250
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopup;
    invoke-virtual {v0, p4}, Lcom/android/internal/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 252
    if-eqz p3, :cond_1

    .line 256
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 257
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 256
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 258
    .local v1, "hgrav":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p1, v2

    .line 262
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 263
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 269
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 270
    .local v2, "density":F
    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 271
    .local v3, "halfSize":I
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v3

    sub-int v6, p2, v3

    add-int v7, p1, v3

    add-int v8, p2, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    .local v4, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lcom/android/internal/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 276
    .end local v1    # "hgrav":I
    .end local v2    # "density":F
    .end local v3    # "halfSize":I
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->show()V

    .line 277
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->dismiss()V

    .line 287
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->createPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDismiss()V
    .locals 1

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    .line 300
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 303
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 96
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 97
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 123
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 124
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 85
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 86
    return-void
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 311
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 312
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 315
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 165
    return v2

    .line 168
    :cond_1
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 169
    return v1
.end method

.method public tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 197
    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 205
    return v1
.end method
