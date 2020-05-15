.class final Lcom/android/server/am/ActivityManagerService$FreezeStub;
.super Lnubia/os/IFreezeCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FreezeStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 29611
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lnubia/os/IFreezeCallback$Stub;-><init>()V

    return-void
.end method

.method private findProcessByPid(I)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # I

    .line 29613
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 29614
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 29615
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 29616
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_0

    .line 29617
    return-object v2

    .line 29614
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 29620
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getProcessStatus()V
    .locals 2

    .line 29648
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29649
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3100(Lcom/android/server/am/ActivityManagerService;)V

    .line 29650
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29651
    return-void

    .line 29650
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleDeepFreeze(I)V
    .locals 3
    .param p1, "pid"    # I

    .line 29678
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29680
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 29681
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 29682
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->scheduleDeepFreeze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29685
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    goto :goto_0

    .line 29686
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29684
    :catch_0
    move-exception v1

    .line 29686
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29687
    return-void

    .line 29686
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleEnterDoze(I)V
    .locals 3
    .param p1, "pid"    # I

    .line 29654
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29656
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 29657
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 29658
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->scheduleEnterDoze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29661
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    goto :goto_0

    .line 29662
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29660
    :catch_0
    move-exception v1

    .line 29662
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29663
    return-void

    .line 29662
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleFreeze(I)V
    .locals 3
    .param p1, "pid"    # I

    .line 29624
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29626
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 29627
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 29628
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->scheduleFreeze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29631
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    goto :goto_0

    .line 29632
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29630
    :catch_0
    move-exception v1

    .line 29632
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29633
    return-void

    .line 29632
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleLeaveDoze(I)V
    .locals 3
    .param p1, "pid"    # I

    .line 29666
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29668
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 29669
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 29670
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->scheduleLeaveDoze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29673
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    goto :goto_0

    .line 29674
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29672
    :catch_0
    move-exception v1

    .line 29674
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29675
    return-void

    .line 29674
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleUnfreeze(IZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "isOneWay"    # Z

    .line 29636
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29638
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 29639
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 29640
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p2}, Landroid/app/IApplicationThread;->scheduleUnfreeze(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29643
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    goto :goto_0

    .line 29644
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29642
    :catch_0
    move-exception v1

    .line 29644
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29645
    return-void

    .line 29644
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
