.class final Lcom/android/internal/view/menu/CascadingMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Lcom/android/internal/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field private static final HORIZ_POSITION_LEFT:I = 0x0

.field private static final HORIZ_POSITION_RIGHT:I = 0x1

.field private static final ITEM_LAYOUT:I = 0x1090044

.field private static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field private mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field private final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShownAnchorView:Landroid/view/View;

.field private final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "popupStyleAttr"    # I
    .param p4, "popupStyleRes"    # I
    .param p5, "overflowOnly"    # Z

    .line 204
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 102
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$2;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 120
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$3;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 181
    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 205
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 207
    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 208
    iput p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 209
    iput-boolean p5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 212
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 215
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 216
    const v2, 0x105004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 215
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 218
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver;

    .line 48
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    return p1
.end method

.method private createPopupWindow()Landroid/widget/MenuPopupWindow;
    .locals 5

    .line 227
    new-instance v0, Landroid/widget/MenuPopupWindow;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 229
    .local v0, "popupWindow":Landroid/widget/MenuPopupWindow;
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    .line 230
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 233
    iget v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    .line 235
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 236
    return-object v0
.end method

.method private findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 602
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 603
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 604
    return v0

    .line 601
    .end local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1, "parent"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "submenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 463
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 464
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 465
    return-object v2

    .line 462
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 10
    .param p1, "parentInfo"    # Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .param p2, "submenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 483
    iget-object v0, p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v0

    .line 484
    .local v0, "owner":Landroid/view/MenuItem;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 486
    return-object v1

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 493
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 494
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_1

    .line 495
    move-object v4, v3

    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    .line 496
    .local v4, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v5

    .line 497
    .local v5, "headersCount":I
    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/view/menu/MenuAdapter;

    .line 498
    .local v4, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0

    .line 499
    .end local v4    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v5    # "headersCount":I
    :cond_1
    const/4 v5, 0x0

    .line 500
    .restart local v5    # "headersCount":I
    move-object v4, v3

    check-cast v4, Lcom/android/internal/view/menu/MenuAdapter;

    .line 504
    .restart local v4    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    const/4 v6, -0x1

    .line 505
    .local v6, "ownerPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v8

    .local v8, "count":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 506
    invoke-virtual {v4, v7}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    if-ne v0, v9, :cond_2

    .line 507
    move v6, v7

    .line 508
    goto :goto_2

    .line 505
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 511
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 513
    return-object v1

    .line 517
    :cond_4
    add-int/2addr v6, v5

    .line 520
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v6, v7

    .line 521
    .local v7, "ownerViewPosition":I
    if-ltz v7, :cond_6

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v7, v8, :cond_5

    goto :goto_3

    .line 526
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 523
    :cond_6
    :goto_3
    return-object v1
.end method

.method private getInitialMenuPosition()I
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 298
    .local v0, "layoutDirection":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 299
    :cond_0
    nop

    .line 298
    :goto_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 7
    .param p1, "nextMenuWidth"    # I

    .line 311
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 313
    .local v0, "lastListView":Landroid/widget/ListView;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 314
    .local v1, "screenLocation":[I
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 316
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 317
    .local v3, "displayFrame":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 319
    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 320
    aget v4, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, p1

    .line 321
    .local v4, "right":I
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_0

    .line 322
    return v5

    .line 324
    :cond_0
    return v2

    .line 326
    .end local v4    # "right":I
    :cond_1
    aget v4, v1, v5

    sub-int/2addr v4, p1

    .line 327
    .local v4, "left":I
    if-gez v4, :cond_2

    .line 328
    return v2

    .line 330
    :cond_2
    return v5
.end method

.method private showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 13
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 351
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    const v3, 0x1090044

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .line 358
    .local v1, "adapter":Lcom/android/internal/view/menu/MenuAdapter;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 367
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lcom/android/internal/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 368
    .local v2, "menuWidth":I
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/widget/MenuPopupWindow;

    move-result-object v4

    .line 369
    .local v4, "popupWindow":Landroid/widget/MenuPopupWindow;
    invoke-virtual {v4, v1}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 371
    iget v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 375
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 376
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 377
    .local v6, "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-direct {p0, v6, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v7

    .local v7, "parentView":Landroid/view/View;
    goto :goto_1

    .line 379
    .end local v6    # "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v7    # "parentView":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    .line 380
    .restart local v6    # "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v7, v5

    .line 383
    .restart local v7    # "parentView":Landroid/view/View;
    :goto_1
    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 385
    invoke-virtual {v4, v7}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 386
    invoke-virtual {v4, v8}, Landroid/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 387
    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 389
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v9

    .line 390
    .local v9, "nextMenuPosition":I
    if-ne v9, v3, :cond_3

    move v10, v3

    goto :goto_2

    :cond_3
    move v10, v8

    .line 391
    .local v10, "showOnRight":Z
    :goto_2
    iput v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 398
    iget v11, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v12, 0x5

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_5

    .line 399
    if-eqz v10, :cond_4

    .line 400
    move v11, v2

    .local v11, "x":I
    :goto_3
    goto :goto_4

    .line 402
    .end local v11    # "x":I
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_3

    .line 405
    :cond_5
    if-eqz v10, :cond_6

    .line 406
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    goto :goto_3

    .line 408
    :cond_6
    neg-int v11, v2

    .line 411
    .restart local v11    # "x":I
    :goto_4
    invoke-virtual {v4, v11}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 415
    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 416
    invoke-virtual {v4, v8}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 417
    .end local v9    # "nextMenuPosition":I
    .end local v10    # "showOnRight":Z
    .end local v11    # "x":I
    goto :goto_5

    .line 418
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v3, :cond_8

    .line 419
    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 421
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v3, :cond_9

    .line 422
    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 424
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 425
    .local v3, "epicenterBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 429
    .end local v3    # "epicenterBounds":Landroid/graphics/Rect;
    :goto_5
    new-instance v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v3, v4, p1, v9}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 430
    .local v3, "menuInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 434
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 435
    .local v9, "listView":Landroid/widget/ListView;
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 438
    if-nez v6, :cond_a

    iget-boolean v10, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v10, :cond_a

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 439
    const v10, 0x10900ac

    invoke-virtual {v0, v10, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 441
    .local v10, "titleItemView":Landroid/widget/FrameLayout;
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 442
    .local v11, "titleView":Landroid/widget/TextView;
    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 443
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v9, v10, v5, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 447
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 449
    .end local v10    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v11    # "titleView":Landroid/widget/TextView;
    :cond_a
    return-void
.end method


# virtual methods
.method public addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 273
    .local v1, "addedMenus":[Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 274
    aget-object v3, v1, v2

    .line 275
    .local v3, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 273
    .end local v3    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 280
    .end local v1    # "addedMenus":[Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 8
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I

    move-result v0

    .line 614
    .local v0, "menuIndex":I
    if-gez v0, :cond_0

    .line 615
    return-void

    .line 619
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 620
    .local v1, "nextMenuIndex":I
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 622
    .local v2, "childInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 626
    .end local v2    # "childInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 627
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 628
    iget-boolean v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 630
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 631
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 633
    :cond_2
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 635
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 636
    .local v4, "count":I
    if-lez v4, :cond_3

    .line 637
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    .line 639
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 642
    :goto_0
    if-nez v4, :cond_7

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 646
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_4

    .line 647
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    const/4 v6, 0x1

    invoke-interface {v3, p1, v6}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 650
    :cond_4
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_6

    .line 651
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 652
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 654
    :cond_5
    iput-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 656
    :cond_6
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 660
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v3}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    .line 661
    :cond_7
    if-eqz p2, :cond_8

    .line 665
    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 666
    .local v5, "rootInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 668
    .end local v5    # "rootInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "dismissedInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 546
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 547
    .local v3, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 548
    move-object v0, v3

    .line 549
    goto :goto_1

    .line 545
    .end local v3    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 556
    iget-object v1, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 558
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 284
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 286
    return v1

    .line 288
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 682
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 575
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 576
    .local v1, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 578
    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 579
    return v2

    .line 581
    .end local v1    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 589
    :cond_2
    return v2

    .line 591
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 695
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 696
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 699
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 700
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 699
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 702
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 569
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 570
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 224
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "dropDownGravity"    # I

    .line 686
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 687
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 688
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 688
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 691
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 717
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 718
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 706
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 707
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 728
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 729
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 723
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 724
    return-void
.end method

.method public show()V
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 247
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 248
    .end local v1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 255
    .local v0, "addGlobalListener":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 256
    if-eqz v0, :cond_3

    .line 257
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 261
    .end local v0    # "addGlobalListener":Z
    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    .line 562
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 563
    .local v1, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 564
    .end local v1    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method
