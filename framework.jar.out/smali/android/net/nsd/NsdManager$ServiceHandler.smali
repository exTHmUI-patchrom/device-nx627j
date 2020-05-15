.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/nsd/NsdManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 342
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 343
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    .line 349
    .local v0, "what":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 350
    .local v1, "key":I
    const v2, 0x11000

    if-eq v0, v2, :cond_3

    const v2, 0x11002

    if-eq v0, v2, :cond_2

    const v2, 0x11004

    if-eq v0, v2, :cond_1

    .line 365
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$300(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 366
    :try_start_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 367
    .local v3, "listener":Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$500(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    .line 368
    .local v4, "ns":Landroid/net/nsd/NsdServiceInfo;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    if-nez v3, :cond_0

    .line 370
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stale key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 376
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 430
    :pswitch_0
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 426
    :pswitch_1
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 427
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$ResolveListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    .line 428
    goto/16 :goto_0

    .line 422
    :pswitch_2
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 423
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$ResolveListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 424
    goto/16 :goto_0

    .line 418
    :pswitch_3
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v5}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 419
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v2, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    .line 420
    goto/16 :goto_0

    .line 412
    :pswitch_4
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 413
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 414
    goto/16 :goto_0

    .line 408
    :pswitch_5
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    .line 410
    goto :goto_0

    .line 404
    :pswitch_6
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 405
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 406
    goto :goto_0

    .line 400
    :pswitch_7
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 401
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    .line 402
    goto :goto_0

    .line 395
    :pswitch_8
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 396
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    .line 398
    goto :goto_0

    .line 390
    :pswitch_9
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    .line 391
    goto :goto_0

    .line 387
    :pswitch_a
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    .line 388
    goto :goto_0

    .line 382
    :pswitch_b
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 383
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    .line 385
    goto :goto_0

    .line 378
    :pswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "s":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v5, v2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    .line 380
    nop

    .line 433
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 368
    .end local v3    # "listener":Ljava/lang/Object;
    .end local v4    # "ns":Landroid/net/nsd/NsdServiceInfo;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 358
    :cond_1
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Channel lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 355
    :cond_2
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 356
    return-void

    .line 352
    :cond_3
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x11001

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 353
    return-void

    :pswitch_data_0
    .packed-switch 0x60002
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
