.class Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
.super Ljava/lang/Object;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttServiceSynchronized"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mNextCommandId:I

.field private mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mRttNative:Lcom/android/server/wifi/rtt/RttNative;

.field private mRttRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRttRequesterInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/Looper;Lcom/android/server/wifi/rtt/RttNative;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "rttNative"    # Lcom/android/server/wifi/rtt/RttNative;

    .line 552
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mNextCommandId:I

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    .line 549
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 553
    iput-object p3, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    .line 555
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    .line 556
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    invoke-static {p1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$300(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    const-string v2, "RttServiceImpl HAL Ranging Timeout"

    new-instance v3, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$nvl34lO7P1KT2zH6q5nTdziEODs;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$nvl34lO7P1KT2zH6q5nTdziEODs;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 560
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
    .param p1, "x1"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    .param p2, "x2"    # Ljava/util/Map;

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->processReceivedAwarePeerMacAddresses(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->onRangingResults(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILandroid/os/WorkSource;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Landroid/os/IBinder$DeathRecipient;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p7, "x7"    # Landroid/net/wifi/rtt/IRttCallback;
    .param p8, "x8"    # Z

    .line 543
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->queueRangingRequest(ILandroid/os/WorkSource;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    .line 543
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->cleanUpOnDisable()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
    .param p1, "x1"    # Z

    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILandroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->cleanUpClientRequests(ILandroid/os/WorkSource;)V

    return-void
.end method

.method private cancelRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V
    .locals 4
    .param p1, "rri"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, "macAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    iget-object v1, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/ResponderConfig;

    .line 565
    .local v2, "peer":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v3, v2, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v3}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v2    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_0

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    iget v2, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/rtt/RttNative;->rangeCancel(ILjava/util/ArrayList;)Z

    .line 569
    return-void
.end method

.method private cleanUpClientRequests(ILandroid/os/WorkSource;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "dispatchedRequestAborted":Z
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 610
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 611
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 613
    .local v2, "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    iget v4, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->uid:I

    const/4 v5, 0x0

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    .line 614
    .local v3, "match":Z
    :goto_1
    iget-object v4, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 615
    iget-object v4, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p2}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 616
    iget-object v4, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    const/4 v3, 0x1

    .line 621
    :cond_1
    if-eqz v3, :cond_3

    .line 622
    iget-boolean v4, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dispatchedToNative:Z

    if-nez v4, :cond_2

    .line 623
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 624
    iget-object v4, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->binder:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dr:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v6, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 626
    :cond_2
    const/4 v0, 0x1

    .line 627
    const-string v4, "RttServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client death - cancelling RTT operation in progress: cmdId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v4}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 630
    invoke-direct {p0, v2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->cancelRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V

    .line 633
    .end local v2    # "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    .end local v3    # "match":Z
    :cond_3
    :goto_2
    goto :goto_0

    .line 641
    :cond_4
    if-eqz v0, :cond_5

    .line 642
    invoke-direct {p0, v3}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 644
    :cond_5
    return-void
.end method

.method private cleanUpOnDisable()V
    .locals 6

    .line 573
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 575
    .local v1, "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    :try_start_0
    iget-boolean v2, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dispatchedToNative:Z

    if-eqz v2, :cond_0

    .line 579
    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->cancelRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 583
    iget-object v2, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    goto :goto_1

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RttServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RttServiceSynchronized.startRanging: disabled, callback failed -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v2, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dr:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 590
    .end local v1    # "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 592
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 593
    return-void
.end method

.method private executeNextRangingRequestIfPossible(Z)V
    .locals 4
    .param p1, "popFirst"    # Z

    .line 753
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const-string v1, "RttServiceImpl"

    const-string v2, "executeNextRangingRequestIfPossible: pop requested - but empty queue!? Ignoring pop."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 759
    .local v1, "topOfQueueRequest":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    iget-object v2, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dr:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 763
    .end local v1    # "topOfQueueRequest":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 765
    return-void

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 770
    .local v0, "nextRequest":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    iget-boolean v1, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->peerHandlesTranslated:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dispatchedToNative:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 778
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->startRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V

    .line 779
    return-void

    .line 775
    :cond_4
    :goto_1
    return-void
.end method

.method private isRequestorSpamming(Landroid/os/WorkSource;)Z
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 711
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 713
    .local v0, "counts":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 714
    .local v2, "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    move v5, v3

    .local v5, "i":I
    :goto_1
    iget-object v6, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v6}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 715
    iget-object v6, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 716
    .local v6, "uid":I
    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 719
    .end local v5    # "i":I
    :cond_0
    iget-object v5, v2, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v5

    .line 720
    .local v5, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v5, :cond_1

    .line 721
    nop

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 722
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v6

    .line 723
    .restart local v6    # "uid":I
    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    .end local v6    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 726
    .end local v2    # "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    .end local v3    # "i":I
    .end local v5    # "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    :cond_1
    goto :goto_0

    .line 728
    :cond_2
    move v1, v3

    .local v1, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    const/16 v5, 0x14

    if-ge v1, v2, :cond_4

    .line 729
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ge v2, v5, :cond_3

    .line 730
    return v3

    .line 728
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 734
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v1

    .line 735
    .local v1, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v1, :cond_6

    .line 736
    move v2, v3

    .local v2, "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 737
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v6

    .line 738
    .restart local v6    # "uid":I
    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ge v7, v5, :cond_5

    .line 739
    return v3

    .line 736
    .end local v6    # "uid":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 744
    .end local v2    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 745
    const-string v2, "RttServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRequestorSpamming: ws="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", someone is spamming: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_7
    return v4
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;)V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->timeoutRangingRequest()V

    .line 559
    return-void
.end method

.method private onRangingResults(ILjava/util/List;)V
    .locals 7
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 1041
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_0/RttResult;>;"
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const-string v0, "RttServiceImpl"

    const-string v1, "RttServiceSynchronized.onRangingResults: no current RTT request pending!?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1047
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 1055
    .local v0, "topOfQueueRequest":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    iget v2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    if-eq v2, p1, :cond_1

    .line 1056
    const-string v1, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RttServiceSynchronized.onRangingResults: cmdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", does not match pending RTT request cmdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void

    .line 1061
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1700(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callingPackage:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallersLocationPermission(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 1063
    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$600(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/location/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    nop

    .line 1065
    .local v1, "permissionGranted":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 1066
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    iget-boolean v4, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->isCalledFromPrivilegedContext:Z

    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->postProcessResults(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 1068
    .local v2, "finalResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    iget-object v4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 1069
    iget-object v4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wifi/rtt/RttMetrics;->recordResult(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/List;)V

    .line 1074
    iget-object v4, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v4, v2}, Landroid/net/wifi/rtt/IRttCallback;->onRangingResults(Ljava/util/List;)V

    .line 1075
    .end local v2    # "finalResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    goto :goto_0

    .line 1083
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1076
    :cond_3
    const-string v2, "RttServiceImpl"

    const-string v4, "RttServiceSynchronized.onRangingResults: location permission revoked - not forwarding results"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 1080
    iget-object v2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v2, v3}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    goto :goto_2

    .line 1083
    :goto_1
    nop

    .line 1084
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "RttServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RttServiceSynchronized.onRangingResults: callback exception -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 1089
    return-void
.end method

.method private postProcessResults(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/List;Z)Ljava/util/List;
    .locals 26
    .param p1, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p3, "isCalledFromPrivilegedContext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/rtt/RangingRequest;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;"
        }
    .end annotation

    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_0/RttResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1099
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1100
    .local v2, "resultEntries":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/MacAddress;Landroid/hardware/wifi/V1_0/RttResult;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/RttResult;

    .line 1101
    .local v4, "result":Landroid/hardware/wifi/V1_0/RttResult;
    iget-object v5, v4, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    .end local v4    # "result":Landroid/hardware/wifi/V1_0/RttResult;
    goto :goto_0

    .line 1104
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1106
    .local v3, "finalResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/rtt/ResponderConfig;

    .line 1107
    .local v5, "peer":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v6, v5, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/V1_0/RttResult;

    .line 1108
    .local v6, "resultForRequest":Landroid/hardware/wifi/V1_0/RttResult;
    if-nez v6, :cond_4

    .line 1109
    iget-object v7, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1110
    const-string v7, "RttServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postProcessResults: missing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_1
    const/4 v7, 0x1

    .line 1114
    .local v7, "errorCode":I
    if-nez p3, :cond_2

    .line 1115
    iget-boolean v8, v5, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-nez v8, :cond_2

    .line 1116
    const/4 v7, 0x2

    .line 1120
    :cond_2
    iget-object v8, v5, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v8, :cond_3

    .line 1121
    new-instance v14, Landroid/net/wifi/rtt/RangingResult;

    iget-object v10, v5, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object v8, v14

    move v9, v7

    move-object/from16 v21, v14

    move v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-wide/from16 v18, v19

    invoke-direct/range {v8 .. v19}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/MacAddress;IIIII[B[BJ)V

    move-object/from16 v8, v21

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1125
    :cond_3
    new-instance v14, Landroid/net/wifi/rtt/RangingResult;

    iget-object v10, v5, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object v8, v14

    move v9, v7

    move-object/from16 v22, v14

    move v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-wide/from16 v18, v19

    invoke-direct/range {v8 .. v19}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BJ)V

    move-object/from16 v8, v22

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v7    # "errorCode":I
    :goto_2
    goto/16 :goto_4

    .line 1130
    :cond_4
    iget v7, v6, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_5

    .line 1131
    move v11, v9

    goto :goto_3

    :cond_5
    move v11, v8

    .line 1132
    .local v11, "status":I
    :goto_3
    const/4 v7, 0x0

    .line 1133
    .local v7, "lci":[B
    const/4 v10, 0x0

    .line 1134
    .local v10, "lcr":[B
    if-eqz p3, :cond_6

    .line 1136
    iget-object v12, v6, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v12, v12, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v7

    .line 1137
    iget-object v12, v6, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v12, v12, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v10

    .line 1139
    .end local v10    # "lcr":[B
    .local v24, "lcr":[B
    :cond_6
    move-object/from16 v24, v10

    iget v10, v6, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    if-gt v10, v8, :cond_8

    iget v8, v6, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    if-eqz v8, :cond_8

    .line 1141
    iget-object v8, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1142
    const-string v8, "RttServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "postProcessResults: non-zero distance stdev with 0||1 num samples!? result="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_7
    iput v9, v6, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    .line 1147
    :cond_8
    iget-object v8, v5, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v8, :cond_9

    .line 1148
    new-instance v8, Landroid/net/wifi/rtt/RangingResult;

    iget-object v12, v5, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget v13, v6, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    iget v14, v6, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    iget v9, v6, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    div-int/lit8 v15, v9, -0x2

    iget-byte v9, v6, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iget v10, v6, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iget-wide v0, v6, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    const-wide/16 v16, 0x3e8

    div-long v20, v0, v16

    move v0, v10

    move-object v10, v8

    move/from16 v16, v9

    move/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v24

    invoke-direct/range {v10 .. v21}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/MacAddress;IIIII[B[BJ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1154
    :cond_9
    new-instance v0, Landroid/net/wifi/rtt/RangingResult;

    iget-object v14, v5, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v6, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    iget v8, v6, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    iget v9, v6, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    div-int/lit8 v17, v9, -0x2

    iget-byte v9, v6, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iget v10, v6, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iget-wide v12, v6, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    const-wide/16 v15, 0x3e8

    div-long v22, v12, v15

    move-object v12, v0

    move v13, v11

    move v15, v1

    move/from16 v16, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v7

    move-object/from16 v21, v24

    invoke-direct/range {v12 .. v23}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BJ)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    .end local v5    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    .end local v6    # "resultForRequest":Landroid/hardware/wifi/V1_0/RttResult;
    .end local v7    # "lci":[B
    .end local v11    # "status":I
    .end local v24    # "lcr":[B
    :goto_4
    nop

    .line 1106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 1163
    :cond_a
    return-object v3
.end method

.method private preExecThrottleCheck(Landroid/os/WorkSource;)Z
    .locals 11
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 855
    const/4 v0, 0x1

    .line 856
    .local v0, "allUidsInBackground":Z
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v3

    const/16 v4, 0x7d

    if-ge v2, v3, :cond_1

    .line 857
    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1200(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v3

    .line 862
    .local v3, "uidImportance":I
    if-gt v3, v4, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 864
    goto :goto_1

    .line 856
    .end local v3    # "uidImportance":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 868
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v2

    .line 869
    .local v2, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 870
    move v3, v1

    .local v3, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 871
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 872
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1200(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/app/ActivityManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v6

    .line 878
    .local v6, "uidImportance":I
    if-gt v6, v4, :cond_2

    .line 879
    const/4 v0, 0x0

    .line 880
    goto :goto_3

    .line 870
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v6    # "uidImportance":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 887
    .end local v3    # "i":I
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 888
    .local v3, "allowExecution":Z
    iget-object v4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 889
    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1300(Lcom/android/server/wifi/rtt/RttServiceImpl;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 890
    .local v4, "mostRecentExecutionPermitted":J
    if-eqz v0, :cond_b

    .line 891
    move v6, v1

    .local v6, "i":I
    :goto_4
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 892
    iget-object v7, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {p1, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;

    .line 893
    .local v7, "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    if-eqz v7, :cond_5

    iget-wide v8, v7, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;->lastRangingExecuted:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_4

    goto :goto_5

    .line 891
    .end local v7    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 894
    .restart local v7    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    :cond_5
    :goto_5
    const/4 v3, 0x1

    .line 895
    nop

    .line 899
    .end local v6    # "i":I
    .end local v7    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    :cond_6
    const/4 v6, 0x1

    if-eqz v2, :cond_7

    move v7, v6

    goto :goto_6

    :cond_7
    move v7, v1

    :goto_6
    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    move v6, v1

    :goto_7
    and-int/2addr v6, v7

    if-eqz v6, :cond_c

    .line 900
    move v6, v1

    .restart local v6    # "i":I
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 901
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 902
    .local v7, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;

    .line 903
    .local v8, "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    if-eqz v8, :cond_a

    iget-wide v9, v8, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;->lastRangingExecuted:J

    cmp-long v9, v9, v4

    if-gez v9, :cond_9

    goto :goto_9

    .line 900
    .end local v7    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v8    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 905
    .restart local v7    # "wc":Landroid/os/WorkSource$WorkChain;
    .restart local v8    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    :cond_a
    :goto_9
    const/4 v3, 0x1

    .line 906
    goto :goto_a

    .line 911
    .end local v6    # "i":I
    .end local v7    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v8    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    :cond_b
    const/4 v3, 0x1

    .line 915
    :cond_c
    :goto_a
    if-eqz v3, :cond_10

    .line 916
    move v6, v1

    .restart local v6    # "i":I
    :goto_b
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_e

    .line 917
    iget-object v7, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {p1, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;

    .line 918
    .local v7, "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    if-nez v7, :cond_d

    .line 919
    new-instance v9, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;

    invoke-direct {v9, v8}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V

    move-object v7, v9

    .line 920
    iget-object v8, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {p1, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_d
    iget-object v8, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;->lastRangingExecuted:J

    .line 916
    .end local v7    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 925
    .end local v6    # "i":I
    :cond_e
    if-eqz v2, :cond_10

    .line 926
    nop

    .local v1, "i":I
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_10

    .line 927
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    .line 928
    .local v6, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v7, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;

    .line 929
    .restart local v7    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    if-nez v7, :cond_f

    .line 930
    new-instance v9, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;

    invoke-direct {v9, v8}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V

    move-object v7, v9

    .line 931
    iget-object v9, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    :cond_f
    iget-object v9, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v9}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;->lastRangingExecuted:J

    .line 926
    .end local v6    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v7    # "info":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 938
    .end local v1    # "i":I
    :cond_10
    return v3
.end method

.method private processAwarePeerHandles(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)Z
    .locals 7
    .param p1, "request"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v0, "peerIdsNeedingTranslation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    iget-object v1, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/ResponderConfig;

    .line 955
    .local v2, "rttPeer":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v3, v2, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-nez v3, :cond_0

    .line 956
    iget-object v3, v2, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v3, v3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v2    # "rttPeer":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_0
    goto :goto_0

    .line 960
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 961
    const/4 v1, 0x0

    return v1

    .line 964
    :cond_2
    iget-boolean v1, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->peerHandlesTranslated:Z

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 965
    const-string v1, "RttServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processAwarePeerHandles: request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": PeerHandles translated - but information still missing!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 970
    iget-object v1, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v1, v3}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    goto :goto_1

    .line 971
    :catch_0
    move-exception v1

    .line 972
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RttServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processAwarePeerHandles: onRangingResults failure -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 975
    return v3

    .line 978
    :cond_3
    iput-boolean v3, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->peerHandlesTranslated:Z

    .line 980
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1600(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/net/wifi/aware/IWifiAwareManager;

    move-result-object v1

    iget v4, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->uid:I

    new-instance v5, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V

    invoke-interface {v1, v4, v0, v5}, Landroid/net/wifi/aware/IWifiAwareManager;->requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1004
    nop

    .line 1006
    return v3

    .line 991
    :catch_1
    move-exception v1

    .line 992
    .local v1, "e1":Landroid/os/RemoteException;
    const-string v4, "RttServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processAwarePeerHandles: exception while calling requestMacAddresses -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", aborting request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 998
    iget-object v2, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v2, v3}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1001
    goto :goto_2

    .line 999
    :catch_2
    move-exception v2

    .line 1000
    .local v2, "e2":Landroid/os/RemoteException;
    const-string v4, "RttServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processAwarePeerHandles: onRangingResults failure -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local v2    # "e2":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 1003
    return v3
.end method

.method private processReceivedAwarePeerMacAddresses(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V
    .locals 18
    .param p1, "request"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .local p2, "peerIdToMacMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v0, p1

    .line 1016
    new-instance v1, Landroid/net/wifi/rtt/RangingRequest$Builder;

    invoke-direct {v1}, Landroid/net/wifi/rtt/RangingRequest$Builder;-><init>()V

    .line 1017
    .local v1, "newRequestBuilder":Landroid/net/wifi/rtt/RangingRequest$Builder;
    iget-object v2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    iget-object v2, v2, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/rtt/ResponderConfig;

    .line 1018
    .local v3, "rttPeer":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v4, v3, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-nez v4, :cond_2

    .line 1019
    iget-object v4, v3, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v4, v4, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1020
    .local v4, "mac":[B
    if-eqz v4, :cond_1

    array-length v6, v4

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 1025
    :cond_0
    new-instance v6, Landroid/net/wifi/rtt/ResponderConfig;

    .line 1026
    invoke-static {v4}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v9

    iget-object v10, v3, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v11, v3, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iget-boolean v12, v3, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iget v13, v3, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iget v14, v3, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iget v15, v3, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iget v7, v3, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iget v8, v3, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    move/from16 v17, v8

    move-object v8, v6

    move/from16 v16, v7

    invoke-direct/range {v8 .. v17}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;Landroid/net/wifi/aware/PeerHandle;IZIIIII)V

    .line 1025
    invoke-virtual {v1, v6}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    .line 1030
    .end local v4    # "mac":[B
    goto :goto_2

    .line 1021
    .restart local v4    # "mac":[B
    :cond_1
    :goto_1
    const-string v6, "RttServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processReceivedAwarePeerMacAddresses: received an invalid MAC address for peerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v8, v8, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    goto :goto_0

    .line 1031
    .end local v4    # "mac":[B
    :cond_2
    move-object/from16 v5, p2

    invoke-virtual {v1, v3}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    .line 1033
    .end local v3    # "rttPeer":Landroid/net/wifi/rtt/ResponderConfig;
    :goto_2
    goto :goto_0

    .line 1034
    :cond_3
    move-object/from16 v5, p2

    invoke-virtual {v1}, Landroid/net/wifi/rtt/RangingRequest$Builder;->build()Landroid/net/wifi/rtt/RangingRequest;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    .line 1037
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->startRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V

    .line 1038
    return-void
.end method

.method private queueRangingRequest(ILandroid/os/WorkSource;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Ljava/lang/String;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "dr"    # Landroid/os/IBinder$DeathRecipient;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p7, "callback"    # Landroid/net/wifi/rtt/IRttCallback;
    .param p8, "isCalledFromPrivilegedContext"    # Z

    .line 674
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v0

    invoke-virtual {v0, p2, p6}, Lcom/android/server/wifi/rtt/RttMetrics;->recordRequest(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;)V

    .line 676
    invoke-direct {p0, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->isRequestorSpamming(Landroid/os/WorkSource;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Work source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is spamming, dropping request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-interface {p3, p4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 682
    const/4 v0, 0x1

    invoke-interface {p7, v0}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RttServiceSynchronized.queueRangingRequest: spamming, callback failed -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 690
    :cond_0
    new-instance v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V

    .line 691
    .local v0, "newRequest":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    iput p1, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->uid:I

    .line 692
    iput-object p2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    .line 693
    iput-object p3, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->binder:Landroid/os/IBinder;

    .line 694
    iput-object p4, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dr:Landroid/os/IBinder$DeathRecipient;

    .line 695
    iput-object p5, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callingPackage:Ljava/lang/String;

    .line 696
    iput-object p6, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    .line 697
    iput-object p7, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    .line 698
    iput-boolean p8, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->isCalledFromPrivilegedContext:Z

    .line 699
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 706
    return-void
.end method

.method private startRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V
    .locals 6
    .param p1, "nextRequest"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 786
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 787
    const-string v0, "RttServiceImpl"

    const-string v2, "RttServiceSynchronized.startRanging: disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 791
    iget-object v0, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RttServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RttServiceSynchronized.startRanging: disabled, callback failed -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 797
    return-void

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->processAwarePeerHandles(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    return-void

    .line 809
    :cond_1
    iget-object v0, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->preExecThrottleCheck(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 810
    const-string v0, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RttServiceSynchronized.startRanging: execution throttled - nextRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mRttRequesterInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 814
    iget-object v0, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v0, v1}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 818
    goto :goto_1

    .line 815
    :catch_1
    move-exception v0

    .line 816
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "RttServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RttServiceSynchronized.startRanging: throttled, callback failed -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 820
    return-void

    .line 823
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mNextCommandId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mNextCommandId:I

    iput v0, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    .line 824
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    iget v2, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    iget-object v3, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    iget-boolean v4, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->isCalledFromPrivilegedContext:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/rtt/RttNative;->rangeRequest(ILandroid/net/wifi/rtt/RangingRequest;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 827
    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$1100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 826
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto :goto_3

    .line 829
    :cond_3
    const-string v0, "RttServiceImpl"

    const-string v2, "RttServiceSynchronized.startRanging: native rangeRequest call failed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 833
    iget-object v0, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v0, v1}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 837
    goto :goto_2

    .line 834
    :catch_2
    move-exception v0

    .line 835
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "RttServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RttServiceSynchronized.startRanging: HAL request failed, callback failed -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 840
    :goto_3
    iput-boolean v1, p1, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dispatchedToNative:Z

    .line 841
    return-void
.end method

.method private timeoutRangingRequest()V
    .locals 6

    .line 651
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 652
    const-string v0, "RttServiceImpl"

    const-string v1, "RttServiceSynchronized.timeoutRangingRequest: but nothing in queue!?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    .line 656
    .local v0, "rri":Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    iget-boolean v1, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dispatchedToNative:Z

    if-nez v1, :cond_1

    .line 657
    const-string v1, "RttServiceImpl"

    const-string v2, "RttServiceSynchronized.timeoutRangingRequest: command not dispatched to native!?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 661
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->cancelRanging(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V

    .line 663
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/rtt/RttMetrics;->recordOverallStatus(I)V

    .line 664
    iget-object v2, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-interface {v2, v1}, Landroid/net/wifi/rtt/IRttCallback;->onRangingFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    goto :goto_0

    .line 665
    :catch_0
    move-exception v2

    .line 666
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RttServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RttServiceSynchronized.timeoutRangingRequest: callback failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->executeNextRangingRequestIfPossible(Z)V

    .line 669
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNextCommandId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mNextCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRttRequesterInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequesterInfo:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRttRequestQueue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttRequestQueue:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRangingTimeoutMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRangingTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$900(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/rtt/RttMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mRttNative:Lcom/android/server/wifi/rtt/RttNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/rtt/RttNative;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1174
    return-void
.end method
