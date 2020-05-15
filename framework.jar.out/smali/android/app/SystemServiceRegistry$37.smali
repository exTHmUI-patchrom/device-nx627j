.class Landroid/app/SystemServiceRegistry$37;
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
        "Landroid/app/usage/StorageStatsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/usage/StorageStatsManager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 489
    const-string/jumbo v0, "storagestats"

    .line 490
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 489
    invoke-static {v0}, Landroid/app/usage/IStorageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IStorageStatsManager;

    move-result-object v0

    .line 491
    .local v0, "service":Landroid/app/usage/IStorageStatsManager;
    new-instance v1, Landroid/app/usage/StorageStatsManager;

    invoke-direct {v1, p1, v0}, Landroid/app/usage/StorageStatsManager;-><init>(Landroid/content/Context;Landroid/app/usage/IStorageStatsManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$37;->createService(Landroid/app/ContextImpl;)Landroid/app/usage/StorageStatsManager;

    move-result-object p1

    return-object p1
.end method
