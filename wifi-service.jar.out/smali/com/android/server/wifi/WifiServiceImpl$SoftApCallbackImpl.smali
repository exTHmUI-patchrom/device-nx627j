.class final Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoftApCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiServiceImpl$1;

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 7
    .param p1, "numClients"    # I

    .line 1279
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1602(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1282
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->onNumClientsChanged(I)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1300
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1303
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_1
    invoke-interface {v1, p1}, Landroid/net/wifi/ISoftApCallback;->onNumClientsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1311
    goto :goto_1

    .line 1304
    :catch_0
    move-exception v2

    .line 1305
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNumClientsChanged: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1307
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1310
    goto :goto_1

    .line 1308
    :catch_1
    move-exception v3

    .line 1309
    .local v3, "ee":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNumClientsChanged: remove -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1312
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ee":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 1315
    :cond_0
    goto :goto_2

    .line 1313
    :catch_2
    move-exception v1

    .line 1314
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNumClientsChanged: exception -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 7
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 1327
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1702(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1330
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->onStaConnected(Ljava/lang/String;I)V

    .line 1332
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1350
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1353
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStaConnected Macaddr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with num of active client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 1354
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1353
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/ISoftApCallback;->onStaConnected(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1363
    goto :goto_1

    .line 1356
    :catch_0
    move-exception v2

    .line 1357
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStaConnected: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1359
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1362
    goto :goto_1

    .line 1360
    :catch_1
    move-exception v3

    .line 1361
    .local v3, "ee":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStaConnected: remove -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1364
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ee":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 1367
    :cond_0
    goto :goto_2

    .line 1365
    :catch_2
    move-exception v1

    .line 1366
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStaConnected: exception -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 7
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 1379
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1702(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1382
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->onStaDisconnected(Ljava/lang/String;I)V

    .line 1384
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1403
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1406
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStaDisconnected Macaddr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with num of active client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 1407
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1406
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/ISoftApCallback;->onStaDisconnected(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1416
    goto :goto_1

    .line 1409
    :catch_0
    move-exception v2

    .line 1410
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStaDisconnected: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1412
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1415
    goto :goto_1

    .line 1413
    :catch_1
    move-exception v3

    .line 1414
    .local v3, "ee":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStaDisconnected: remove -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1417
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ee":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 1420
    :cond_0
    goto :goto_2

    .line 1418
    :catch_2
    move-exception v1

    .line 1419
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStaDisconnected: exception -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    return-void
.end method

.method public onStateChanged(II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 1232
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1302(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1235
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->onStateChanged(II)V

    .line 1237
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1253
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1256
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/ISoftApCallback;->onStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1264
    goto :goto_1

    .line 1257
    :catch_0
    move-exception v2

    .line 1258
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChanged: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1260
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1263
    goto :goto_1

    .line 1261
    :catch_1
    move-exception v3

    .line 1262
    .local v3, "ee":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChanged: remove -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1265
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ee":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 1268
    :cond_0
    goto :goto_2

    .line 1266
    :catch_2
    move-exception v1

    .line 1267
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChanged: exception -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    return-void
.end method
