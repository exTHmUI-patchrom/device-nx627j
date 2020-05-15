.class public Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.super Ljava/lang/Object;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;
    }
.end annotation


# static fields
.field private static final AGENT_TAG_PREFIX:Ljava/lang/String; = "WIFI_AWARE_AGENT_"

.field private static final AWARE_INTERFACE_PREFIX:Ljava/lang/String; = "aware_data"

.field private static final NETWORK_FACTORY_BANDWIDTH_AVAIL:I = 0x1

.field private static final NETWORK_FACTORY_SCORE_AVAIL:I = 0x1

.field private static final NETWORK_FACTORY_SIGNAL_STRENGTH_AVAIL:I = 0x1

.field private static final NETWORK_TAG:Ljava/lang/String; = "WIFI_AWARE_FACTORY"

.field private static final TAG:Ljava/lang/String; = "WifiAwareDataPathStMgr"

.field private static final VDBG:Z = false

.field private static final sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;


# instance fields
.field mAllowNdpResponderFromAnyOverride:Z

.field private mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

.field private mContext:Landroid/content/Context;

.field mDbg:Z

.field private final mInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

.field private final mNetworkRequestsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            ">;"
        }
    .end annotation
.end field

.field public mNiWrapper:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

.field public mNwService:Landroid/os/INetworkManagementService;

.field private mPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 2
    .param p1, "mgr"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mDbg:Z

    .line 95
    new-instance v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;-><init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNiWrapper:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    .line 98
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    .line 109
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
    .param p1, "x1"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->getNetworkRequestByCanonicalDescriptor(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
    .param p1, "x1"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->selectInterfaceForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
    .param p1, "x1"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->selectChannelForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/net/NetworkCapabilities;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method private getNetworkRequestByCanonicalDescriptor(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;)Ljava/util/Map$Entry;
    .locals 3
    .param p1, "cci"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;",
            ")",
            "Ljava/util/Map$Entry<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->getCanonicalDescriptor()Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->matches(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    return-object v1

    .line 175
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    :cond_0
    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;
    .locals 3
    .param p1, "ndpId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v2, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    if-ne v2, p1, :cond_0

    .line 156
    return-object v1

    .line 158
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isInterfaceUpAndUsedByAnotherNdp(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Z
    .locals 4
    .param p1, "nri"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 928
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 929
    .local v1, "lnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-ne v1, p1, :cond_0

    .line 930
    goto :goto_0

    .line 933
    :cond_0
    iget-object v2, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_2

    .line 936
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 938
    .end local v1    # "lnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    :cond_2
    goto :goto_0

    .line 940
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private selectChannelForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I
    .locals 1
    .param p1, "req"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 991
    const/16 v0, 0x985

    return v0
.end method

.method private selectInterfaceForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;
    .locals 6
    .param p1, "req"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 952
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 953
    .local v0, "potential":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 960
    .local v1, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 961
    .local v3, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-ne v3, p1, :cond_0

    .line 962
    goto :goto_0

    .line 965
    :cond_0
    iget-object v4, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    iget-object v5, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 966
    iget-object v4, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v3    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    :cond_1
    goto :goto_0

    .line 974
    :cond_2
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 975
    .local v3, "ifName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 976
    return-object v3

    .line 978
    .end local v3    # "ifName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 980
    :cond_4
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectInterfaceForRequest: req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - no interfaces available!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v2, 0x0

    return-object v2
.end method

.method private tearDownInterfaceIfPossible(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V
    .locals 5
    .param p1, "nnri"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 905
    iget-object v0, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->isInterfaceUpAndUsedByAnotherNdp(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Z

    move-result v0

    .line 907
    .local v0, "interfaceUsedByAnotherNdp":Z
    if-eqz v0, :cond_0

    .end local v0    # "interfaceUsedByAnotherNdp":Z
    goto :goto_0

    .line 914
    .restart local v0    # "interfaceUsedByAnotherNdp":Z
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    goto :goto_0

    .line 915
    :catch_0
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tearDownInterfaceIfPossible: nnri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": can\'t bring interface down - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v0    # "interfaceUsedByAnotherNdp":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->reconfigureAgentAsDisconnected()V

    .line 925
    :cond_2
    return-void
.end method


# virtual methods
.method public createAllInterfaces()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "WifiAwareDataPathStMgr"

    const-string v1, "createAllInterfaces: capabilities aren\'t initialized yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    if-ge v0, v1, :cond_2

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aware_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAllInterfaces(): interface already up, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", possibly failed to delete - deleting/creating again to be safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteDataPathInterface(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->createDataPathInterface(Ljava/lang/String;)V

    .line 192
    .end local v1    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public deleteAllInterfaces()V
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onAwareDownCleanupDataPaths()V

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "WifiAwareDataPathStMgr"

    const-string v1, "deleteAllInterfaces: capabilities aren\'t initialized yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    if-ge v0, v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aware_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteDataPathInterface(Ljava/lang/String;)V

    .line 219
    .end local v1    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->releaseAwareInterface()V

    .line 224
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1348
    const-string v0, "WifiAwareDataPathStateManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInterfaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  sNetworkCapabilitiesFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNetworkRequestsCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    const-string v0, "  mNetworkFactory:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1354
    return-void
.end method

.method public handleDataPathTimeout(Landroid/net/NetworkSpecifier;)V
    .locals 6
    .param p1, "networkSpecifier"    # Landroid/net/NetworkSpecifier;

    .line 639
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDataPathTimeout: networkSpecifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 642
    .local v0, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-nez v0, :cond_2

    .line 643
    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mDbg:Z

    if-eqz v1, :cond_1

    .line 644
    const-string v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDataPathTimeout: network request not found for networkSpecifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    return-void

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 651
    invoke-virtual {v3}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v3

    iget-wide v4, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    .line 650
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpStatus(IZJ)V

    .line 653
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 654
    const/16 v1, 0x6a

    iput v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 655
    return-void
.end method

.method public onAwareDownCleanupDataPaths()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    .line 625
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->tearDownInterfaceIfPossible(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V

    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method public onDataPathConfirm(I[BZI[BLjava/util/List;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 22
    .param p1, "ndpId"    # I
    .param p2, "mac"    # [B
    .param p3, "accept"    # Z
    .param p4, "reason"    # I
    .param p5, "message"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BZI[B",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;"
        }
    .end annotation

    .local p6, "channelInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;>;"
    move-object/from16 v11, p0

    move/from16 v10, p1

    .line 478
    nop

    .line 479
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;

    move-result-object v9

    .line 480
    .local v9, "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    if-nez v9, :cond_1

    .line 481
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataPathConfirm: network request not found for ndpId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-eqz p3, :cond_0

    .line 483
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 485
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 489
    .local v8, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 492
    .local v7, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    iget v0, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 493
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataPathConfirm: invalid state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    if-eqz p3, :cond_2

    .line 496
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 498
    :cond_2
    return-object v8

    .line 501
    :cond_3
    if-eqz p3, :cond_6

    .line 502
    const/16 v0, 0x66

    iput v0, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 503
    move-object/from16 v6, p2

    iput-object v6, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDataMac:[B

    .line 504
    move-object/from16 v5, p6

    iput-object v5, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->channelInfo:Ljava/util/List;

    .line 506
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "WIFI_AWARE_FACTORY"

    const-string v2, ""

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 508
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkCapabilities;

    sget-object v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object/from16 v17, v0

    .line 510
    .local v17, "networkCapabilities":Landroid/net/NetworkCapabilities;
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v18, v0

    .line 512
    .local v18, "linkProperties":Landroid/net/LinkProperties;
    invoke-direct {v11, v7}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->isInterfaceUpAndUsedByAnotherNdp(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Z

    move-result v19

    .line 513
    .local v19, "interfaceUsedByAnotherNdp":Z
    if-nez v19, :cond_4

    .line 515
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 516
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": can\'t configure network - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 522
    const/16 v1, 0x6a

    iput v1, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 523
    return-object v8

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    iget-object v12, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNiWrapper:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

    iget-object v14, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->equivalentSpecifiers:Ljava/util/Set;

    move-object v13, v7

    move v15, v10

    move-object/from16 v16, v2

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->configureAgentProperties(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;Ljava/util/Set;ILandroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 534
    return-object v8

    .line 537
    :cond_5
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    iget-object v12, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mLooper:Landroid/os/Looper;

    iget-object v13, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFI_AWARE_AGENT_"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Landroid/net/NetworkInfo;

    const-string v1, "WIFI_AWARE_FACTORY"

    move-object/from16 v20, v2

    const-string v2, ""

    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .local v20, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {v15, v3, v4, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    move-object v1, v0

    move-object/from16 v3, v20

    move-object v2, v11

    .end local v20    # "networkInfo":Landroid/net/NetworkInfo;
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    move-object/from16 v21, v3

    move-object v3, v12

    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .local v21, "networkInfo":Landroid/net/NetworkInfo;
    move v12, v4

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v13, v7

    move-object/from16 v7, v17

    .end local v7    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .local v13, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    move-object v14, v8

    move-object/from16 v8, v18

    .end local v8    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .local v14, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    move-object v15, v9

    move/from16 v9, v16

    .end local v9    # "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    .local v15, "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;-><init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V

    iput-object v0, v13, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    .line 542
    iget-object v0, v13, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 544
    .end local v21    # "networkInfo":Landroid/net/NetworkInfo;
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v14}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v2

    iget-wide v3, v13, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    invoke-virtual {v0, v12, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpStatus(IZJ)V

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v13, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    .line 547
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget v2, v13, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->uid:I

    iget-object v3, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpCreation(ILjava/util/Map;)V

    .line 548
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v17    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .end local v18    # "linkProperties":Landroid/net/LinkProperties;
    .end local v19    # "interfaceUsedByAnotherNdp":Z
    nop

    .line 558
    move/from16 v4, p4

    goto :goto_1

    .line 553
    .end local v13    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .end local v14    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .end local v15    # "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    .restart local v7    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .restart local v8    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .restart local v9    # "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    :cond_6
    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    .end local v7    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .end local v8    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .end local v9    # "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    .restart local v13    # "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    .restart local v14    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .restart local v15    # "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, v11, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v14}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v1

    iget-wide v2, v13, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    move/from16 v4, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpStatus(IZJ)V

    .line 558
    :goto_1
    return-object v14
.end method

.method public onDataPathEnd(I)V
    .locals 4
    .param p1, "ndpId"    # I

    .line 570
    nop

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 572
    .local v0, "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    if-nez v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->tearDownInterfaceIfPossible(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v1, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1

    .line 581
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v1, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_2

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-wide v2, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpSessionDuration(J)V

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->tickleConnectivityIfWaiting()V

    .line 587
    return-void
.end method

.method public onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V
    .locals 5
    .param p1, "networkSpecifier"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p2, "reason"    # I

    .line 300
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 301
    .local v0, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-nez v0, :cond_0

    .line 302
    const-string v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataPathInitiateFail: network request not found for networkSpecifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 307
    :cond_0
    iget v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_1

    .line 309
    const-string v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataPathInitiateFail: network request in incorrect state: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v2

    iget-wide v3, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpStatus(IZJ)V

    .line 314
    return-void
.end method

.method public onDataPathInitiateSuccess(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V
    .locals 4
    .param p1, "networkSpecifier"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p2, "ndpId"    # I

    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 267
    .local v0, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    if-nez v0, :cond_0

    .line 268
    const-string v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataPathInitiateSuccess: network request not found for networkSpecifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 271
    return-void

    .line 274
    :cond_0
    iget v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_1

    .line 276
    const-string v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataPathInitiateSuccess: network request in incorrect state: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 280
    return-void

    .line 283
    :cond_1
    const/16 v1, 0x65

    iput v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 284
    iput p2, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    .line 285
    return-void
.end method

.method public onDataPathRequest(I[BI)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 12
    .param p1, "pubSubId"    # I
    .param p2, "mac"    # [B
    .param p3, "ndpId"    # I

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    const/4 v1, 0x0

    .line 337
    .local v1, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 347
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    if-eq v4, p1, :cond_0

    .line 348
    goto :goto_0

    .line 351
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    if-eqz v4, :cond_1

    .line 352
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    .line 351
    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    goto :goto_0

    .line 356
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v5, 0x68

    if-eq v4, v5, :cond_2

    .line 358
    goto :goto_0

    .line 361
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 362
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 363
    nop

    .line 366
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    :cond_3
    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 367
    const-string v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataPathRequest: can\'t find a request with specified pubSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {p2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;Z)V

    .line 373
    return-object v2

    .line 376
    :cond_4
    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    if-nez v3, :cond_5

    .line 378
    iput-object p2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    .line 380
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->selectInterfaceForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    .line 381
    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 382
    const-string v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataPathRequest: request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " no interface available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;Z)V

    .line 385
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-object v2

    .line 389
    :cond_6
    const/16 v2, 0x69

    iput v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 390
    iput p3, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    .line 392
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v5, 0x1

    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v8, v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v9, v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 393
    invoke-virtual {v2}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v10

    .line 392
    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;Z)V

    .line 395
    return-object v0
.end method

.method public onDataPathSchedUpdate([BLjava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "peerMac"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 600
    .local p2, "ndpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "channelInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 601
    .local v1, "ndpId":I
    nop

    .line 602
    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 603
    .local v2, "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    if-nez v2, :cond_0

    .line 604
    const-string v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataPathSchedUpdate: ndpId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    goto :goto_0

    .line 607
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v3, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 608
    const-string v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataPathSchedUpdate: ndpId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", report NMI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t match NDP NMI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v5, v5, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    invoke-static {v5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    goto :goto_0

    .line 614
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iput-object p3, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->channelInfo:Ljava/util/List;

    .line 615
    .end local v1    # "ndpId":I
    .end local v2    # "nnriE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    goto/16 :goto_0

    .line 616
    :cond_2
    return-void
.end method

.method public onInterfaceCreated(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterfaceCreated: already contains interface -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public onInterfaceDeleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterfaceDeleted: interface not on list -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public onRespondToDataPathRequest(IZI)V
    .locals 6
    .param p1, "ndpId"    # I
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    const/4 v1, 0x0

    .line 412
    .local v1, "nnri":Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 413
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    if-ne v4, p1, :cond_0

    .line 414
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 415
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 416
    goto :goto_1

    .line 418
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;>;"
    :cond_0
    goto :goto_0

    .line 420
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 421
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRespondToDataPathRequest: can\'t find a request with specified ndpId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 430
    :cond_2
    if-nez p2, :cond_3

    .line 431
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRespondToDataPathRequest: request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed responding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 434
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->isOutOfBand()Z

    move-result v3

    iget-wide v4, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->startTimestamp:J

    invoke-virtual {v2, p3, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordNdpStatus(IZJ)V

    .line 437
    return-void

    .line 440
    :cond_3
    iget v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v3, 0x69

    if-eq v2, v3, :cond_4

    .line 442
    const-string v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRespondToDataPathRequest: request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is incorrect state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 445
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void

    .line 449
    :cond_4
    const/16 v2, 0x65

    iput v2, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 450
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "awareMetrics"    # Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .param p4, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p5, "permissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 123
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    .line 125
    iput-object p4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 126
    iput-object p5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 127
    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mLooper:Landroid/os/Looper;

    .line 129
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 130
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 131
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 132
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 133
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 134
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 135
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 136
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 137
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 138
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/MatchAllNetworkSpecifier;

    invoke-direct {v1}, Landroid/net/MatchAllNetworkSpecifier;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 139
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 140
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 141
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    .line 143
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->sNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;-><init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->setScoreFilter(I)V

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->register()V

    .line 147
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 149
    return-void
.end method
