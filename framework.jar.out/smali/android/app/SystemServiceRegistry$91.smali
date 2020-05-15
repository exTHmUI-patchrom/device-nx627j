.class Landroid/app/SystemServiceRegistry$91;
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
        "Landroid/content/pm/CrossProfileApps;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 976
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/content/pm/CrossProfileApps;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 980
    const-string v0, "crossprofileapps"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 982
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 983
    invoke-static {v0}, Landroid/content/pm/ICrossProfileApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ICrossProfileApps;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/CrossProfileApps;-><init>(Landroid/content/Context;Landroid/content/pm/ICrossProfileApps;)V

    .line 982
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$91;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/CrossProfileApps;

    move-result-object p1

    return-object p1
.end method
