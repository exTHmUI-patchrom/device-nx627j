.class Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScanRequestScheduler"
.end annotation


# instance fields
.field private mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field private mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field final synthetic this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$1;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->receiveResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStopScan(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->stopScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 1
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method private commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I
    .locals 3
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 287
    sget-object v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 313
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandExceptionErrorToScanError: Unexpected CommandExceptionError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v0, 0x2710

    return v0

    .line 310
    :pswitch_0
    const-string v0, "ScanRequestTracker"

    const-string v1, "commandExceptionErrorToScanError: DEVICE_IN_USE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x3

    return v0

    .line 307
    :pswitch_1
    const-string v0, "ScanRequestTracker"

    const-string v1, "commandExceptionErrorToScanError: INVALID_ARGUMENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x2

    return v0

    .line 304
    :pswitch_2
    const-string v0, "ScanRequestTracker"

    const-string v2, "commandExceptionErrorToScanError: OPERATION_NOT_ALLOWED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v1

    .line 301
    :pswitch_3
    const-string v0, "ScanRequestTracker"

    const-string v2, "commandExceptionErrorToScanError: MODEM_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v1

    .line 298
    :pswitch_4
    const-string v0, "ScanRequestTracker"

    const-string v2, "commandExceptionErrorToScanError: INTERNAL_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1

    .line 295
    :pswitch_5
    const-string v0, "ScanRequestTracker"

    const-string v2, "commandExceptionErrorToScanError: NO_MEMORY"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v1

    .line 292
    :pswitch_6
    const-string v0, "ScanRequestTracker"

    const-string v1, "commandExceptionErrorToScanError: REQUEST_NOT_SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x4

    return v0

    .line 289
    :pswitch_7
    const-string v0, "ScanRequestTracker"

    const-string v2, "commandExceptionErrorToScanError: RADIO_NOT_AVAILABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method private declared-synchronized deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    .locals 3
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .param p2, "error"    # I
    .param p3, "notify"    # Z

    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 499
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 500
    if-nez p2, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v2, 0x3

    invoke-static {v1, p1, v2, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v2, 0x2

    invoke-static {v1, p1, v2, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 508
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    .line 511
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_2
    monitor-exit p0

    return-void

    .line 497
    .end local p1    # "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .end local p2    # "error":I
    .end local p3    # "notify":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    throw p1
.end method

.method private declared-synchronized doInterruptScan(I)V
    .locals 4
    .param p1, "scanId"    # I

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->stopNetworkScan(Landroid/os/Message;)V

    goto :goto_0

    .line 445
    :cond_0
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInterruptScan: scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    .end local p1    # "scanId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    throw p1
.end method

.method private doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .locals 4
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 320
    if-nez p1, :cond_0

    .line 321
    const-string v0, "ScanRequestTracker"

    const-string v1, "CMD_START_NETWORK_SCAN: nsri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1300(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0, p1, v2, v2, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 327
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getIsBinderDead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    const-string v0, "ScanRequestTracker"

    const-string v1, "CMD_START_NETWORK_SCAN: Binder has died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 333
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v3, 0x3

    invoke-static {v0, p1, v2, v3, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 341
    :cond_3
    return-void
.end method

.method private declared-synchronized doStopScan(I)V
    .locals 5
    .param p1, "scanId"    # I

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 408
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->stopNetworkScan(Landroid/os/Message;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 412
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    goto :goto_0

    .line 414
    :cond_1
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScan: scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :goto_0
    monitor-exit p0

    return-void

    .line 405
    .end local p1    # "scanId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    throw p1
.end method

.method private declared-synchronized interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 5
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_0

    .line 467
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 468
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v2, 0x2

    const/16 v3, 0x2712

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 475
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 465
    .end local p1    # "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    throw p1
.end method

.method private interruptScanDone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 450
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 451
    .local v0, "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    if-nez v0, :cond_0

    .line 452
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_INTERRUPT_NETWORK_SCAN_DONE: nsri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 455
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 457
    return-void
.end method

.method private receiveResult(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 370
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 371
    .local v0, "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    if-nez v0, :cond_0

    .line 372
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_RECEIVE_NETWORK_SCAN_RESULT: nsri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 375
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/NetworkScanResult;

    .line 377
    .local v1, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v5, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 379
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 378
    invoke-static {v3, v0, v2, v5, v6}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 380
    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 381
    invoke-direct {p0, v0, v4, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 382
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v5, v1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-static {v3, v0, v2, v4, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 389
    :cond_2
    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 390
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    .line 392
    .end local v1    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :cond_3
    :goto_0
    goto :goto_1

    .line 393
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 394
    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 395
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    .line 397
    :goto_1
    return-void
.end method

.method private rilErrorToScanError(I)I
    .locals 3
    .param p1, "rilError"    # I

    .line 253
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 281
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rilErrorToScanError: Unexpected RadioError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v0, 0x2710

    return v0

    .line 278
    :sswitch_0
    const-string v0, "ScanRequestTracker"

    const-string v1, "rilErrorToScanError: DEVICE_IN_USE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x3

    return v0

    .line 272
    :sswitch_1
    const-string v1, "ScanRequestTracker"

    const-string v2, "rilErrorToScanError: OPERATION_NOT_ALLOWED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v0

    .line 275
    :sswitch_2
    const-string v0, "ScanRequestTracker"

    const-string v1, "rilErrorToScanError: INVALID_ARGUMENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x2

    return v0

    .line 269
    :sswitch_3
    const-string v1, "ScanRequestTracker"

    const-string v2, "rilErrorToScanError: MODEM_ERR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v0

    .line 266
    :sswitch_4
    const-string v1, "ScanRequestTracker"

    const-string v2, "rilErrorToScanError: INTERNAL_ERR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v0

    .line 263
    :sswitch_5
    const-string v1, "ScanRequestTracker"

    const-string v2, "rilErrorToScanError: NO_MEMORY"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v0

    .line 260
    :sswitch_6
    const-string v0, "ScanRequestTracker"

    const-string v1, "rilErrorToScanError: REQUEST_NOT_SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x4

    return v0

    .line 257
    :sswitch_7
    const-string v1, "ScanRequestTracker"

    const-string v2, "rilErrorToScanError: RADIO_NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v0

    .line 255
    :sswitch_8
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x6 -> :sswitch_6
        0x25 -> :sswitch_5
        0x26 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2c -> :sswitch_2
        0x36 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 4
    .param p1, "nsri"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_0

    .line 486
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 487
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getRequest()Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 488
    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 487
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 491
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 484
    .end local p1    # "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    throw p1
.end method

.method private declared-synchronized startScanDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 345
    .local v0, "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    if-nez v0, :cond_0

    .line 346
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_START_NETWORK_SCAN_DONE: nsri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 353
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 355
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 359
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 361
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 362
    .local v1, "error":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 363
    .end local v1    # "error":Lcom/android/internal/telephony/CommandException$Error;
    goto :goto_0

    .line 364
    :cond_3
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_START_NETWORK_SCAN_DONE: ar.exception can not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_4
    :goto_1
    :try_start_2
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_START_NETWORK_SCAN_DONE: nsri does not match mLiveRequestInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 343
    .end local v0    # "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .end local p1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    throw p1
.end method

.method private stopScanDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 419
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 420
    .local v0, "nsri":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    if-nez v0, :cond_0

    .line 421
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_STOP_NETWORK_SCAN_DONE: nsri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 424
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 425
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 428
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 429
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 430
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 431
    .local v1, "error":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 432
    .end local v1    # "error":Lcom/android/internal/telephony/CommandException$Error;
    goto :goto_0

    .line 433
    :cond_2
    const-string v1, "ScanRequestTracker"

    const-string v2, "EVENT_STOP_NETWORK_SCAN_DONE: ar.exception can not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    .line 437
    return-void
.end method
