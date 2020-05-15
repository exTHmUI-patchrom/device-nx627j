.class abstract Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticApplicationContextServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1186
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 1191
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<TT;>;"
    monitor-enter p0

    .line 1192
    :try_start_0
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1193
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->createService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    goto :goto_1

    .line 1200
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V

    .line 1204
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
