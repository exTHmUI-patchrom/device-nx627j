.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1333
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 1334
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1335
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1338
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11002

    if-eq v0, v1, :cond_2

    const v1, 0x11004

    if-eq v0, v1, :cond_1

    .line 1350
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->access$100(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    move-result-object v0

    .line 1352
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1354
    return-void

    .line 1359
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1388
    return-void

    .line 1383
    :sswitch_0
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiScanner$PnoScanListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 1384
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 1383
    invoke-interface {v1, v2}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 1385
    return-void

    .line 1380
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    .line 1381
    goto :goto_0

    .line 1375
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1376
    .local v1, "result":Landroid/net/wifi/ScanResult;
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    .line 1377
    return-void

    .line 1365
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 1366
    .local v1, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiScanner$ActionListener;

    iget v3, v1, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v4, v1, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    .line 1367
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    .line 1369
    .end local v1    # "result":Landroid/net/wifi/WifiScanner$OperationResult;
    goto :goto_0

    .line 1362
    :sswitch_4
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    .line 1363
    nop

    .line 1390
    :goto_0
    return-void

    .line 1371
    :sswitch_5
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    .line 1372
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v2

    .line 1371
    invoke-interface {v1, v2}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1373
    return-void

    .line 1342
    .end local v0    # "listener":Ljava/lang/Object;
    :cond_1
    const-string v0, "WifiScanner"

    const-string v1, "Channel connection lost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->access$002(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1346
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1347
    return-void

    .line 1340
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_5
        0x27011 -> :sswitch_4
        0x27012 -> :sswitch_3
        0x27014 -> :sswitch_2
        0x27017 -> :sswitch_1
        0x2701a -> :sswitch_0
    .end sparse-switch
.end method
