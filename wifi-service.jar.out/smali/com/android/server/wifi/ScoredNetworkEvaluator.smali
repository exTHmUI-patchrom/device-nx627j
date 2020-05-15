.class public Lcom/android/server/wifi/ScoredNetworkEvaluator;
.super Ljava/lang/Object;
.source "ScoredNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ScoredNetworkEvaluator"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkRecommendationsEnabled:Z

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "ScoredNetworkEvaluator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;Landroid/net/wifi/WifiNetworkScoreCache;Lcom/android/server/wifi/util/WifiPermissionsUtil;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "networkScoreManager"    # Landroid/net/NetworkScoreManager;
    .param p5, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p6, "localLog"    # Landroid/util/LocalLog;
    .param p7, "wifiNetworkScoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;
    .param p8, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 65
    iput-object p8, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 66
    iput-object p4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 67
    iput-object p5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 68
    iput-object p6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 69
    new-instance v0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p3, p1}, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;-><init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    const-string v0, "network_recommendations_enabled"

    .line 77
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p3, p1, v0, v2, v1}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScoredNetworkEvaluator constructed. mNetworkRecommendationsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/ScoredNetworkEvaluator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;

    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;

    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;

    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method private activeScorerAllowedtoSeeScanResults()Z
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 114
    .local v0, "networkScorerAppData":Landroid/net/NetworkScorerAppData;
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget v3, v0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 118
    .local v3, "uid":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceCanAccessScanResults(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v2, 0x1

    return v2

    .line 120
    :catch_0
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/SecurityException;
    return v2

    .line 115
    .end local v3    # "uid":I
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    return v2
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 331
    sget-boolean v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

.method private updateNetworkScoreCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 95
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v2}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v3

    .line 96
    .local v3, "networkKey":Landroid/net/NetworkKey;
    if-eqz v3, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v3    # "networkKey":Landroid/net/NetworkKey;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->activeScorerAllowedtoSeeScanResults()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    nop

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    .line 108
    .local v1, "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v2, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 110
    .end local v1    # "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    :cond_2
    return-void
.end method


# virtual methods
.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 14
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

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p6, "connectableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    .line 130
    move-object/from16 v2, p6

    iget-boolean v3, v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    if-nez v3, :cond_0

    .line 131
    iget-object v3, v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    const-string v4, "Skipping evaluateNetworks; Network recommendations disabled."

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x0

    return-object v3

    .line 135
    :cond_0
    new-instance v3, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;-><init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;)V

    .line 136
    .local v3, "scoreTracker":Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 137
    move-object v6, p1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .line 138
    .local v7, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v8

    .line 139
    .local v8, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v8, :cond_2

    .line 136
    .end local v7    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v8    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_1
    move-object/from16 v13, p3

    goto/16 :goto_6

    .line 140
    .restart local v7    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v8    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v9, v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 141
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 140
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring disabled ephemeral SSID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->debugLog(Ljava/lang/String;)V

    .line 143
    goto :goto_1

    .line 145
    :cond_3
    iget-object v9, v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 146
    invoke-virtual {v9, v7}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 147
    .local v9, "configuredNetwork":Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x1

    if-eqz v9, :cond_5

    iget-boolean v11, v9, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    move v11, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v11, v10

    .line 149
    .local v11, "untrustedScanResult":Z
    :goto_3
    if-nez p5, :cond_6

    if-eqz v11, :cond_6

    .line 150
    goto :goto_1

    .line 154
    :cond_6
    if-nez v9, :cond_7

    .line 155
    invoke-static {v8}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 156
    invoke-virtual {v3, v8}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->trackUntrustedCandidate(Landroid/net/wifi/ScanResult;)V

    goto :goto_1

    .line 162
    :cond_7
    iget-boolean v12, v9, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v12, :cond_8

    iget-boolean v12, v9, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-nez v12, :cond_8

    .line 163
    goto :goto_1

    .line 167
    :cond_8
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v12

    if-nez v12, :cond_9

    .line 168
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring disabled SSID: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->debugLog(Ljava/lang/String;)V

    .line 169
    goto :goto_1

    .line 173
    :cond_9
    if-eqz v1, :cond_a

    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v13, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v12, v13, :cond_a

    iget-object v12, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 175
    move-object/from16 v13, p3

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_4

    :cond_a
    move-object/from16 v13, p3

    :cond_b
    move v10, v4

    .line 176
    .local v10, "isCurrentNetwork":Z
    :goto_4
    iget-boolean v12, v9, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v12, :cond_c

    .line 177
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->trackUntrustedCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_5

    .line 180
    :cond_c
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->trackExternallyScoredCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 183
    :goto_5
    if-eqz v2, :cond_d

    .line 184
    invoke-static {v7, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v7    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v8    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v9    # "configuredNetwork":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "isCurrentNetwork":Z
    .end local v11    # "untrustedScanResult":Z
    :cond_d
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 188
    .end local v5    # "i":I
    :cond_e
    move-object v6, p1

    move-object/from16 v13, p3

    invoke-virtual {v3}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getCandidateConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    return-object v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 338
    const-string v0, "ScoredNetworkEvaluator"

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->updateNetworkScoreCache(Ljava/util/List;)V

    .line 89
    :cond_0
    return-void
.end method
