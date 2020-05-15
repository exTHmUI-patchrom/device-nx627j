.class Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;
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
    name = "updateThawedListRunnable"
.end annotation


# instance fields
.field thawedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->thawedList:Ljava/util/HashSet;

    .line 48
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->thawedList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->getDataManager()Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->isInAppStoreList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 63
    .local v1, "length":I
    if-lez v1, :cond_4

    .line 64
    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v2

    iget-boolean v2, v2, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ApplicationBehaviorDetection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP_STORE_LIST: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$updateThawedListRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$200(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;IZ)V

    .line 67
    .end local v1    # "length":I
    :cond_4
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
