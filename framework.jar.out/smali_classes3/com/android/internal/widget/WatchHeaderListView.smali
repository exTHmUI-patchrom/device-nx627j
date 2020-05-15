.class public Lcom/android/internal/widget/WatchHeaderListView;
.super Landroid/widget/ListView;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
    }
.end annotation


# instance fields
.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method private wrapAdapterIfNecessary()V
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 112
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 113
    instance-of v1, v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapHeaderListAdapterInternal()V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    iget-object v2, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->setTopPanel(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->dispatchDataSetObserverOnChangedInternal()V

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WatchHeaderListView;->setTopPanel(Landroid/view/View;)V

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WatchHeaderListView can host only one header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 96
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    return-object v0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    return-object v0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 86
    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 90
    :cond_0
    return-object v0
.end method

.method public getHeaderViewsCount()I
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_1

    .line 107
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 106
    :goto_1
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WatchHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    .line 73
    return-void
.end method

.method public setTopPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 65
    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    .line 67
    return-void
.end method

.method protected wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 52
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method
