.class public Lcom/android/server/wifi/scanner/HalWifiScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "HalWifiScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HalWifiScannerImpl"


# instance fields
.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mIfaceName:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "clock"    # Lcom/android/server/wifi/Clock;

    .line 48
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 51
    new-instance v0, Lcom/android/server/wifi/scanner/WificondChannelHelper;

    invoke-direct {v0, p3}, Lcom/android/server/wifi/scanner/WificondChannelHelper;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 52
    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/scanner/WificondScannerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    .line 55
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->cleanup()V

    .line 66
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2
    .param p1, "flush"    # Z

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 2
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    const-string v0, "HalWifiScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoSupported(Z)Z

    move-result v0

    return v0
.end method

.method public pauseBatchedScan()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->pauseBgScan(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public resetHwPnoList()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->resetHwPnoList()Z

    move-result v0

    return v0
.end method

.method public restartBatchedScan()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->restartBgScan(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    move-result v0

    return v0
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 3
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 92
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiNative;->startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0

    .line 93
    :cond_1
    :goto_0
    const-string v0, "HalWifiScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments for startBatched: settings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",eventHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWificondScannerDelegate:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0
.end method

.method public stopBatchedScan()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->stopBgScan(Ljava/lang/String;)V

    .line 104
    return-void
.end method
