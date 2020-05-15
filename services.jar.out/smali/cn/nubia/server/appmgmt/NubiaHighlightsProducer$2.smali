.class Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;
.super Landroid/content/BroadcastReceiver;
.source "NubiaHighlightsProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 591
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$100(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$300(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$202(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 597
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$200(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$200(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    const-string v1, "NubiaHighlightsProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPkgCoordinateMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$200(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$200(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$500(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$402(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->startScreenRecord()V

    goto :goto_1

    .line 598
    :cond_1
    :goto_0
    const-string v1, "NubiaHighlightsProducer"

    const-string/jumbo v2, "mPkgCoordinateMap is Empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$402(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->startScreenRecord()V

    .line 601
    return-void

    .line 607
    :cond_2
    :goto_1
    return-void
.end method
