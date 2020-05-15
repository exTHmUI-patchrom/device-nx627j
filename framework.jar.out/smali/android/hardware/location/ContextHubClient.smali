.class public Landroid/hardware/location/ContextHubClient;
.super Ljava/lang/Object;
.source "ContextHubClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mAttachedHub:Landroid/hardware/location/ContextHubInfo;

.field private mClientProxy:Landroid/hardware/location/IContextHubClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubInfo;)V
    .locals 2
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    .line 50
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    iput-object p1, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    .line 56
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 92
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/location/ContextHubClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttachedHub()Landroid/hardware/location/ContextHubInfo;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 2
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 120
    const-string v0, "NanoAppMessage cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method setClientProxy(Landroid/hardware/location/IContextHubClient;)V
    .locals 2
    .param p1, "clientProxy"    # Landroid/hardware/location/IContextHubClient;

    .line 67
    const-string v0, "IContextHubClient cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    if-nez v0, :cond_0

    .line 72
    iput-object p1, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    .line 73
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change client proxy multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
