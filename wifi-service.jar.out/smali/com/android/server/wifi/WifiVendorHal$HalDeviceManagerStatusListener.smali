.class public Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalDeviceManagerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 3259
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStatusChanged$0(Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;)V
    .locals 5

    .line 3263
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1800(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isReady()Z

    move-result v0

    .line 3264
    .local v0, "isReady":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1800(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v1

    .line 3266
    .local v1, "isStarted":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v2, v2, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Manager onStatusChanged. isReady(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isStarted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V

    .line 3268
    if-nez v0, :cond_0

    .line 3271
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3272
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->access$1900(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 3273
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->access$2000(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    move-result-object v3

    .line 3274
    .local v3, "handler":Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3275
    if-eqz v3, :cond_0

    .line 3276
    invoke-interface {v3}, Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;->onDeath()V

    .end local v3    # "handler":Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    goto :goto_0

    .line 3274
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3279
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onStatusChanged()V
    .locals 2

    .line 3262
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$1300(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$HalDeviceManagerStatusListener$m-PlQl0M_V7FGy20TLBMArwva0c;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$HalDeviceManagerStatusListener$m-PlQl0M_V7FGy20TLBMArwva0c;-><init>(Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3280
    return-void
.end method
