.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2472
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2473
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2474
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 2478
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const v4, 0x108079f

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1e

    .line 2964
    :sswitch_0
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2965
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2966
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1e

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2952
    :sswitch_1
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2953
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2955
    .local v0, "systemserverPid":I
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "/dev/cpuset/systemserver/cpus"

    const-string v6, "0-7"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "/dev/cpuset/top-app/cgroup.procs"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "/dev/stune/top-app/schedtune.boost"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->appLaunchBoosted:Z

    .line 2959
    .end local v0    # "systemserverPid":I
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2960
    goto/16 :goto_1e

    .line 2959
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2930
    :sswitch_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2931
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2000(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x9c4

    sub-long/2addr v9, v11

    cmp-long v0, v3, v9

    if-gez v0, :cond_1

    .line 2933
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2934
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "0-3"

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 2936
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "0-1"

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 2939
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v8}, Lcom/android/server/am/ActivityManagerService;->access$1902(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2940
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$2002(Lcom/android/server/am/ActivityManagerService;J)J

    goto/16 :goto_1e

    .line 2942
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x258

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2943
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2944
    .local v0, "newmsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v0, v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2945
    .end local v0    # "newmsg":Landroid/os/Message;
    goto/16 :goto_1e

    .line 2496
    :sswitch_3
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2497
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "servicerecord"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2496
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    .line 2498
    goto/16 :goto_1e

    .line 2500
    :sswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 2502
    .local v3, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 2503
    .local v4, "N":I
    move v0, v8

    .line 2503
    .local v0, "i":I
    :goto_1
    move v5, v0

    .line 2503
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_2

    .line 2505
    :try_start_4
    invoke-virtual {v3, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, v8, v7}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2507
    goto :goto_2

    .line 2506
    :catch_0
    move-exception v0

    .line 2503
    :goto_2
    add-int/lit8 v0, v5, 0x1

    .line 2503
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 2509
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2512
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V

    .line 2513
    .end local v3    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    .end local v4    # "N":I
    goto/16 :goto_1e

    .line 2493
    :sswitch_5
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 2494
    goto/16 :goto_1e

    .line 2908
    :sswitch_6
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v8, v9

    nop

    :cond_3
    move v0, v8

    .line 2909
    .local v0, "isShowing":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v9

    .line 2909
    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_4

    .line 2910
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 2909
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2912
    .end local v0    # "isShowing":Z
    .end local v3    # "i":I
    :cond_4
    goto/16 :goto_1e

    .line 2902
    :sswitch_7
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v8, v9

    nop

    :cond_5
    move v0, v8

    .line 2903
    .local v0, "isAwake":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v9

    .line 2903
    .restart local v3    # "i":I
    :goto_4
    if-ltz v3, :cond_6

    .line 2904
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 2903
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 2906
    .end local v0    # "isAwake":Z
    .end local v3    # "i":I
    :cond_6
    goto/16 :goto_1e

    .line 2914
    :sswitch_8
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2915
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .line 2915
    .local v0, "i":I
    :goto_5
    move v4, v0

    .line 2915
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_8

    .line 2916
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2917
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_7

    .line 2919
    :try_start_6
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2923
    goto :goto_6

    .line 2920
    :catch_1
    move-exception v0

    .line 2921
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to handle trust storage update for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_7
    :goto_6
    add-int/lit8 v0, v4, -0x1

    .line 2915
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_5

    .line 2926
    .end local v0    # "i":I
    :cond_8
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2927
    goto/16 :goto_1e

    .line 2926
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2888
    :sswitch_9
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/VrController;->onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2889
    return-void

    .line 2891
    :cond_9
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2892
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    .line 2893
    .local v0, "disableNonVrUi":Z
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 2894
    if-eqz v0, :cond_a

    .line 2897
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-array v5, v9, [I

    const/4 v6, 0x2

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 2899
    .end local v0    # "disableNonVrUi":Z
    :cond_a
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2900
    goto/16 :goto_1e

    .line 2899
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2885
    :sswitch_a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 2886
    goto/16 :goto_1e

    .line 2591
    :sswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2592
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2593
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2594
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2595
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_1e

    .line 2594
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2867
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    move-object v3, v0

    .line 2869
    .local v3, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_d
    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    .line 2872
    goto :goto_7

    .line 2870
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 2871
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v8}, Lcom/android/server/am/ActivityManagerService;->access$1602(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2877
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;)V

    .line 2881
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v0

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->noteSetUserIsMonkey(Z)V

    .line 2883
    .end local v3    # "connection":Landroid/app/IUiAutomationConnection;
    goto/16 :goto_1e

    .line 2863
    :sswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppTimeTracker;

    .line 2864
    .local v0, "tracker":Lcom/android/server/am/AppTimeTracker;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    .line 2865
    .end local v0    # "tracker":Lcom/android/server/am/AppTimeTracker;
    goto/16 :goto_1e

    .line 2850
    :sswitch_e
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v12, 0x3

    .line 2854
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 2850
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 2855
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2856
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2857
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2858
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2859
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2860
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2861
    goto/16 :goto_1e

    .line 2860
    :catchall_5
    move-exception v0

    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2780
    :sswitch_f
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2781
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2782
    .local v0, "procName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v11, v11, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2783
    .local v11, "uid":I
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v12, v0, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 2784
    .local v12, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v12, :cond_b

    .line 2785
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v0, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    move-object v12, v13

    .line 2787
    :cond_b
    if-eqz v12, :cond_c

    .line 2788
    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2789
    .local v13, "memLimit":J
    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 2789
    .local v7, "reportPackage":Ljava/lang/String;
    goto :goto_8

    .line 2791
    .end local v7    # "reportPackage":Ljava/lang/String;
    .end local v13    # "memLimit":J
    :cond_c
    const-wide/16 v13, 0x0

    .line 2792
    .restart local v13    # "memLimit":J
    nop

    .line 2794
    .end local v12    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v7    # "reportPackage":Ljava/lang/String;
    :goto_8
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v10, v0

    .line 2794
    .end local v0    # "procName":Ljava/lang/String;
    .local v10, "procName":Ljava/lang/String;
    move-wide v12, v13

    .line 2795
    .end local v13    # "memLimit":J
    .local v12, "memLimit":J
    if-nez v10, :cond_d

    .line 2796
    return-void

    .line 2802
    :cond_d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 2803
    .local v21, "inm":Landroid/app/INotificationManager;
    if-nez v21, :cond_e

    .line 2804
    return-void

    .line 2807
    :cond_e
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x10401c7

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v10, v15, v8

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2810
    .local v15, "text":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v14, v0

    .line 2811
    .local v14, "deleteIntent":Landroid/content/Intent;
    const-string v0, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2812
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v28, v0

    .line 2813
    .local v28, "intent":Landroid/content/Intent;
    const-string v0, "android"

    const-class v8, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, v28

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2814
    .end local v28    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "process"

    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2815
    const-string/jumbo v0, "size"

    invoke-virtual {v3, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2816
    if-eqz v7, :cond_f

    .line 2817
    const-string v0, "direct_launch"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2819
    :cond_f
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2820
    .local v8, "userId":I
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v0, v9, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2823
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2824
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2825
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2826
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2827
    const v5, 0x1060156

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2829
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10401c8

    .line 2831
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2830
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v23, 0x0

    const/high16 v25, 0x10000000

    const/16 v26, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2832
    move-object/from16 v22, v4

    move-object/from16 v24, v3

    move-object/from16 v27, v5

    invoke-static/range {v22 .. v27}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2835
    const/4 v6, 0x0

    invoke-static {v4, v6, v14, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2837
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2840
    .local v19, "notification":Landroid/app/Notification;
    :try_start_11
    const-string v0, "android"

    const-string v16, "android"
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5

    const/16 v17, 0x0

    const/16 v18, 0xc

    move-object v4, v14

    move-object/from16 v14, v21

    .line 2840
    .end local v14    # "deleteIntent":Landroid/content/Intent;
    .local v4, "deleteIntent":Landroid/content/Intent;
    move-object v5, v15

    move-object v15, v0

    .line 2840
    .end local v15    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    move/from16 v20, v8

    :try_start_12
    invoke-interface/range {v14 .. v20}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_b

    .line 2846
    :catch_3
    move-exception v0

    goto :goto_9

    .line 2843
    :catch_4
    move-exception v0

    goto :goto_a

    .line 2846
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "text":Ljava/lang/String;
    .restart local v14    # "deleteIntent":Landroid/content/Intent;
    .restart local v15    # "text":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 2846
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "reportPackage":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v10    # "procName":Ljava/lang/String;
    .end local v11    # "uid":I
    .end local v12    # "memLimit":J
    .end local v14    # "deleteIntent":Landroid/content/Intent;
    .end local v15    # "text":Ljava/lang/String;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v21    # "inm":Landroid/app/INotificationManager;
    :goto_9
    goto :goto_c

    .line 2843
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v7    # "reportPackage":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v10    # "procName":Ljava/lang/String;
    .restart local v11    # "uid":I
    .restart local v12    # "memLimit":J
    .restart local v14    # "deleteIntent":Landroid/content/Intent;
    .restart local v15    # "text":Ljava/lang/String;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    :catch_6
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 2844
    .end local v14    # "deleteIntent":Landroid/content/Intent;
    .end local v15    # "text":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v4    # "deleteIntent":Landroid/content/Intent;
    .restart local v5    # "text":Ljava/lang/String;
    :goto_a
    const-string v6, "ActivityManager"

    const-string v9, "Error showing notification for dump heap"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2847
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "reportPackage":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v10    # "procName":Ljava/lang/String;
    .end local v11    # "uid":I
    .end local v12    # "memLimit":J
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v21    # "inm":Landroid/app/INotificationManager;
    :goto_b
    nop

    .line 2848
    :goto_c
    goto/16 :goto_1e

    .line 2794
    :catchall_6
    move-exception v0

    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2759
    :sswitch_10
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2760
    .local v3, "uid":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    .line 2762
    .local v4, "firstPacket":[B
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2763
    const/16 v29, 0x0

    .line 2763
    .local v29, "i":I
    :goto_d
    move/from16 v6, v29

    .line 2763
    .end local v29    # "i":I
    .local v6, "i":I
    :try_start_14
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_11

    .line 2764
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v7, v0

    .line 2765
    .local v7, "p":Lcom/android/server/am/ProcessRecord;
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-ne v0, v3, :cond_10

    .line 2767
    :try_start_15
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 2769
    goto :goto_e

    .line 2768
    :catch_7
    move-exception v0

    .line 2763
    .end local v7    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_10
    :goto_e
    add-int/lit8 v29, v6, 0x1

    .line 2763
    .end local v6    # "i":I
    .restart local v29    # "i":I
    goto :goto_d

    .line 2772
    .end local v29    # "i":I
    :cond_11
    :try_start_16
    monitor-exit v5

    .line 2773
    goto/16 :goto_1e

    .line 2772
    :catchall_7
    move-exception v0

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v0

    .line 2748
    .end local v3    # "uid":I
    .end local v4    # "firstPacket":[B
    :sswitch_11
    :try_start_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    .line 2749
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2750
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 2751
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Storing locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for decryption UI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const-string v5, "SystemLocale"

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_8

    .line 2755
    .end local v0    # "l":Ljava/util/Locale;
    .end local v3    # "service":Landroid/os/IBinder;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    goto/16 :goto_1e

    .line 2753
    :catch_8
    move-exception v0

    .line 2754
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    const-string v4, "Error storing locale for decryption UI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2756
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1e

    .line 2736
    :sswitch_12
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_12

    .line 2737
    const-string v0, "FinishBooting"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2738
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2739
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2741
    :cond_12
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_24

    .line 2742
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_1e

    .line 2724
    :sswitch_13
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2725
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v4, v0

    .line 2726
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_13

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_13

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v0, :cond_13

    .line 2728
    :try_start_19
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v5}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 2730
    goto :goto_f

    .line 2729
    :catch_9
    move-exception v0

    .line 2732
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_13
    :goto_f
    :try_start_1a
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2733
    goto/16 :goto_1e

    .line 2732
    :catchall_8
    move-exception v0

    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2708
    :sswitch_14
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2709
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2709
    .local v0, "i":I
    :goto_10
    move v4, v0

    .line 2709
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_15

    .line 2710
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2711
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v0, :cond_14

    .line 2713
    :try_start_1d
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v6}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 2717
    goto :goto_11

    .line 2714
    :catch_a
    move-exception v0

    .line 2715
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1e
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update preferences for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_14
    :goto_11
    add-int/lit8 v0, v4, -0x1

    .line 2709
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_10

    .line 2720
    .end local v0    # "i":I
    :cond_15
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2721
    goto/16 :goto_1e

    .line 2720
    :catchall_9
    move-exception v0

    :try_start_1f
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2702
    :sswitch_15
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;)V

    .line 2703
    goto/16 :goto_1e

    .line 2688
    :sswitch_16
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_16

    const/16 v29, 0x1

    goto :goto_12

    :cond_16
    const/16 v29, 0x0

    :goto_12
    move/from16 v0, v29

    .line 2689
    .local v0, "nextState":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v3

    if-eq v3, v0, :cond_24

    .line 2693
    if-eqz v0, :cond_17

    .line 2694
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_1e

    .line 2696
    :cond_17
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_1e

    .line 2678
    .end local v0    # "nextState":Z
    :sswitch_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2679
    .local v0, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v3, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2684
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2685
    goto/16 :goto_1e

    .line 2557
    .end local v0    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v3    # "thread":Ljava/lang/Thread;
    :sswitch_18
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/ProxyInfo;

    .line 2558
    .local v3, "proxy":Landroid/net/ProxyInfo;
    const-string v0, ""

    .line 2559
    .local v0, "host":Ljava/lang/String;
    const-string v4, ""

    .line 2560
    .local v4, "port":Ljava/lang/String;
    const-string v5, ""

    .line 2561
    .local v5, "exclList":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2562
    .local v6, "pacFileUrl":Landroid/net/Uri;
    if-eqz v3, :cond_18

    .line 2563
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2564
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2565
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    .line 2566
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    .line 2568
    .end local v0    # "host":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    .local v5, "port":Ljava/lang/String;
    .local v6, "exclList":Ljava/lang/String;
    .local v7, "pacFileUrl":Landroid/net/Uri;
    :cond_18
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2569
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    .line 2569
    .local v0, "i":I
    :goto_13
    move v9, v0

    .line 2569
    .end local v0    # "i":I
    .local v9, "i":I
    if-ltz v9, :cond_1a

    .line 2570
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v10, v0

    .line 2573
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_19

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    if-nez v0, :cond_19

    .line 2575
    :try_start_21
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 2579
    goto :goto_14

    .line 2576
    :catch_b
    move-exception v0

    .line 2577
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_22
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to update http proxy for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_19
    :goto_14
    add-int/lit8 v0, v9, -0x1

    .line 2569
    .end local v9    # "i":I
    .local v0, "i":I
    goto :goto_13

    .line 2582
    .end local v0    # "i":I
    :cond_1a
    monitor-exit v8
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2583
    .end local v3    # "proxy":Landroid/net/ProxyInfo;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v6    # "exclList":Ljava/lang/String;
    .end local v7    # "pacFileUrl":Landroid/net/Uri;
    goto/16 :goto_1e

    .line 2582
    .restart local v3    # "proxy":Landroid/net/ProxyInfo;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "port":Ljava/lang/String;
    .restart local v6    # "exclList":Ljava/lang/String;
    .restart local v7    # "pacFileUrl":Landroid/net/Uri;
    :catchall_a
    move-exception v0

    :try_start_23
    monitor-exit v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2536
    .end local v3    # "proxy":Landroid/net/ProxyInfo;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v6    # "exclList":Ljava/lang/String;
    .end local v7    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_19
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2537
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2537
    .restart local v0    # "i":I
    :goto_15
    move v4, v0

    .line 2537
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_1d

    .line 2538
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2539
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1c

    .line 2541
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->ENABLE:Z

    if-eqz v0, :cond_1b

    .line 2542
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    if-eqz v0, :cond_1b

    .line 2543
    goto :goto_16

    .line 2548
    :cond_1b
    :try_start_25
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 2551
    goto :goto_16

    .line 2549
    :catch_c
    move-exception v0

    .line 2550
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_26
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1c
    :goto_16
    add-int/lit8 v0, v4, -0x1

    .line 2537
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_15

    .line 2554
    .end local v0    # "i":I
    :cond_1d
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2555
    goto/16 :goto_1e

    .line 2554
    :catchall_b
    move-exception v0

    :try_start_27
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2670
    :sswitch_1a
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2671
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    .line 2672
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2673
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2674
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2675
    .end local v0    # "nmsg":Landroid/os/Message;
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2676
    goto/16 :goto_1e

    .line 2675
    :catchall_c
    move-exception v0

    :try_start_29
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2656
    :sswitch_1b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 2657
    .local v3, "inm":Landroid/app/INotificationManager;
    if-nez v3, :cond_1e

    .line 2658
    return-void

    .line 2661
    :cond_1e
    :try_start_2a
    const-string v0, "android"

    const/16 v4, 0xb

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v0, v7, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_d

    goto :goto_17

    .line 2666
    :catch_d
    move-exception v0

    .line 2666
    .end local v3    # "inm":Landroid/app/INotificationManager;
    goto :goto_18

    .line 2663
    .restart local v3    # "inm":Landroid/app/INotificationManager;
    :catch_e
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2667
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "inm":Landroid/app/INotificationManager;
    :goto_17
    nop

    .line 2668
    :goto_18
    goto/16 :goto_1e

    .line 2611
    :sswitch_1c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 2612
    .restart local v3    # "inm":Landroid/app/INotificationManager;
    if-nez v3, :cond_1f

    .line 2613
    return-void

    .line 2616
    :cond_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2617
    .local v5, "root":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2618
    .local v13, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v13, :cond_20

    .line 2619
    return-void

    .line 2623
    :cond_20
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v14, v0

    .line 2624
    .local v14, "context":Landroid/content/Context;
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040270

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 2625
    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    .line 2624
    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 2626
    .restart local v15    # "text":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v0, v14, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2629
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2630
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2631
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2632
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2633
    const v6, 0x1060156

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2635
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040271

    .line 2637
    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2636
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    iget v4, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v11, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2638
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2641
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2b} :catch_11

    .line 2643
    .local v11, "notification":Landroid/app/Notification;
    :try_start_2c
    const-string v7, "android"

    const-string v8, "android"

    const/4 v9, 0x0

    const/16 v10, 0xb

    iget v12, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v6, v3

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_2c} :catch_11

    .line 2650
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v14    # "context":Landroid/content/Context;
    .end local v15    # "text":Ljava/lang/String;
    :goto_19
    goto :goto_1a

    .line 2649
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v14    # "context":Landroid/content/Context;
    .restart local v15    # "text":Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 2649
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v14    # "context":Landroid/content/Context;
    .end local v15    # "text":Ljava/lang/String;
    goto :goto_1a

    .line 2646
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v14    # "context":Landroid/content/Context;
    .restart local v15    # "text":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 2647
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_2d
    const-string v4, "ActivityManager"

    const-string v6, "Error showing notification for heavy-weight app"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_2d} :catch_11

    .line 2647
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_19

    .line 2653
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v14    # "context":Landroid/content/Context;
    .end local v15    # "text":Ljava/lang/String;
    :goto_1a
    goto :goto_1b

    .line 2651
    :catch_11
    move-exception v0

    .line 2652
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v6, "Unable to create context for heavy notification"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2654
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "inm":Landroid/app/INotificationManager;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "process":Lcom/android/server/am/ProcessRecord;
    :goto_1b
    goto/16 :goto_1e

    .line 2608
    :sswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    .line 2609
    goto/16 :goto_1e

    .line 2597
    :sswitch_1e
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2598
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 2599
    .local v6, "appId":I
    iget v12, v2, Landroid/os/Message;->arg2:I

    .line 2600
    .local v12, "userId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2601
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2602
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2603
    .local v13, "reason":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2605
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2606
    goto/16 :goto_1e

    .line 2605
    :catchall_d
    move-exception v0

    :try_start_2f
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2585
    :sswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2586
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2587
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2588
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2589
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_1e

    .line 2588
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_e
    move-exception v0

    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2515
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_20
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2516
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2516
    .local v0, "i":I
    :goto_1c
    move v4, v0

    .line 2516
    .end local v0    # "i":I
    .restart local v4    # "i":I
    if-ltz v4, :cond_23

    .line 2517
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2518
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_22

    .line 2520
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2521
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v6, 0x12

    invoke-static {v0, v6}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f

    if-nez v0, :cond_21

    .line 2522
    goto :goto_1d

    .line 2527
    :cond_21
    :try_start_33
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_12
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    .line 2530
    goto :goto_1d

    .line 2528
    :catch_12
    move-exception v0

    .line 2529
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_34
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_22
    :goto_1d
    add-int/lit8 v0, v4, -0x1

    .line 2516
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_1c

    .line 2533
    .end local v0    # "i":I
    :cond_23
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2534
    goto :goto_1e

    .line 2533
    :catchall_f
    move-exception v0

    :try_start_35
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2490
    :sswitch_21
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 2491
    goto :goto_1e

    .line 2485
    :sswitch_22
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2486
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 2487
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2488
    goto :goto_1e

    .line 2487
    :catchall_10
    move-exception v0

    :try_start_37
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2480
    :sswitch_23
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2481
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 2483
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    nop

    .line 2970
    :cond_24
    :goto_1e
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_23
        0x5 -> :sswitch_22
        0xc -> :sswitch_21
        0xd -> :sswitch_20
        0x14 -> :sswitch_1f
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1b
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_19
        0x1d -> :sswitch_18
        0x21 -> :sswitch_17
        0x25 -> :sswitch_16
        0x26 -> :sswitch_15
        0x29 -> :sswitch_14
        0x2c -> :sswitch_13
        0x2d -> :sswitch_12
        0x2f -> :sswitch_11
        0x31 -> :sswitch_10
        0x32 -> :sswitch_f
        0x33 -> :sswitch_e
        0x36 -> :sswitch_d
        0x38 -> :sswitch_c
        0x39 -> :sswitch_b
        0x3a -> :sswitch_a
        0x3d -> :sswitch_9
        0x3f -> :sswitch_8
        0x40 -> :sswitch_7
        0x41 -> :sswitch_6
        0x42 -> :sswitch_5
        0x43 -> :sswitch_4
        0x45 -> :sswitch_3
        0x258 -> :sswitch_2
        0x259 -> :sswitch_1
        0x1869f -> :sswitch_0
    .end sparse-switch
.end method
