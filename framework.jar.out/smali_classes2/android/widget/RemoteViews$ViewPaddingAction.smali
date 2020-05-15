.class Landroid/widget/RemoteViews$ViewPaddingAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPaddingAction"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field top:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIII)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1998
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1999
    iput p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    .line 2000
    iput p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 2001
    iput p4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 2002
    iput p5, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 2003
    iput p6, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 2004
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2006
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 2007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    .line 2008
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 2010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 2011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 2012
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 2024
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2025
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 2026
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    iget v2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    iget v3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    iget v4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2027
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 2031
    const/16 v0, 0xe

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2015
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2018
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2019
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    return-void
.end method
