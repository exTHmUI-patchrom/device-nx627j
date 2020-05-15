.class Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 224
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 228
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 266
    .local v0, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 269
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 270
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 271
    .local v4, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v4, v0, :cond_0

    .line 272
    iput v3, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 273
    return-void

    .line 269
    .end local v4    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 278
    return-void
.end method

.method public getCount()I
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-static {v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->access$000(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 233
    .local v1, "count":I
    iget v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->access$000(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 242
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 243
    add-int/lit8 p1, p1, 0x1

    .line 245
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 255
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 259
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 260
    .local v1, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 261
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 283
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 284
    return-void
.end method
