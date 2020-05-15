.class Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;
.super Ljava/lang/Object;
.source "GPSBehaviorDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnResumeGPSNotifyRunnable"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->packageName:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;IZ)V

    .line 131
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$202(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Z)Z

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
