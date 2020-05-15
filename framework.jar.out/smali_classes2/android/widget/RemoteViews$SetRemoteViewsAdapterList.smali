.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterList"
.end annotation


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V
    .locals 0
    .param p2, "id"    # I
    .param p4, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .line 807
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 808
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    .line 809
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    .line 810
    iput p4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    .line 811
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 813
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    .line 816
    sget-object p1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    .line 817
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 827
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 828
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 831
    :cond_0
    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_1

    .line 832
    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void

    .line 837
    :cond_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/widget/AdapterViewAnimator;

    if-nez v1, :cond_2

    .line 838
    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void

    .line 843
    :cond_2
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    .line 844
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    .line 845
    .local v1, "v":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 846
    .local v2, "a":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 847
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViewsListAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 849
    :cond_3
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 851
    .end local v1    # "v":Landroid/widget/AbsListView;
    .end local v2    # "a":Landroid/widget/Adapter;
    :goto_0
    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/widget/AdapterViewAnimator;

    if-eqz v1, :cond_6

    .line 852
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterViewAnimator;

    .line 853
    .local v1, "v":Landroid/widget/AdapterViewAnimator;
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 854
    .restart local v2    # "a":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 855
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViewsListAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 857
    :cond_5
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 860
    .end local v1    # "v":Landroid/widget/AdapterViewAnimator;
    .end local v2    # "a":Landroid/widget/Adapter;
    :cond_6
    :goto_1
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 864
    const/16 v0, 0xf

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 820
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 823
    return-void
.end method
