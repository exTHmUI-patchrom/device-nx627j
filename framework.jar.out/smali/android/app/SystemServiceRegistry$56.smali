.class Landroid/app/SystemServiceRegistry$56;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/net/wifi/rtt/WifiRttManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 655
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/wifi/rtt/WifiRttManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 659
    const-string/jumbo v0, "wifirtt"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 661
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/rtt/IWifiRttManager;

    move-result-object v1

    .line 662
    .local v1, "service":Landroid/net/wifi/rtt/IWifiRttManager;
    new-instance v2, Landroid/net/wifi/rtt/WifiRttManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/net/wifi/rtt/WifiRttManager;-><init>(Landroid/content/Context;Landroid/net/wifi/rtt/IWifiRttManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$56;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/rtt/WifiRttManager;

    move-result-object p1

    return-object p1
.end method
