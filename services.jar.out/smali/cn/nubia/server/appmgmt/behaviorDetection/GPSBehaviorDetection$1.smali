.class Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;
.super Landroid/database/ContentObserver;
.source "GPSBehaviorDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->registerContentObserverForGPSState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 193
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 196
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$400(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    .line 197
    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$400(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$500(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Ljava/lang/String;)V

    .line 201
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 203
    :cond_0
    :goto_0
    return-void
.end method
