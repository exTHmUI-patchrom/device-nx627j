.class Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;
.super Ljava/lang/Object;
.source "ScanRequestProxy.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScanRequestProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanRequestProxyScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScanRequestProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/ScanRequestProxy;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/ScanRequestProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;
    .param p2, "x1"    # Lcom/android/server/wifi/ScanRequestProxy$1;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;-><init>(Lcom/android/server/wifi/ScanRequestProxy;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 113
    const-string v0, "WifiScanRequestProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan failure received. reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanRequestProxy;->access$100(Lcom/android/server/wifi/ScanRequestProxy;Z)V

    .line 115
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 142
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0
    .param p1, "periodInMs"    # I

    .line 147
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 6
    .param p1, "scanDatas"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 119
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v0}, Lcom/android/server/wifi/ScanRequestProxy;->access$000(Lcom/android/server/wifi/ScanRequestProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "WifiScanRequestProxy"

    const-string v1, "Scan results received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 124
    const-string v0, "WifiScanRequestProxy"

    const-string v2, "Found more than 1 batch of scan results, Failing..."

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v0, v1}, Lcom/android/server/wifi/ScanRequestProxy;->access$100(Lcom/android/server/wifi/ScanRequestProxy;Z)V

    .line 126
    return-void

    .line 128
    :cond_1
    aget-object v0, p1, v1

    .line 129
    .local v0, "scanData":Landroid/net/wifi/WifiScanner$ScanData;
    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 130
    .local v1, "scanResults":[Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v3}, Lcom/android/server/wifi/ScanRequestProxy;->access$000(Lcom/android/server/wifi/ScanRequestProxy;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    const-string v3, "WifiScanRequestProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scan results"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v3}, Lcom/android/server/wifi/ScanRequestProxy;->access$200(Lcom/android/server/wifi/ScanRequestProxy;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 135
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v3}, Lcom/android/server/wifi/ScanRequestProxy;->access$200(Lcom/android/server/wifi/ScanRequestProxy;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v3, v2}, Lcom/android/server/wifi/ScanRequestProxy;->access$100(Lcom/android/server/wifi/ScanRequestProxy;Z)V

    .line 137
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;->this$0:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-static {v0}, Lcom/android/server/wifi/ScanRequestProxy;->access$000(Lcom/android/server/wifi/ScanRequestProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "WifiScanRequestProxy"

    const-string v1, "Scan request succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method
