.class public final Lcom/android/server/wifi/aware/WifiAwareService;
.super Lcom/android/server/SystemService;
.source "WifiAwareService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAwareService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 21
    .param p1, "phase"    # I

    move-object/from16 v0, p0

    .line 48
    move/from16 v1, p1

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_1

    .line 49
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v2

    .line 50
    .local v2, "wifiInjector":Lcom/android/server/wifi/WifiInjector;
    if-nez v2, :cond_0

    .line 51
    const-string v3, "WifiAwareService"

    const-string v4, "onBootPhase(PHASE_SYSTEM_SERVICES_READY): NULL injector!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getHalDeviceManager()Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v3

    .line 57
    .local v3, "halDeviceManager":Lcom/android/server/wifi/HalDeviceManager;
    new-instance v4, Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-direct {v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;-><init>()V

    .line 58
    .local v4, "wifiAwareStateManager":Lcom/android/server/wifi/aware/WifiAwareStateManager;
    new-instance v5, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-direct {v5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    move-object v15, v5

    .line 60
    .local v15, "wifiAwareNativeCallback":Lcom/android/server/wifi/aware/WifiAwareNativeCallback;
    new-instance v5, Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {v5, v4, v3, v15}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    move-object v14, v5

    .line 62
    .local v14, "wifiAwareNativeManager":Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    new-instance v5, Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-direct {v5, v14}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    move-object v13, v5

    .line 63
    .local v13, "wifiAwareNativeApi":Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    invoke-virtual {v4, v14, v13}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->setNative(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;)V

    .line 64
    new-instance v5, Lcom/android/server/wifi/aware/WifiAwareShellCommand;

    invoke-direct {v5}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;-><init>()V

    move-object v12, v5

    .line 65
    .local v12, "wifiAwareShellCommand":Lcom/android/server/wifi/aware/WifiAwareShellCommand;
    const-string v5, "native_api"

    invoke-virtual {v12, v5, v13}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->register(Ljava/lang/String;Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;)V

    .line 66
    const-string v5, "native_cb"

    invoke-virtual {v12, v5, v15}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->register(Ljava/lang/String;Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;)V

    .line 67
    const-string v5, "state_mgr"

    invoke-virtual {v12, v5, v4}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->register(Ljava/lang/String;Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiAwareHandlerThread()Landroid/os/HandlerThread;

    move-result-object v16

    .line 70
    .local v16, "awareHandlerThread":Landroid/os/HandlerThread;
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 71
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMetrics;->getWifiAwareMetrics()Lcom/android/server/wifi/aware/WifiAwareMetrics;

    move-result-object v9

    .line 72
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v10

    .line 73
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v17

    .line 70
    move-object/from16 v6, v16

    move-object v7, v4

    move-object v8, v12

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    .end local v12    # "wifiAwareShellCommand":Lcom/android/server/wifi/aware/WifiAwareShellCommand;
    .local v18, "wifiAwareShellCommand":Lcom/android/server/wifi/aware/WifiAwareShellCommand;
    move-object/from16 v17, v13

    move-object v13, v14

    .end local v13    # "wifiAwareNativeApi":Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .local v17, "wifiAwareNativeApi":Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    move-object/from16 v19, v14

    move-object/from16 v14, v17

    .end local v14    # "wifiAwareNativeManager":Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .local v19, "wifiAwareNativeManager":Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    move-object/from16 v20, v15

    .end local v15    # "wifiAwareNativeCallback":Lcom/android/server/wifi/aware/WifiAwareNativeCallback;
    .local v20, "wifiAwareNativeCallback":Lcom/android/server/wifi/aware/WifiAwareNativeCallback;
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->start(Landroid/os/HandlerThread;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareShellCommand;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    .line 75
    .end local v2    # "wifiInjector":Lcom/android/server/wifi/WifiInjector;
    .end local v3    # "halDeviceManager":Lcom/android/server/wifi/HalDeviceManager;
    .end local v4    # "wifiAwareStateManager":Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .end local v16    # "awareHandlerThread":Landroid/os/HandlerThread;
    .end local v17    # "wifiAwareNativeApi":Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .end local v18    # "wifiAwareShellCommand":Lcom/android/server/wifi/aware/WifiAwareShellCommand;
    .end local v19    # "wifiAwareNativeManager":Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .end local v20    # "wifiAwareNativeCallback":Lcom/android/server/wifi/aware/WifiAwareNativeCallback;
    goto :goto_0

    :cond_1
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    .line 76
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->startLate()V

    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 42
    const-string v0, "WifiAwareService"

    const-string v1, "Registering wifiaware"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "wifiaware"

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    return-void
.end method
