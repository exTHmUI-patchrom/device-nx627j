.class public Lcom/android/internal/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemLayoutRes:I

.field private final mOverflowOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "overflowOnly"    # Z
    .param p4, "itemLayoutRes"    # I

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 37
    iput-boolean p3, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 38
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 40
    iput p4, p0, Lcom/android/internal/view/menu/MenuAdapter;->mItemLayoutRes:I

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 42
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 103
    .local v0, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 106
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 107
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 108
    .local v4, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v4, v0, :cond_0

    .line 109
    iput v3, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 110
    return-void

    .line 106
    .end local v4    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 115
    return-void
.end method

.method public getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 58
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getForceShowIcon()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .line 66
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_1

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 71
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 81
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/internal/view/menu/MenuAdapter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .line 87
    .local v1, "currGroupId":I
    add-int/lit8 v2, p1, -0x1

    if-ltz v2, :cond_1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 89
    .local v2, "prevGroupId":I
    :goto_0
    move-object v3, p2

    check-cast v3, Lcom/android/internal/view/menu/ListMenuItemView;

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 90
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 93
    move-object v3, p2

    check-cast v3, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 94
    .local v3, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-boolean v4, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v4, :cond_3

    .line 95
    move-object v4, p2

    check-cast v4, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 97
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 98
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 120
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 50
    return-void
.end method
