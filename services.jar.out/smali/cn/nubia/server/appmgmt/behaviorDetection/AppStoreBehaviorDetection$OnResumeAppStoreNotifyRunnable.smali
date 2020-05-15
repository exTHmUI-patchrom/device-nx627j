.class Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;
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
    name = "OnResumeAppStoreNotifyRunnable"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->packageName:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 102
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 103
    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection$OnResumeAppStoreNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;->access$200(Lcn/nubia/server/appmgmt/behaviorDetection/AppStoreBehaviorDetection;IZ)V

    .line 105
    .end local v1    # "length":I
    :cond_1
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
