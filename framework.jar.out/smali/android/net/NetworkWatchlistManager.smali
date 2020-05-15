.class public Landroid/net/NetworkWatchlistManager;
.super Ljava/lang/Object;
.source "NetworkWatchlistManager.java"


# static fields
.field private static final SHARED_MEMORY_TAG:Ljava/lang/String; = "NETWORK_WATCHLIST_SHARED_MEMORY"

.field private static final TAG:Ljava/lang/String; = "NetworkWatchlistManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    .line 54
    const-string/jumbo v0, "network_watchlist"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/net/INetworkWatchlistManager;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    .line 47
    return-void
.end method


# virtual methods
.method public getWatchlistConfigHash()[B
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Unable to get watchlist config hash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reloadWatchlist()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->reloadWatchlist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Unable to reload watchlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public reportWatchlistIfNecessary()V
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->reportWatchlistIfNecessary()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Cannot report records"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
