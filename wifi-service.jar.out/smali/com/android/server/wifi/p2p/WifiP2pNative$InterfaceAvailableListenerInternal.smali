.class Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;
.super Ljava/lang/Object;
.source "WifiP2pNative.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceAvailableListenerInternal"
.end annotation


# instance fields
.field private final mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pNative;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;)V
    .locals 0
    .param p2, "externalListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;->this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;

    .line 54
    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .line 58
    const-string v0, "WifiP2pNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P InterfaceAvailableListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;->this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->access$000(Lcom/android/server/wifi/p2p/WifiP2pNative;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 65
    const-string v0, "WifiP2pNative"

    const-string v1, "Masking interface non-availability callback because we created a P2P iface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceAvailableListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;->onAvailabilityChanged(Z)V

    .line 70
    return-void
.end method
