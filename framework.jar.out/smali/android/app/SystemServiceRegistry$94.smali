.class Landroid/app/SystemServiceRegistry$94;
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
        "Landroid/os/BSPApplicationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1009
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/BSPApplicationManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1012
    const-string/jumbo v0, "nubia.bspapplication.manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1013
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 1014
    invoke-static {v0}, Landroid/os/IBSPApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBSPApplicationManager;

    move-result-object v1

    .line 1015
    .local v1, "service":Landroid/os/IBSPApplicationManager;
    if-nez v1, :cond_0

    .line 1016
    const-string v2, "SystemServiceRegistry"

    const-string v3, "Failed to get applicationmanager service."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v2, 0x0

    return-object v2

    .line 1019
    :cond_0
    new-instance v2, Landroid/os/BSPApplicationManager;

    invoke-direct {v2, v1}, Landroid/os/BSPApplicationManager;-><init>(Landroid/os/IBSPApplicationManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1009
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$94;->createService(Landroid/app/ContextImpl;)Landroid/os/BSPApplicationManager;

    move-result-object p1

    return-object p1
.end method
