.class Lcom/android/server/wifi/WakeupController$1;
.super Ljava/lang/Object;
.source "WakeupController.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WakeupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WakeupController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WakeupController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WakeupController;

    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/WakeupController$1;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 91
    const-string v0, "WakeupController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanListener onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 82
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0
    .param p1, "periodInMs"    # I

    .line 70
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 74
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/net/wifi/WifiScanner$ScanData;->isAllChannelsScanned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/server/wifi/WakeupController$1;->this$0:Lcom/android/server/wifi/WakeupController;

    iget-object v2, p0, Lcom/android/server/wifi/WakeupController$1;->this$0:Lcom/android/server/wifi/WakeupController;

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/wifi/WakeupController;->access$000(Lcom/android/server/wifi/WakeupController;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/wifi/WakeupController;->access$100(Lcom/android/server/wifi/WakeupController;Ljava/util/Collection;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 87
    return-void
.end method
