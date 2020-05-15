.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 110
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 113
    const-string v0, "freeze_thread"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$100(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationFreeze"

    const-string v4, "doCheck"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    monitor-enter v0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
