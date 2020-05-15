.class Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;
.super Ljava/lang/Object;
.source "WifiP2pNative.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListenerInternal"
.end annotation


# instance fields
.field private final mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

.field private mValid:Z

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pNative;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V
    .locals 0
    .param p2, "externalListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 80
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 82
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    .line 83
    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 93
    const-string v0, "WifiP2pNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P InterfaceDestroyedListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    if-nez v0, :cond_0

    .line 95
    const-string v0, "WifiP2pNative"

    const-string v1, "Ignoring stale interface destroyed listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public teardownAndInvalidate(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->access$100(Lcom/android/server/wifi/p2p/WifiP2pNative;)Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->teardownIface(Ljava/lang/String;)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pNative;->access$002(Lcom/android/server/wifi/p2p/WifiP2pNative;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    .line 89
    return-void
.end method
