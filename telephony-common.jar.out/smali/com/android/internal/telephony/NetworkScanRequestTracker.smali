.class public final Lcom/android/internal/telephony/NetworkScanRequestTracker;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;,
        Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    }
.end annotation


# static fields
.field private static final CMD_INTERRUPT_NETWORK_SCAN:I = 0x6

.field private static final CMD_START_NETWORK_SCAN:I = 0x1

.field private static final CMD_STOP_NETWORK_SCAN:I = 0x4

.field private static final EVENT_INTERRUPT_NETWORK_SCAN_DONE:I = 0x7

.field private static final EVENT_RECEIVE_NETWORK_SCAN_RESULT:I = 0x3

.field private static final EVENT_START_NETWORK_SCAN_DONE:I = 0x2

.field private static final EVENT_STOP_NETWORK_SCAN_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ScanRequestTracker"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->interruptNetworkScan(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->isValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/List;

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->notifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->logEmptyResultOrException(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private interruptNetworkScan(I)V
    .locals 3
    .param p1, "scanId"    # I

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 528
    return-void
.end method

.method private isValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 8
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 110
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 114
    return v1

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_5

    aget-object v6, v0, v4

    .line 117
    .local v6, "ras":Landroid/telephony/RadioAccessSpecifier;
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v7

    if-eq v7, v5, :cond_2

    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    .line 118
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    .line 119
    return v1

    .line 121
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    array-length v5, v5

    if-le v5, v2, :cond_3

    .line 122
    return v1

    .line 124
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v5

    if-eqz v5, :cond_4

    .line 125
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v5

    array-length v5, v5

    const/16 v7, 0x20

    if-le v5, v7, :cond_4

    .line 126
    return v1

    .line 116
    .end local v6    # "ras":Landroid/telephony/RadioAccessSpecifier;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_e

    .line 131
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    const/16 v2, 0x12c

    if-le v0, v2, :cond_6

    goto/16 :goto_4

    .line 136
    :cond_6
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_d

    .line 137
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    const/16 v2, 0xe10

    if-le v0, v2, :cond_7

    goto :goto_3

    .line 141
    :cond_7
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    if-lt v0, v5, :cond_c

    .line 143
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_8

    goto :goto_2

    .line 148
    :cond_8
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v2

    if-gt v0, v2, :cond_b

    .line 149
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    .line 150
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v2

    if-le v0, v2, :cond_9

    goto :goto_1

    .line 154
    :cond_9
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 155
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_a

    .line 156
    return v1

    .line 158
    :cond_a
    return v5

    .line 151
    :cond_b
    :goto_1
    return v1

    .line 145
    :cond_c
    :goto_2
    return v1

    .line 138
    :cond_d
    :goto_3
    return v1

    .line 133
    :cond_e
    :goto_4
    return v1

    .line 111
    :cond_f
    :goto_5
    return v1
.end method

.method private logEmptyResultOrException(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 102
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "ScanRequestTracker"

    const-string v1, "NetworkScanResult: Empty result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkScanResult: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void
.end method

.method private notifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    .locals 6
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .param p2, "what"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;",
            "II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/os/Messenger;

    move-result-object v0

    .line 165
    .local v0, "messenger":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "message":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 167
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 168
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 169
    if-eqz p4, :cond_0

    .line 170
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/CellInfo;

    invoke-interface {p4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CellInfo;

    .line 171
    .local v2, "ci":[Landroid/telephony/CellInfo;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v3, "b":Landroid/os/Bundle;
    const-string v4, "scanResult"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 173
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    .end local v2    # "ci":[Landroid/telephony/CellInfo;
    .end local v3    # "b":Landroid/os/Bundle;
    goto :goto_0

    .line 175
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ScanRequestTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in notifyMessenger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/internal/telephony/Phone;)I
    .locals 9
    .param p1, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 540
    .local v0, "scanId":I
    new-instance v8, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;ILcom/android/internal/telephony/Phone;)V

    .line 543
    .local v1, "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 544
    return v0
.end method

.method public stopNetworkScan(I)V
    .locals 4
    .param p1, "scanId"    # I

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$1900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 556
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$1900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$1900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 558
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 559
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 566
    monitor-exit v0

    .line 567
    return-void

    .line 564
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
