.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .line 572
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 687
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 688
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Geofence callback reaped:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 690
    .local v2, "monitoringType":I
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 691
    nop

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 692
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 693
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 694
    .local v4, "geofenceId":I
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 695
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 691
    .end local v4    # "geofenceId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "i":I
    :cond_2
    monitor-exit v3

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 650
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v2    # "monitoringType":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 651
    .local v0, "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 652
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 653
    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    if-eqz v2, :cond_3

    .line 657
    :try_start_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 658
    goto :goto_1

    :catch_0
    move-exception v1

    .line 660
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 661
    goto/16 :goto_9

    .line 653
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 636
    .end local v0    # "geofenceId":I
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 637
    .restart local v0    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 638
    :try_start_4
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 639
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 641
    if-eqz v1, :cond_4

    .line 643
    :try_start_5
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 644
    goto :goto_2

    :catch_1
    move-exception v2

    .line 646
    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 647
    goto/16 :goto_9

    .line 639
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 593
    .end local v0    # "geofenceId":I
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 594
    .restart local v0    # "geofenceId":I
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 595
    :try_start_7
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 596
    .local v3, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 598
    if-eqz v3, :cond_8

    .line 600
    :try_start_8
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v0, v2}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 601
    goto :goto_3

    :catch_2
    move-exception v2

    .line 602
    :goto_3
    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 603
    .local v2, "callbackBinder":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 604
    .local v4, "callbackInUse":Z
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    .line 605
    :try_start_9
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 608
    move v6, v1

    .local v6, "i":I
    :goto_4
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 609
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v7}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v2, :cond_5

    .line 610
    const/4 v4, 0x1

    .line 611
    goto :goto_5

    .line 608
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 614
    .end local v6    # "i":I
    :cond_6
    :goto_5
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 617
    if-nez v4, :cond_8

    .line 618
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 619
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 620
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 621
    .local v6, "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 622
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v2, :cond_7

    .line 623
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 624
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    .line 625
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "GeofenceHardwareImpl"

    const-string v8, "Removed reaper %s because binder %s is no longer needed."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v6    # "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :cond_7
    goto :goto_6

    .line 614
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    .line 632
    .end local v2    # "callbackBinder":Landroid/os/IBinder;
    .end local v4    # "callbackInUse":Z
    :cond_8
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 633
    goto/16 :goto_9

    .line 596
    .end local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_4
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1

    .line 580
    .end local v0    # "geofenceId":I
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 581
    .restart local v0    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 582
    :try_start_c
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 583
    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 585
    if-eqz v2, :cond_9

    .line 587
    :try_start_d
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    .line 588
    goto :goto_7

    :catch_3
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_7
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 591
    goto/16 :goto_9

    .line 583
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    .line 664
    .end local v0    # "geofenceId":I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 665
    .local v0, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 666
    :try_start_f
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 669
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Transition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$800(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_a
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object v1, v2

    .line 675
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    if-eqz v1, :cond_b

    .line 677
    nop

    .line 678
    :try_start_10
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    .line 679
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$800(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v6

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$900(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v7

    .line 680
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$1000(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v9

    .line 677
    move-object v3, v1

    invoke-interface/range {v3 .. v9}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 681
    goto :goto_8

    :catch_4
    move-exception v2

    .line 683
    :cond_b
    :goto_8
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 684
    goto :goto_9

    .line 673
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_6
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v2

    .line 700
    .end local v0    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
