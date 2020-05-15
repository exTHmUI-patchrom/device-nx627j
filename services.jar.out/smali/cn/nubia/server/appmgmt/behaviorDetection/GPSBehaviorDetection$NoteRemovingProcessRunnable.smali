.class Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;
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
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;IZ)V

    .line 164
    :cond_0
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
