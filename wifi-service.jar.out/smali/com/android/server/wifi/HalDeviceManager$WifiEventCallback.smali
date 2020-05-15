.class Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiEventCallback$Stub;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "x1"    # Lcom/android/server/wifi/HalDeviceManager$1;

    .line 1223
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/hardware/wifi/V1_0/WifiStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifiEventCallback.onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->access$400(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->access$600(Lcom/android/server/wifi/HalDeviceManager;)V

    .line 1242
    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1228
    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1234
    return-void
.end method
