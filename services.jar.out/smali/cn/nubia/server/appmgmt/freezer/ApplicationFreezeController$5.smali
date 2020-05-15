.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;
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

    .line 1142
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1146
    .local v0, "processList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$500(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$500(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget v1, v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1151
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1152
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1153
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lnubia/os/IFreezeCallback;

    move-result-object v4

    iget v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v4, v5}, Lnubia/os/IFreezeCallback;->scheduleEnterDoze(I)V

    .line 1154
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 1156
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1157
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 1158
    .restart local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lnubia/os/IFreezeCallback;

    move-result-object v4

    iget v5, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v4, v5}, Lnubia/os/IFreezeCallback;->scheduleLeaveDoze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1159
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_1

    .line 1163
    :cond_1
    goto :goto_2

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1164
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v1, :cond_2

    const-string v1, "ApplicationFreeze"

    const-string/jumbo v2, "noteIdleState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$5;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$300(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    .line 1166
    return-void

    .line 1148
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
