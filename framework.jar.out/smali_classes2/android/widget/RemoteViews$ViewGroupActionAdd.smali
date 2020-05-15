.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# instance fields
.field private mIndex:I

.field private mNestedViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;

    .line 1608
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    .line 1609
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I

    .line 1611
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1612
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    .line 1613
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 1614
    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 1615
    if-eqz p3, :cond_0

    .line 1616
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1618
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;)V
    .locals 7
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p4, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/widget/RemoteViews$BitmapCache;",
            "Landroid/content/pm/ApplicationInfo;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1621
    .local p6, "classCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    .line 1623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 1624
    new-instance p1, Landroid/widget/RemoteViews;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILjava/util/Map;Landroid/widget/RemoteViews$1;)V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 1625
    return-void
.end method

.method static synthetic access$1400(Landroid/widget/RemoteViews$ViewGroupActionAdd;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .line 1603
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    return v0
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1640
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1641
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1643
    .local v1, "target":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1644
    return-void

    .line 1648
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1649
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 1703
    const/4 v0, 0x4

    return v0
.end method

.method public hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "parentInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1635
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 7
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1655
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 1656
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 1657
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1660
    :cond_0
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1663
    .local v1, "targetVg":Landroid/view/ViewGroup;
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1664
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, p3}, Landroid/widget/RemoteViews;->access$1100(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v3

    .line 1666
    .local v3, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    .line 1668
    .local v4, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v4, :cond_1

    .line 1674
    iget v5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 1676
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    invoke-direct {v5, p0, v3, v4, v1}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;)V

    return-object v5

    .line 1669
    :cond_1
    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v3}, Landroid/widget/RemoteViews$AsyncApplyTask;->access$1200(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 1658
    .end local v1    # "targetVg":Landroid/view/ViewGroup;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    .end local v4    # "tree":Landroid/widget/RemoteViews$ViewTree;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/widget/RemoteViews;->access$600()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method public mergeBehavior()I
    .locals 1

    .line 1693
    const/4 v0, 0x1

    return v0
.end method

.method public prefersAsyncApply()Z
    .locals 1

    .line 1698
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .line 1688
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$1500(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1689
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1628
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1631
    return-void
.end method
