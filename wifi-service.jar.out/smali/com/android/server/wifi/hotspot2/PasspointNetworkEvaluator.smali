.class public Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;
.super Ljava/lang/Object;
.source "PasspointNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "PasspointNetworkEvaluator"


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;)V
    .locals 0
    .param p1, "passpointManager"    # Lcom/android/server/wifi/hotspot2/PasspointManager;
    .param p2, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "localLog"    # Landroid/util/LocalLog;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 63
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 64
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 65
    return-void
.end method

.method private createWifiConfigForProvider(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "networkInfo"    # Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    .line 145
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 146
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 147
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mMatchStatus:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v1, v2, :cond_0

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 153
    const/16 v2, 0x3f2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 154
    .local v1, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    const-string v2, "Failed to add passpoint network"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    return-object v2

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    .line 159
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    .line 160
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 159
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 161
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 162
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    .line 161
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V

    .line 163
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    return-object v2
.end method

.method private findBestNetwork(Ljava/util/List;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    .locals 10
    .param p2, "currentNetworkSsid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;"
        }
    .end annotation

    .line 177
    .local p1, "networkList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;>;"
    const/4 v0, 0x0

    .line 178
    .local v0, "bestCandidate":Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    const/high16 v1, -0x80000000

    .line 179
    .local v1, "bestScore":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    .line 180
    .local v3, "candidate":Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    iget-object v4, v3, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    .line 181
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v5, v3, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mMatchStatus:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .line 183
    .local v5, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    nop

    .line 184
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 185
    .local v6, "isActiveNetwork":Z
    sget-object v7, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v5, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 186
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;

    move-result-object v8

    .line 185
    invoke-static {v7, v4, v8, v6}, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->calculateScore(ZLcom/android/server/wifi/ScanDetail;Ljava/util/Map;Z)I

    move-result v7

    .line 189
    .local v7, "score":I
    if-le v7, v1, :cond_1

    .line 190
    move-object v0, v3

    .line 191
    move v1, v7

    .line 193
    .end local v3    # "candidate":Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v6    # "isActiveNetwork":Z
    .end local v7    # "score":I
    :cond_1
    goto :goto_0

    .line 194
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Best Passpoint network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provided by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 195
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 196
    return-object v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p2, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentBssid"    # Ljava/lang/String;
    .param p4, "connected"    # Z
    .param p5, "untrustedNetworkAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .line 81
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p6, "connectableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->sweepCache()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "candidateList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 87
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    goto :goto_0

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 93
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hotspot2/PasspointManager;->matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;

    move-result-object v3

    .line 94
    .local v3, "bestProvider":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v3, :cond_2

    .line 95
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->isSimCredential()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigManager;->isSimPresent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    new-instance v4, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;-><init>(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "bestProvider":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 106
    const-string v1, "No suitable Passpoint network found"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 107
    return-object v2

    .line 111
    :cond_4
    nop

    .line 112
    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->findBestNetwork(Ljava/util/List;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    move-result-object v1

    .line 115
    .local v1, "bestNetwork":Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    if-eqz p2, :cond_6

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    .line 116
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Staying with current Passpoint network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    .line 121
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    const/4 v5, 0x0

    .line 120
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 122
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V

    .line 125
    iget-object v2, v1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object p2

    .line 129
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->createWifiConfigForProvider(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 130
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_7

    .line 131
    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passpoint network to connect to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 134
    :cond_7
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "PasspointNetworkEvaluator"

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    return-void
.end method
