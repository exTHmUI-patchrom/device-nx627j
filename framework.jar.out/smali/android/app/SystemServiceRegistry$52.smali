.class Landroid/app/SystemServiceRegistry$52;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 614
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 617
    const-string/jumbo v0, "wifip2p"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 618
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v1

    .line 619
    .local v1, "service":Landroid/net/wifi/p2p/IWifiP2pManager;
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager;-><init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$52;->createService()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    return-object v0
.end method
