.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1610
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1611
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1612
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 1616
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_0

    .line 1618
    monitor-exit v0

    return-void

    .line 1620
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 1681
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1682
    .local v1, "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 1683
    .local v4, "disabled":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1684
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v6, "app uid idle"

    invoke-virtual {v5, v1, v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1686
    :cond_2
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1687
    :try_start_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1688
    monitor-exit v5

    .line 1689
    goto/16 :goto_3

    .line 1688
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 1674
    .end local v1    # "uid":I
    .end local v4    # "disabled":Z
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1675
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1676
    :try_start_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1677
    monitor-exit v2

    .line 1678
    goto/16 :goto_3

    .line 1677
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3

    .line 1662
    .end local v1    # "uid":I
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1663
    .restart local v1    # "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 1664
    .restart local v4    # "disabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v6, 0x12

    invoke-virtual {v5, v1, v6}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1665
    if-eqz v4, :cond_4

    .line 1666
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v6, "uid gone"

    invoke-virtual {v5, v1, v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1668
    :cond_4
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1669
    :try_start_5
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1670
    monitor-exit v5

    .line 1671
    goto :goto_3

    .line 1670
    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2

    .line 1656
    .end local v1    # "uid":I
    .end local v4    # "disabled":Z
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1657
    .restart local v1    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1658
    .local v2, "procState":I
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1659
    goto :goto_3

    .line 1648
    .end local v1    # "uid":I
    .end local v2    # "procState":I
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1649
    goto :goto_3

    .line 1651
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v4, 0x0

    const-string v5, "app no longer allowed to run"

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1653
    goto :goto_3

    .line 1637
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mNubiaOrderController:Lcom/android/server/job/controllers/NubiaOrderController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/NubiaOrderController;->noteCheckJob()V

    .line 1639
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_5

    .line 1641
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_3

    .line 1644
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;)V

    .line 1646
    goto :goto_3

    .line 1623
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mNubiaOrderController:Lcom/android/server/job/controllers/NubiaOrderController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/NubiaOrderController;->noteCheckJob()V

    .line 1625
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1628
    .local v1, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2, v1}, Lcom/android/server/job/JobSchedulerService;->access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1629
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1630
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v2, v1, v4}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1632
    :cond_6
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1634
    .end local v1    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    nop

    .line 1693
    :goto_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$700(Lcom/android/server/job/JobSchedulerService;)V

    .line 1695
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1696
    monitor-exit v0

    .line 1697
    return-void

    .line 1696
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
