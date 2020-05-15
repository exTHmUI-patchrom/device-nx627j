.class Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;
.super Ljava/lang/Object;
.source "WifiNative.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorHalRadioModeChangeHandlerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiNative$1;

    .line 643
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;)V

    return-void
.end method


# virtual methods
.method public onDbs()V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 669
    :try_start_0
    const-string v1, "WifiNative"

    const-string v2, "Device is in DBS mode now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->access$1100(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumRadioModeChangeToDbs()V

    .line 671
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMcc(I)V
    .locals 3
    .param p1, "band"    # I

    .line 647
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 648
    :try_start_0
    const-string v1, "WifiNative"

    const-string v2, "Device is in MCC mode now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->access$1100(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumRadioModeChangeToMcc()V

    .line 650
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSbs(I)V
    .locals 3
    .param p1, "band"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 662
    :try_start_0
    const-string v1, "WifiNative"

    const-string v2, "Device is in SBS mode now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->access$1100(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumRadioModeChangeToSbs()V

    .line 664
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScc(I)V
    .locals 3
    .param p1, "band"    # I

    .line 654
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 655
    :try_start_0
    const-string v1, "WifiNative"

    const-string v2, "Device is in SCC mode now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->access$1100(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumRadioModeChangeToScc()V

    .line 657
    monitor-exit v0

    .line 658
    return-void

    .line 657
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
