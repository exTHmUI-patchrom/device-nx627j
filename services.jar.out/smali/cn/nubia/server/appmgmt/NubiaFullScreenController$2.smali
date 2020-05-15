.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 320
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 323
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/WindowManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 327
    :try_start_1
    const-string v1, "NubiaFullScreenController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeFullScreenWindow mFullScreenWindowView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 329
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$502(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Landroid/view/View;)Landroid/view/View;

    .line 330
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$402(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z

    .line 331
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :cond_0
    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeFullScreenWindow Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
