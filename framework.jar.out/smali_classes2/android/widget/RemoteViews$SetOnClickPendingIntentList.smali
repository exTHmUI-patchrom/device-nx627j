.class Landroid/widget/RemoteViews$SetOnClickPendingIntentList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickPendingIntentList"
.end annotation


# static fields
.field public static final TAG:I = 0xc8


# instance fields
.field pendingIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;)V
    .locals 1
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 3897
    .local p3, "pendingIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3898
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3901
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    .line 3902
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    .line 3903
    return-void

    .line 3899
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "empty or null list"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 3908
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    .line 3911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3912
    .local p1, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    .line 3913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 3914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3915
    nop

    .line 3916
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3917
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3913
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3920
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 3946
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3947
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3948
    return-void

    .line 3950
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->access$200(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3951
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3952
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3953
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 3955
    return-void

    .line 3959
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;-><init>(Landroid/widget/RemoteViews$SetOnClickPendingIntentList;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3971
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3972
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 3978
    const/16 v0, 0xc8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3926
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3929
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3930
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 3931
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3932
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3933
    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 3935
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3937
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    goto :goto_0

    .line 3938
    :cond_1
    return-void
.end method
