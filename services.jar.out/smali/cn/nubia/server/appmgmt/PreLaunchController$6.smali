.class Lcn/nubia/server/appmgmt/PreLaunchController$6;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;->addBlackList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 182
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$500(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$600(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$500(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$700(Lcn/nubia/server/appmgmt/PreLaunchController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$300(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$800(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$300(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$6;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$800(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_1
    return-void

    .line 190
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
