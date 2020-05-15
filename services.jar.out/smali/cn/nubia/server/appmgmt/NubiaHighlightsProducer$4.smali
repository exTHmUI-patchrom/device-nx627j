.class Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;
.super Ljava/lang/Object;
.source "NubiaHighlightsProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 626
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 629
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$600(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "highlightsAppPid":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$700(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 632
    .local v1, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 633
    .local v3, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$800(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 635
    goto :goto_1

    .line 637
    .end local v3    # "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 638
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$900(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    const-string v2, "NubiaHighlightsProducer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "highlightsAppPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mHighlightsAppPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$1000(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$1000(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 643
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$1002(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;I)I

    .line 644
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$1100(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 645
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 646
    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->access$1100(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method
