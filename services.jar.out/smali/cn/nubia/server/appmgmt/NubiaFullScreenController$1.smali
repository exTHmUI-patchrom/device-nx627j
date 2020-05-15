.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;->noteFocusedApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

.field final synthetic val$focusedAppPkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 126
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->val$focusedAppPkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->val$focusedAppPkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$202(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 145
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 146
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$902(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z

    .line 147
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_4
    :goto_1
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
