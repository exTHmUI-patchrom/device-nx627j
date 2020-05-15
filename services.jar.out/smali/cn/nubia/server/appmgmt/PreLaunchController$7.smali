.class Lcn/nubia/server/appmgmt/PreLaunchController$7;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 579
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$7;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$7;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$500(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$7;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$500(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 585
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$7;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2600(Lcn/nubia/server/appmgmt/PreLaunchController;)Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$7;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$500(Lcn/nubia/server/appmgmt/PreLaunchController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->writeDataToFile(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    goto :goto_0

    :catch_0
    move-exception v1

    .line 588
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
