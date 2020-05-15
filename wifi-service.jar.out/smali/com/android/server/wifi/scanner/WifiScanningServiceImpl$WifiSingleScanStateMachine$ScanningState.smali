.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanningState"
.end annotation


# instance fields
.field private mScanWorkSource:Landroid/os/WorkSource;

.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 665
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->createMergedWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->mScanWorkSource:Landroid/os/WorkSource;

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$2500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V

    .line 676
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public exit()V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$2602(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$2700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V

    .line 688
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 690
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    move-result v2

    .line 688
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    .line 691
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "Scan was interrupted"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    .line 693
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 697
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2710a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 717
    return v2

    .line 707
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->reportFullScanResult(Landroid/net/wifi/ScanResult;I)V

    .line 708
    return v3

    .line 699
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 701
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    move-result v1

    .line 699
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    .line 702
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->reportScanResults(Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 704
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 705
    return v3

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 711
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    move-result v1

    .line 710
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    .line 712
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v1

    const/4 v2, -0x1

    const-string v4, "Scan failed"

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->access$1800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 715
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x27100
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
