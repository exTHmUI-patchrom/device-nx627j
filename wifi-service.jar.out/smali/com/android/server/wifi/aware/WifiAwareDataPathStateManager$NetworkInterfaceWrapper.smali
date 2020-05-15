.class public Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;
.super Ljava/lang/Object;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkInterfaceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 1284
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureAgentProperties(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;Ljava/util/Set;ILandroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .locals 8
    .param p1, "nnri"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .param p3, "ndpId"    # I
    .param p4, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p5, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            "Ljava/util/Set<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;I",
            "Landroid/net/NetworkInfo;",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/LinkProperties;",
            ")Z"
        }
    .end annotation

    .line 1294
    .local p2, "networkSpecifiers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;>;"
    const/4 v0, 0x0

    move-object v1, v0

    .line 1297
    .local v1, "linkLocal":Ljava/net/InetAddress;
    const/16 v2, 0x6a

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    .local v4, "ni":Ljava/net/NetworkInterface;
    nop

    .line 1303
    nop

    .line 1305
    if-nez v4, :cond_0

    .line 1306
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": can\'t get network interface (null)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 1309
    iput v2, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 1310
    return v3

    .line 1312
    :cond_0
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 1313
    .local v5, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1314
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 1315
    .local v6, "ip":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet6Address;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1316
    move-object v1, v6

    .line 1317
    goto :goto_1

    .line 1319
    .end local v6    # "ip":Ljava/net/InetAddress;
    :cond_1
    goto :goto_0

    .line 1321
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1322
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": no link local addresses"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 1324
    iput v2, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 1325
    return v3

    .line 1329
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1330
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p4, v6, v0, v0}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    new-instance v6, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    new-array v3, v3, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1333
    invoke-interface {p2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-direct {v6, v3}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;-><init>([Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V

    .line 1332
    invoke-virtual {p5, v6}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1335
    iget-object v3, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-virtual {p6, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1336
    new-instance v3, Landroid/net/LinkAddress;

    const/16 v6, 0x40

    invoke-direct {v3, v1, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p6, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1337
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    const-string v7, "fe80::/64"

    invoke-direct {v6, v7}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-direct {v3, v6, v0, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {p6, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1340
    return v2

    .line 1298
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/net/SocketException;
    const-string v4, "WifiAwareDataPathStMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": can\'t get network interface - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 1302
    iput v2, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 1303
    return v3
.end method
