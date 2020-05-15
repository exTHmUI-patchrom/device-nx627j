.class Landroid/app/SystemServiceRegistry$12;
.super Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 282
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 283
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 284
    .local v1, "service":Landroid/net/IConnectivityManager;
    new-instance v2, Landroid/net/ConnectivityManager;

    invoke-direct {v2, p1, v1}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$12;->createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    return-object p1
.end method
