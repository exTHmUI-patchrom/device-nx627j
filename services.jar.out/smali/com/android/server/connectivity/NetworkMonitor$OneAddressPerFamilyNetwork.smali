.class Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;
.super Landroid/net/Network;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneAddressPerFamilyNetwork"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 1010
    invoke-direct {p0, p1}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    .line 1011
    return-void
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1016
    nop

    .line 1017
    invoke-static {p0, p1}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 1016
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1020
    .local v0, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1021
    .local v1, "addressByFamily":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Class;Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1024
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1025
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .end local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/InetAddress;

    return-object v2
.end method
