.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    .line 756
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 760
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 761
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 765
    .local v0, "vg":Landroid/view/ViewGroup;
    instance-of v1, p1, Landroid/widget/AdapterViewAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .line 768
    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 770
    :cond_1
    const/4 v1, 0x0

    .line 771
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 772
    .local v3, "childCount":I
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 773
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x102024d

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 774
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 775
    move-object v1, v4

    check-cast v1, Landroid/content/Intent;

    .line 776
    goto :goto_1

    .line 772
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    .end local v2    # "i":I
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-void

    .line 781
    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->access$300(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 783
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 784
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 785
    iget-object v5, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v5, p2, v6, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 787
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "childCount":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    return-void
.end method
