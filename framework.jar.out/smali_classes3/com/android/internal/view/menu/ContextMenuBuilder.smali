.class public Lcom/android/internal/view/menu/ContextMenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 63
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 78
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    const v0, 0xc351

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 87
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 88
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 90
    return-object v0

    .line 93
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "originalView"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 97
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    const v0, 0xc351

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 109
    new-instance v7, Lcom/android/internal/view/menu/MenuPopupHelper;

    const/4 v5, 0x0

    const v6, 0x1010501

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 115
    .local v1, "helper":Lcom/android/internal/view/menu/MenuPopupHelper;
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->show(II)V

    .line 116
    return-object v1

    .line 119
    .end local v0    # "location":[I
    .end local v1    # "helper":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
