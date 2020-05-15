.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 519
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private filterCachedScanResultsByAge()[Landroid/net/wifi/ScanResult;
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 569
    .local v0, "currentTimeInMillis":J
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$2100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$InbNEkwBcgp-s8u0tfPo_eYbuRI;

    invoke-direct {v3, v0, v1}, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$InbNEkwBcgp-s8u0tfPo_eYbuRI;-><init>(J)V

    .line 570
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;

    .line 573
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 569
    return-object v2
.end method

.method static synthetic lambda$filterCachedScanResultsByAge$0(JLandroid/net/wifi/ScanResult;)Z
    .locals 4
    .param p0, "currentTimeInMillis"    # J
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 571
    iget-wide v0, p2, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long v0, p0, v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$filterCachedScanResultsByAge$1(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "x$0"    # I

    .line 573
    new-array v0, p0, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 523
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 524
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 555
    const/4 v0, 0x0

    return v0

    .line 537
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 538
    return v1

    .line 529
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    const-string v2, "Failed to start single scan state machine because scanner impl is null"

    invoke-static {v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V

    .line 532
    return v1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 535
    return v1

    .line 548
    :sswitch_2
    return v1

    .line 545
    :sswitch_3
    return v1

    .line 550
    :sswitch_4
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 551
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->filterCachedScanResultsByAge()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    .line 553
    return v1

    .line 541
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, -0x1

    const-string v3, "not available"

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 542
    return v1

    :sswitch_data_0
    .sparse-switch
        0x27015 -> :sswitch_5
        0x27016 -> :sswitch_5
        0x2701d -> :sswitch_4
        0x27100 -> :sswitch_3
        0x27101 -> :sswitch_2
        0x27106 -> :sswitch_1
        0x27107 -> :sswitch_0
    .end sparse-switch
.end method
