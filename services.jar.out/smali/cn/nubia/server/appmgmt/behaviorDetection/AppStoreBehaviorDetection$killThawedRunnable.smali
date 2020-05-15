.class Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;
.super Ljava/lang/Object;
.source "AppStoreBehaviorDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "killThawedRunnable"
.end annotation


# instance fields
.field killPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->killPackageName:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->killPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->killPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v1

    iget-boolean v1, v1, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ApplicationBehaviorDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "killPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->killPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,APP_STORE_LIST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    .line 82
    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$killThawedRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$200(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;IZ)V

    .line 85
    :cond_1
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
