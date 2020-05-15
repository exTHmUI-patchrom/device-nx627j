.class public Lcom/android/server/wifi/scanner/WifiScanningService;
.super Lcom/android/server/SystemService;
.source "WifiScanningService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WifiScanningService"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "WifiScanningService"

    const-string v1, "Creating wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiScanningService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/scanner/WifiScannerImpl;->DEFAULT_FACTORY:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    .line 39
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    .line 40
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 41
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 51
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 52
    const-string v0, "WifiScanningService"

    const-string v1, "Starting wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->startService()V

    .line 55
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 45
    const-string v0, "WifiScanningService"

    const-string v1, "Publishing wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "wifiscanner"

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 47
    return-void
.end method
