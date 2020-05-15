.class Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickPendingIntentList;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    .line 3959
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 3961
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    iget-object v0, v0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 3962
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 3963
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$300(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 3964
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3965
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3966
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, p1, v1, v3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 3968
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 3969
    :cond_1
    return-void
.end method
