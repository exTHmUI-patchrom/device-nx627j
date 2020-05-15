.class public Landroid/net/wifi/aware/WifiAwareManager;
.super Ljava/lang/Object;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;,
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;,
        Landroid/net/wifi/aware/WifiAwareManager$DataPathRole;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_AWARE_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareManager"

.field private static final VDBG:Z = false

.field public static final WIFI_AWARE_DATA_PATH_ROLE_INITIATOR:I = 0x0

.field public static final WIFI_AWARE_DATA_PATH_ROLE_RESPONDER:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/net/wifi/aware/IWifiAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/aware/IWifiAwareManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/aware/IWifiAwareManager;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    .line 173
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 175
    return-void
.end method


# virtual methods
.method public attach(Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p2, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    .line 261
    return-void
.end method

.method public attach(Landroid/net/wifi/aware/AttachCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, v0}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    .line 227
    return-void
.end method

.method public attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 15
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p3, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p4, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;

    move-object v7, p0

    .line 273
    if-eqz p3, :cond_2

    .line 277
    iget-object v8, v7, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 278
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 278
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v3, v0

    .line 281
    .local v3, "looper":Landroid/os/Looper;
    :try_start_1
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 282
    .local v4, "binder":Landroid/os/Binder;
    iget-object v9, v7, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v0, v7, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    move-object v1, v12

    move-object v2, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v14, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    move-object v10, v4

    move-object/from16 v13, p2

    invoke-interface/range {v9 .. v14}, Landroid/net/wifi/aware/IWifiAwareManager;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v4    # "binder":Landroid/os/Binder;
    nop

    .line 289
    .end local v3    # "looper":Landroid/os/Looper;
    :try_start_2
    monitor-exit v8

    .line 290
    return-void

    .line 286
    .restart local v3    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "looper":Landroid/os/Looper;
    :goto_3
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 274
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null callback provided"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 14
    .param p1, "clientId"    # I
    .param p2, "role"    # I
    .param p3, "sessionId"    # I
    .param p4, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p5, "pmk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p4

    .line 418
    const/4 v0, 0x1

    if-eqz v10, :cond_1

    if-ne v10, v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    move-object v12, p0

    iget-object v1, v12, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Landroid/net/wifi/aware/WifiAwareUtils;->isLegacyVersion(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 426
    :cond_2
    move-object v12, p0

    :goto_1
    if-eqz v11, :cond_6

    .line 432
    :cond_3
    new-instance v13, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 433
    const/4 v1, 0x0

    if-nez v11, :cond_4

    .line 438
    move v2, v0

    goto :goto_2

    .line 434
    :cond_4
    nop

    .line 438
    move v2, v1

    :goto_2
    if-eqz v11, :cond_5

    iget v0, v11, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move v5, v0

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    const/4 v6, 0x0

    .line 442
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    move-object v0, v13

    move v1, v2

    move v2, v10

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;I)V

    .line 432
    return-object v13

    .line 427
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid peer handle - cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 14
    .param p1, "clientId"    # I
    .param p2, "role"    # I
    .param p3, "peer"    # [B
    .param p4, "pmk"    # [B
    .param p5, "passphrase"    # Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 454
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    if-ne v10, v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    move-object v12, p0

    iget-object v0, v12, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Landroid/net/wifi/aware/WifiAwareUtils;->isLegacyVersion(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 462
    :cond_2
    move-object v12, p0

    :goto_1
    if-eqz v11, :cond_7

    .line 467
    :cond_3
    if-eqz v11, :cond_5

    array-length v0, v11

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 468
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid peer MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_5
    :goto_2
    new-instance v13, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 472
    if-nez v11, :cond_6

    const/4 v0, 0x3

    .line 473
    :goto_3
    move v1, v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 481
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    move-object v0, v13

    move v2, v10

    move v3, p1

    move-object v6, v11

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;I)V

    .line 471
    return-object v13

    .line 463
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createNetworkSpecifier: Invalid peer MAC - cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect(ILandroid/os/Binder;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/Binder;

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->disconnect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    nop

    .line 301
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 2

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAvailable()Z
    .locals 2

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareManager;->isUsageEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .locals 9
    .param p1, "clientId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 308
    if-eqz p4, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v5, 0x1

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    invoke-interface {v0, v1, p1, p3, v8}, Landroid/net/wifi/aware/IWifiAwareManager;->publish(Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    nop

    .line 319
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null callback provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V
    .locals 7
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I

    .line 389
    if-eqz p3, :cond_0

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v3, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager;->sendMessage(III[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    nop

    .line 406
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sendMessage: invalid peerHandle - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .locals 9
    .param p1, "clientId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 345
    if-eqz p4, :cond_0

    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    invoke-interface {v0, v1, p1, p3, v8}, Landroid/net/wifi/aware/IWifiAwareManager;->subscribe(Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null callback provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public terminateSession(II)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->terminateSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 329
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    nop

    .line 333
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    nop

    .line 370
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
