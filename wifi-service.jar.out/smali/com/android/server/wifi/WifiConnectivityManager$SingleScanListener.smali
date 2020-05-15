.class Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleScanListener"
.end annotation


# instance fields
.field private final mIsFullBandScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p2, "isFullBandScan"    # Z

    .line 405
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    .line 407
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1408(Lcom/android/server/wifi/WifiConnectivityManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1500(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1402(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 423
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string v1, "Failed to successfully start single scan for 5 times"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 440
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    .line 430
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleScanListener onPeriodChanged: actual scan period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 436
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 411
    return-void
.end method
