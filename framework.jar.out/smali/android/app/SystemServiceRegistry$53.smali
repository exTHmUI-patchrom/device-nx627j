.class Landroid/app/SystemServiceRegistry$53;
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
        "Landroid/net/wifi/aware/WifiAwareManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/wifi/aware/WifiAwareManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 626
    const-string/jumbo v0, "wifiaware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 627
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;

    move-result-object v1

    .line 628
    .local v1, "service":Landroid/net/wifi/aware/IWifiAwareManager;
    if-nez v1, :cond_0

    .line 629
    const/4 v2, 0x0

    return-object v2

    .line 631
    :cond_0
    new-instance v2, Landroid/net/wifi/aware/WifiAwareManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/net/wifi/aware/WifiAwareManager;-><init>(Landroid/content/Context;Landroid/net/wifi/aware/IWifiAwareManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 623
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$53;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/aware/WifiAwareManager;

    move-result-object p1

    return-object p1
.end method
