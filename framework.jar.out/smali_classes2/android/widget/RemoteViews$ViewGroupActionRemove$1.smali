.class Landroid/widget/RemoteViews$ViewGroupActionRemove$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionRemove;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

.field final synthetic val$targetVg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$ViewGroupActionRemove;

    .line 1770
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 1774
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->access$1700(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1775
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1776
    return-void

    .line 1779
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->access$1800(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    .line 1780
    return-void
.end method
