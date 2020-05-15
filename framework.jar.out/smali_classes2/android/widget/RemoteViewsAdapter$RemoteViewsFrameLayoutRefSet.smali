.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Landroid/util/SparseArray;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/util/LinkedList<",
        "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    .line 411
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/RemoteViewsAdapter;
    .param p2, "x1"    # Landroid/widget/RemoteViewsAdapter$1;

    .line 411
    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    return-void
.end method


# virtual methods
.method public add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "layout"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 418
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 421
    .local v0, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    if-nez v0, :cond_0

    .line 422
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 423
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->put(ILjava/lang/Object;)V

    .line 427
    :cond_0
    iput p1, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    .line 428
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;

    .line 436
    if-nez p2, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 440
    .local v0, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 443
    .local v2, "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Z)V

    .line 444
    .end local v2    # "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_0

    .line 446
    :cond_1
    return-void
.end method

.method public removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 2
    .param p1, "rvfl"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 452
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    if-gez v0, :cond_0

    .line 453
    return-void

    .line 455
    :cond_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 456
    .local v0, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 459
    :cond_1
    const/4 v1, -0x1

    iput v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    .line 460
    return-void
.end method
