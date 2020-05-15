.class public Lcom/android/server/wifi/rtt/RttService;
.super Lcom/android/server/SystemService;
.source "RttService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RttService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImpl:Lcom/android/server/wifi/rtt/RttServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttService;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttService;->mImpl:Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 14
    .param p1, "phase"    # I

    .line 52
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 53
    const-string v0, "RttService"

    const-string v1, "Starting wifirtt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    .line 56
    .local v0, "wifiInjector":Lcom/android/server/wifi/WifiInjector;
    if-nez v0, :cond_0

    .line 57
    const-string v1, "RttService"

    const-string v2, "onBootPhase(PHASE_SYSTEM_SERVICES_READY): NULL injector!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getHalDeviceManager()Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v1

    .line 62
    .local v1, "halDeviceManager":Lcom/android/server/wifi/HalDeviceManager;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getRttHandlerThread()Landroid/os/HandlerThread;

    move-result-object v2

    .line 63
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v11

    .line 64
    .local v11, "wifiPermissionsUtil":Lcom/android/server/wifi/util/WifiPermissionsUtil;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->getRttMetrics()Lcom/android/server/wifi/rtt/RttMetrics;

    move-result-object v12

    .line 66
    .local v12, "rttMetrics":Lcom/android/server/wifi/rtt/RttMetrics;
    const-string v3, "wifiaware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/net/wifi/aware/IWifiAwareManager;

    .line 69
    .local v13, "awareBinder":Landroid/net/wifi/aware/IWifiAwareManager;
    new-instance v7, Lcom/android/server/wifi/rtt/RttNative;

    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttService;->mImpl:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-direct {v7, v3, v1}, Lcom/android/server/wifi/rtt/RttNative;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/HalDeviceManager;)V

    .line 70
    .local v7, "rttNative":Lcom/android/server/wifi/rtt/RttNative;
    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttService;->mImpl:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v5

    .line 71
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v10

    .line 70
    move-object v6, v13

    move-object v8, v12

    move-object v9, v11

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wifi/rtt/RttServiceImpl;->start(Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/net/wifi/aware/IWifiAwareManager;Lcom/android/server/wifi/rtt/RttNative;Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/FrameworkFacade;)V

    .line 73
    .end local v0    # "wifiInjector":Lcom/android/server/wifi/WifiInjector;
    .end local v1    # "halDeviceManager":Lcom/android/server/wifi/HalDeviceManager;
    .end local v2    # "handlerThread":Landroid/os/HandlerThread;
    .end local v7    # "rttNative":Lcom/android/server/wifi/rtt/RttNative;
    .end local v11    # "wifiPermissionsUtil":Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .end local v12    # "rttMetrics":Lcom/android/server/wifi/rtt/RttMetrics;
    .end local v13    # "awareBinder":Landroid/net/wifi/aware/IWifiAwareManager;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 46
    const-string v0, "RttService"

    const-string v1, "Registering wifirtt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "wifirtt"

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttService;->mImpl:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/rtt/RttService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method
