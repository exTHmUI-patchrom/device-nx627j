.class final Lcn/nubia/server/presssensor/PressSensorService$BinderService;
.super Lnubia/os/presssensor/IPressSensorManager$Stub;
.source "PressSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/presssensor/PressSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Lnubia/os/presssensor/IPressSensorManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressSensorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p2, "x1"    # Lcn/nubia/server/presssensor/PressSensorService$1;

    .line 483
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$BinderService;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PressSensorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/presssensor/PressSensorService;->access$1900(Lcn/nubia/server/presssensor/PressSensorService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public registerPressListener(Lnubia/os/presssensor/IPressListener;)V
    .locals 3
    .param p1, "listener"    # Lnubia/os/presssensor/IPressListener;

    .line 487
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_0
    invoke-interface {p1}, Lnubia/os/presssensor/IPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 489
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressSensorService;->access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    monitor-exit v0

    return-void

    .line 492
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressSensorService;->access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v1    # "binder":Landroid/os/IBinder;
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerRankListener(Lnubia/os/presssensor/IRankListener;)V
    .locals 5
    .param p1, "listener"    # Lnubia/os/presssensor/IRankListener;

    .line 517
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 518
    :try_start_0
    invoke-interface {p1}, Lnubia/os/presssensor/IRankListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 519
    .local v1, "key":Landroid/os/IBinder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v3}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 520
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v3}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    invoke-virtual {v3}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->getKey()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 521
    monitor-exit v0

    return-void

    .line 519
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {v2, v3, v1, p1}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;-><init>(Lcn/nubia/server/presssensor/PressSensorService;Landroid/os/IBinder;Lnubia/os/presssensor/IRankListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    .local v2, "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    :try_start_1
    invoke-virtual {v2}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->attach()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    nop

    .line 531
    :try_start_2
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v3}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v3}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 533
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v3, v4}, Lcn/nubia/server/presssensor/PressSensorService;->access$1802(Lcn/nubia/server/presssensor/PressSensorService;Z)Z

    .line 534
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v3}, Lcn/nubia/server/presssensor/PressSensorService;->access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcn/nubia/server/presssensor/PressSensorService$BinderService$1;

    invoke-direct {v4, p0}, Lcn/nubia/server/presssensor/PressSensorService$BinderService$1;-><init>(Lcn/nubia/server/presssensor/PressSensorService$BinderService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    .end local v1    # "key":Landroid/os/IBinder;
    .end local v2    # "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    :cond_2
    monitor-exit v0

    .line 544
    return-void

    .line 528
    .restart local v1    # "key":Landroid/os/IBinder;
    .restart local v2    # "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    :catch_0
    move-exception v3

    .line 529
    .local v3, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 543
    .end local v1    # "key":Landroid/os/IBinder;
    .end local v2    # "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V
    .locals 1
    .param p1, "controller"    # Lnubia/os/presssensor/IPressGestureCtrl;

    .line 509
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0, p1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1602(Lcn/nubia/server/presssensor/PressSensorService;Lnubia/os/presssensor/IPressGestureCtrl;)Lnubia/os/presssensor/IPressGestureCtrl;

    .line 510
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1700(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1700(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/presssensor/PressGestureListener;->setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V

    .line 513
    :cond_0
    return-void
.end method

.method public unregisterPressListener(Lnubia/os/presssensor/IPressListener;)V
    .locals 3
    .param p1, "listener"    # Lnubia/os/presssensor/IPressListener;

    .line 498
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 499
    :try_start_0
    invoke-interface {p1}, Lnubia/os/presssensor/IPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 500
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressSensorService;->access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressSensorService;->access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .end local v1    # "binder":Landroid/os/IBinder;
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRankListener(Lnubia/os/presssensor/IRankListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/presssensor/IRankListener;

    .line 548
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-interface {p1}, Lnubia/os/presssensor/IRankListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1400(Lcn/nubia/server/presssensor/PressSensorService;Landroid/os/IBinder;)V

    .line 549
    return-void
.end method
