.class Landroid/widget/RemoteViews$SetOnClickFillInIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickFillInIntent"
.end annotation


# instance fields
.field fillInIntent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 652
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 653
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    .line 654
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 655
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 657
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    .line 659
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 660
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 669
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->access$200(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    const-string v1, "RemoteViews"

    const-string v2, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 677
    :cond_1
    if-ne v0, p1, :cond_2

    .line 678
    const v1, 0x102024d

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 680
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 719
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_3
    :goto_0
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 725
    const/16 v0, 0x9

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 663
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 665
    return-void
.end method
