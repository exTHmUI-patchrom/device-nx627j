.class Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceAvailableForRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p2, "x1"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;

    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    iget-boolean v0, v0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "WifiAwareNativeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface availability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiNanIface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 234
    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$500(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$700(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    if-eqz p1, :cond_1

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsage()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$500(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsage()V

    .line 242
    :cond_2
    :goto_0
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
