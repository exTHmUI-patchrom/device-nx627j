.class Landroid/widget/RemoteViews$SetRemoteInputsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteInputsAction"
.end annotation


# instance fields
.field final remoteInputs:[Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "remoteInputs"    # [Landroid/app/RemoteInput;

    .line 2135
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 2136
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    .line 2137
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    .line 2138
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2140
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 2141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    .line 2142
    sget-object p1, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    .line 2143
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 2152
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2153
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 2155
    :cond_0
    const v1, 0x10203a8

    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 2156
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 2160
    const/16 v0, 0x12

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2146
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2148
    return-void
.end method
