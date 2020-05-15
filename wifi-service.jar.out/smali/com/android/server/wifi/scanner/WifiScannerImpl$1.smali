.class Lcom/android/server/wifi/scanner/WifiScannerImpl$1;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/android/server/wifi/Clock;

    .line 52
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiNative()Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    .line 53
    .local v0, "wifiNative":Lcom/android/server/wifi/WifiNative;
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v9

    .line 54
    .local v9, "wifiMonitor":Lcom/android/server/wifi/WifiMonitor;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "ifaceName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_0
    new-instance v1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiNative;->getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v8, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v10

    move-object v4, v0

    move-object v5, v9

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    return-object v8

    .line 63
    :cond_1
    new-instance v11, Lcom/android/server/wifi/scanner/WificondScannerImpl;

    new-instance v6, Lcom/android/server/wifi/scanner/WificondChannelHelper;

    invoke-direct {v6, v0}, Lcom/android/server/wifi/scanner/WificondChannelHelper;-><init>(Lcom/android/server/wifi/WifiNative;)V

    move-object v1, v11

    move-object v2, p1

    move-object v3, v10

    move-object v4, v0

    move-object v5, v9

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/scanner/WificondScannerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    return-object v11
.end method
