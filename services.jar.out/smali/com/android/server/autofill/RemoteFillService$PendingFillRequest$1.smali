.class Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field final synthetic val$request:Landroid/service/autofill/FillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 527
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 5
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 530
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$1002(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    .line 534
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v2

    .line 535
    .local v2, "cancelled":Z
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    if-eqz v2, :cond_0

    .line 538
    :try_start_2
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 541
    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "RemoteFillService"

    const-string v4, "Error requesting a cancellation"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "cancelled":Z
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 544
    return-void

    .line 535
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 543
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 559
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 562
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService;->access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    .line 566
    :cond_1
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 3
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 548
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 551
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    .line 553
    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    .line 552
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    .line 555
    :cond_1
    return-void
.end method
