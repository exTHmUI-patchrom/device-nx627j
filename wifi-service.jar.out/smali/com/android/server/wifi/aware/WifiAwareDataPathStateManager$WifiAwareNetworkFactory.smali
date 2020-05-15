.class Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiAwareNetworkFactory"
.end annotation


# instance fields
.field private mWaitingForTermination:Z

.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "filter"    # Landroid/net/NetworkCapabilities;

    .line 662
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 663
    const-string p1, "WIFI_AWARE_FACTORY"

    invoke-direct {p0, p2, p3, p1, p4}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 660
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->mWaitingForTermination:Z

    .line 664
    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 10
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 681
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->isUsageEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 686
    return v1

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$100(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiAwareNetworkFactory.acceptRequest: request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- No Aware interfaces are up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v1

    .line 695
    :cond_1
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 696
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 697
    .local v0, "networkSpecifierBase":Landroid/net/NetworkSpecifier;
    instance-of v2, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez v2, :cond_2

    .line 698
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiAwareNetworkFactory.acceptRequest: request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - not a WifiAwareNetworkSpecifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v1

    .line 703
    :cond_2
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 707
    .local v2, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 708
    .local v3, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    const/16 v4, 0x6a

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 714
    iget v6, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    if-ne v6, v4, :cond_3

    .line 715
    iput-boolean v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->mWaitingForTermination:Z

    .line 716
    return v1

    .line 721
    :cond_3
    return v5

    .line 724
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v6}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 725
    invoke-static {v7}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$300(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v8}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$400(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-boolean v9, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    .line 724
    invoke-static {v2, v6, v7, v8, v9}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->processNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Z)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    move-result-object v3

    .line 726
    if-nez v3, :cond_5

    .line 727
    const-string v4, "WifiAwareDataPathStMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAwareNetworkFactory.acceptRequest: request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - can\'t parse network specifier"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return v1

    .line 733
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 734
    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->getCanonicalDescriptor()Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$500(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;)Ljava/util/Map$Entry;

    move-result-object v6

    .line 735
    .local v6, "primaryRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    if-eqz v6, :cond_7

    .line 742
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v7, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    if-ne v7, v4, :cond_6

    .line 744
    iput-boolean v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->mWaitingForTermination:Z

    goto :goto_0

    .line 746
    :cond_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->updateToSupportNewRequest(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V

    .line 748
    :goto_0
    return v1

    .line 751
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    return v5
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 13
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 763
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 764
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 765
    .local v0, "networkSpecifierObj":Landroid/net/NetworkSpecifier;
    const/4 v1, 0x0

    .line 766
    .local v1, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    instance-of v2, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-eqz v2, :cond_0

    .line 767
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 770
    .local v12, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-nez v12, :cond_1

    .line 771
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiAwareNetworkFactory.needNetworkFor: networkRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not in cache!?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void

    .line 776
    :cond_1
    iget v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    .line 783
    return-void

    .line 785
    :cond_2
    iget-object v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v2, v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-nez v2, :cond_4

    .line 787
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v2, v12}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    .line 788
    iget-object v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 789
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needNetworkFor: request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " no interface available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    return-void

    .line 795
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v2

    iget v4, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerInstanceId:I

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 796
    invoke-static {v3, v12}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$700(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I

    move-result v6

    iget-object v7, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    iget-object v8, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v9, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v3, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v10, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 798
    invoke-virtual {v3}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v11

    .line 795
    move-object v3, v1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->initiateDataPathSetup(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)V

    .line 799
    const/16 v2, 0x67

    iput v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    goto :goto_0

    .line 803
    :cond_4
    const/16 v2, 0x68

    iput v2, v12, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 805
    :goto_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 6
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 814
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 815
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 816
    .local v0, "networkSpecifierObj":Landroid/net/NetworkSpecifier;
    const/4 v1, 0x0

    .line 817
    .local v1, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    instance-of v2, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-eqz v2, :cond_0

    .line 818
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 821
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 822
    .local v2, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-nez v2, :cond_1

    .line 823
    const-string v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiAwareNetworkFactory.releaseNetworkFor: networkRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not in cache!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void

    .line 828
    :cond_1
    iget-object v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    if-eqz v3, :cond_2

    .line 835
    return-void

    .line 843
    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->removeSupportForRequest(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V

    .line 844
    iget-object v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 849
    iget v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    if-eqz v3, :cond_3

    .line 851
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v3

    iget v4, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 852
    const/16 v3, 0x6a

    iput v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    goto :goto_0

    .line 854
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_4
    :goto_0
    return-void
.end method

.method public tickleConnectivityIfWaiting()V
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->mWaitingForTermination:Z

    if-eqz v0, :cond_0

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->mWaitingForTermination:Z

    .line 670
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->reevaluateAllRequests()V

    .line 672
    :cond_0
    return-void
.end method
