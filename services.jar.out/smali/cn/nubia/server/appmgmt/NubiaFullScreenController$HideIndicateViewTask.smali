.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideIndicateViewTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;

    .line 528
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 535
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 538
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$902(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z

    .line 542
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
