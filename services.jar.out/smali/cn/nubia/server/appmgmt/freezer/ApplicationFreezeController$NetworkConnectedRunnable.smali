.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Z)V
    .locals 0
    .param p2, "connected"    # Z

    .line 143
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean p2, p1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsConnectNetWok:Z

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$NetworkConnectedRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$300(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
