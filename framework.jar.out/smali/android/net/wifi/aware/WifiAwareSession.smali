.class public Landroid/net/wifi/aware/WifiAwareSession;
.super Ljava/lang/Object;
.source "WifiAwareSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareSession"

.field private static final VDBG:Z = false


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V
    .locals 2
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "binder"    # Landroid/os/Binder;
    .param p3, "clientId"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 48
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    .line 56
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 59
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 74
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 75
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 76
    const-string v1, "WifiAwareSession"

    const-string v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 79
    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->disconnect(ILandroid/os/Binder;)V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 81
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 82
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 83
    return-void
.end method

.method public createNetworkSpecifierOpen(I[B)Landroid/net/NetworkSpecifier;
    .locals 7
    .param p1, "role"    # I
    .param p2, "peer"    # [B

    .line 236
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 237
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    const-string v2, "WifiAwareSession"

    const-string v3, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v1

    .line 241
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1

    .line 242
    const-string v2, "WifiAwareSession"

    const-string v3, "createNetworkSpecifierOpen: called after termination"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v1

    .line 245
    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkSpecifierPassphrase(I[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 7
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .param p3, "passphrase"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 279
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    const-string v2, "WifiAwareSession"

    const-string v3, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v1

    .line 283
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1

    .line 284
    const-string v2, "WifiAwareSession"

    const-string v3, "createNetworkSpecifierPassphrase: called after termination"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-object v1

    .line 287
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v5, 0x0

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    .line 288
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Passphrase must meet length requirements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createNetworkSpecifierPmk(I[B[B)Landroid/net/NetworkSpecifier;
    .locals 7
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .param p3, "pmk"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 329
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 330
    const-string v2, "WifiAwareSession"

    const-string v3, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-object v1

    .line 333
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1

    .line 334
    const-string v2, "WifiAwareSession"

    const-string v3, "createNetworkSpecifierPmk: called after termination"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-object v1

    .line 337
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    .line 338
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PMK must 32 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 93
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    nop

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClientId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    return v0
.end method

.method public publish(Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p2, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 148
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 149
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 150
    const-string v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 157
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 159
    return-void
.end method

.method public subscribe(Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p2, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 194
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 195
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 196
    const-string v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 199
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 203
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 205
    return-void
.end method
