.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanelViewHelper"
.end annotation


# instance fields
.field private final mCalculator:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mIconTextSpacing:I

.field private final mSidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconTextSpacing"    # I

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    .line 1621
    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1622
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1623
    const v1, 0x10500a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    .line 1624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    .line 1625
    return-void
.end method

.method private createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1648
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1649
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1648
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2000(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v0

    .line 1650
    .local v0, "button":Landroid/view/View;
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1651
    return-object v0
.end method

.method private shouldShowIcon(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1655
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1656
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x1020041

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1658
    :cond_1
    return v0
.end method


# virtual methods
.method public calculateWidth(Landroid/view/MenuItem;)I
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1640
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1641
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1640
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2700(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    .line 1642
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1644
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .line 1628
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    if-eqz p3, :cond_0

    .line 1630
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v1

    .line 1630
    invoke-static {p3, p1, v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$2700(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    goto :goto_0

    .line 1633
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p3

    .line 1635
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1636
    return-object p3
.end method
