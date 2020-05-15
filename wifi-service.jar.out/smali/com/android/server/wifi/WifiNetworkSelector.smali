.class public Lcom/android/server/wifi/WifiNetworkSelector;
.super Ljava/lang/Object;
.source "WifiNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    }
.end annotation


# static fields
.field public static final EVALUATOR_MIN_PRIORITY:I = 0x6

.field private static final INVALID_TIME_STAMP:J = -0x8000000000000000L

.field public static final MAX_NUM_EVALUATORS:I = 0x6

.field public static final MINIMUM_NETWORK_SELECTION_INTERVAL_MS:I = 0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiNetworkSelector"

.field public static mScreenOn:Z


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private volatile mConnectableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mEnableAutoJoinWhenAssociated:Z

.field private final mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

.field private mFilteredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNetworkSelectionTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mPnoListener:Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private final mStayOnNetworkMinimumRxRate:I

.field private final mStayOnNetworkMinimumTxRate:I

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWpa3Support:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiNetworkSelector;->mScreenOn:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p3, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "localLog"    # Landroid/util/LocalLog;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    .line 139
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    .line 685
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 686
    iput-object p4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    .line 687
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 688
    iput-object p5, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEnableAutoJoinWhenAssociated:Z

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumTxRate:I

    .line 694
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumRxRate:I

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWpa3Support:Z

    .line 698
    return-void
.end method

.method private filterScanResults(Ljava/util/List;Ljava/util/HashSet;ZLjava/lang/String;)Ljava/util/List;
    .locals 22
    .param p3, "isConnected"    # Z
    .param p4, "currentBssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p2, "bssidBlacklist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 284
    move-object/from16 v2, p4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v3, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v4, "validScanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .local v5, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v6, "blacklistedBssid":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v7, "lowRssi":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 292
    .local v8, "scanResultsHaveCurrentBssid":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v9, "lowSignalConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    .line 295
    .local v11, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v12

    .line 297
    .local v12, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v13, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 298
    iget-object v13, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, " / "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    goto :goto_0

    .line 303
    :cond_0
    iget-object v13, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 304
    const/4 v8, 0x1

    .line 307
    :cond_1
    invoke-static {v12}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v13

    .line 309
    .local v13, "scanId":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v14, v11}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 310
    .local v14, "targetConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v14, :cond_2

    .line 311
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .local v16, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " / "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    nop

    .line 294
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "scanId":Ljava/lang/String;
    .end local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    move/from16 v17, v8

    move-object/from16 v20, v10

    goto/16 :goto_6

    .line 317
    .end local v16    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .restart local v3    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .restart local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v12    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v13    # "scanId":Ljava/lang/String;
    .restart local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object/from16 v16, v3

    .end local v3    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .restart local v16    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    iget-object v3, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " / "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    goto :goto_1

    .line 323
    :cond_3
    const/4 v3, 0x0

    .line 324
    .local v3, "scanResultConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    sget-boolean v15, Lcom/android/server/wifi/WifiNetworkSelector;->mScreenOn:Z

    if-nez v15, :cond_b

    .line 332
    if-eqz v14, :cond_4

    .line 333
    move-object v3, v14

    .line 336
    :cond_4
    if-nez v3, :cond_9

    .line 337
    const-string v15, "WifiNetworkSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v8

    iget-object v8, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .end local v8    # "scanResultsHaveCurrentBssid":Z
    .local v17, "scanResultsHaveCurrentBssid":Z
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " :can not match the config according to scanResult"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "mSSID":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 340
    .local v15, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v18, v8

    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 341
    nop

    .line 339
    move-object/from16 v8, v18

    goto :goto_2

    .line 343
    :cond_5
    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v19, v1

    const-string v1, "LOW_RSSI_BYPASS"

    .end local v1    # "mSSID":Ljava/lang/String;
    .local v19, "mSSID":Ljava/lang/String;
    invoke-virtual {v8, v15, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateBlackListDueToConnFail(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 344
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "WifiNetworkSelector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v10

    const-string v10, "update ReasonList DueTo Mutil Same SSID with different KeyMgmt and Only save ONE, Treat as low RSSI, saveConfig :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", scanResult :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 345
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3

    .line 348
    :cond_6
    move-object/from16 v20, v10

    .line 339
    :goto_3
    move-object/from16 v8, v18

    move-object/from16 v1, v19

    move-object/from16 v10, v20

    goto :goto_2

    .end local v19    # "mSSID":Ljava/lang/String;
    .restart local v1    # "mSSID":Ljava/lang/String;
    :cond_7
    move-object/from16 v8, v18

    .end local v1    # "mSSID":Ljava/lang/String;
    .restart local v19    # "mSSID":Ljava/lang/String;
    goto :goto_2

    .line 349
    .end local v19    # "mSSID":Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v10

    .line 363
    move-object/from16 v21, v14

    goto/16 :goto_4

    .line 350
    .end local v17    # "scanResultsHaveCurrentBssid":Z
    .restart local v8    # "scanResultsHaveCurrentBssid":Z
    :cond_9
    move/from16 v17, v8

    move-object/from16 v20, v10

    .end local v8    # "scanResultsHaveCurrentBssid":Z
    .restart local v17    # "scanResultsHaveCurrentBssid":Z
    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 351
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getReasonListWhileConnectFail()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;

    .line 352
    .local v1, "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->isByPassDueToExceedThreshold()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 353
    const-string v8, "WifiNetworkSelector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "select Qualified Network continue: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",Status:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/net/wifi/WifiConfiguration$Status;->strings:[Ljava/lang/String;

    move-object/from16 v21, v14

    iget v14, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    .end local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    .local v21, "targetConfig":Landroid/net/wifi/WifiConfiguration;
    aget-object v14, v15, v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "AssocReject: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAssocReject:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",AuthFail: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAuthFail:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", DhcpFail="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDhcpFail:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", LowRssiBypass="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterLowRssiBypass:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", DisconnectEvent="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDisconnectEvent:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto :goto_6

    .line 363
    .end local v1    # "ReasonStaus":Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
    .end local v21    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    move-object/from16 v21, v14

    .end local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v21    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .end local v17    # "scanResultsHaveCurrentBssid":Z
    .end local v21    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v8    # "scanResultsHaveCurrentBssid":Z
    .restart local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    move/from16 v17, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    .end local v8    # "scanResultsHaveCurrentBssid":Z
    .end local v14    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "scanResultsHaveCurrentBssid":Z
    .restart local v21    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_4
    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiNetworkSelector;->isSignalTooWeak(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 364
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v12}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "2.4GHz"

    goto :goto_5

    :cond_c
    const-string v1, "5GHz"

    :goto_5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    .line 366
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v12, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " / "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/server/wifi/WifiNetworkSelector;->mScreenOn:Z

    if-nez v1, :cond_e

    if-eqz v3, :cond_e

    .line 369
    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const-string v8, "LOW_RSSI_BYPASS"

    invoke-virtual {v1, v3, v8}, Lcom/android/server/wifi/WifiConfigManager;->updateBlackListDueToConnFail(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 370
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v1, "WifiNetworkSelector"

    const-string v8, "updateBlackListDueToConnFail due to low RSSI"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 378
    :cond_d
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v3    # "scanResultConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "scanId":Ljava/lang/String;
    .end local v21    # "targetConfig":Landroid/net/wifi/WifiConfiguration;
    nop

    .line 294
    .end local v17    # "scanResultsHaveCurrentBssid":Z
    .restart local v8    # "scanResultsHaveCurrentBssid":Z
    :cond_e
    :goto_6
    move-object/from16 v3, v16

    move/from16 v8, v17

    move-object/from16 v10, v20

    move-object/from16 v1, p2

    .end local v8    # "scanResultsHaveCurrentBssid":Z
    .restart local v17    # "scanResultsHaveCurrentBssid":Z
    goto/16 :goto_0

    .line 382
    .end local v16    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .end local v17    # "scanResultsHaveCurrentBssid":Z
    .local v3, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .restart local v8    # "scanResultsHaveCurrentBssid":Z
    :cond_f
    move-object/from16 v16, v3

    .end local v3    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    .restart local v16    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    sget-boolean v1, Lcom/android/server/wifi/WifiNetworkSelector;->mScreenOn:Z

    if-nez v1, :cond_10

    .line 383
    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mPnoListener:Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;->onPnoChanged()V

    .line 384
    const-string v1, "WifiNetworkSelector"

    const-string v3, "low signal on pno changed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 392
    :cond_10
    if-eqz p3, :cond_11

    if-nez v8, :cond_11

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current connected BSSID "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not in the scan results. Skip network selection."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 395
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 396
    return-object v4

    .line 399
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Networks filtered out due to invalid SSID: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 403
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_13

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Networks filtered out due to blacklist: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 407
    :cond_13
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_14

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Networks filtered out due to low signal strength: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 411
    :cond_14
    return-object v4
.end method

.method private is5GHzNetworkAvailable(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)Z"
        }
    .end annotation

    .line 205
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    .line 206
    .local v1, "detail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 207
    .local v2, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    .line 208
    .end local v1    # "detail":Lcom/android/server/wifi/ScanDetail;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentNetworkSufficient(Landroid/net/wifi/WifiInfo;Ljava/util/List;)Z
    .locals 9
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)Z"
        }
    .end annotation

    .line 148
    .local p2, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 149
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 152
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    const-string v2, "No current connected network."

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 154
    return v1

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current connected network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 161
    .local v2, "currentRssi":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 162
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ScoringParams;->getSufficientRssi(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 163
    .local v3, "hasQualifiedRssi":Z
    :goto_0
    iget-wide v5, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget v7, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumTxRate:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_3

    iget-wide v5, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget v7, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumRxRate:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    .line 165
    .local v5, "hasActiveStream":Z
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 166
    const-string v1, "Stay on current network because of good RSSI and ongoing traffic"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 167
    return v4

    .line 171
    :cond_4
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_5

    .line 172
    const-string v4, "Current network is an ephemeral one."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 173
    return v1

    .line 177
    :cond_5
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    const-string v4, "Current network is a open one."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 179
    return v1

    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 184
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiNetworkSelector;->is5GHzNetworkAvailable(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 185
    const-string v4, "Current network is 2.4GHz. 5GHz networks available."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 186
    return v1

    .line 189
    :cond_7
    if-nez v3, :cond_8

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network RSSI["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]-acceptable but not qualified."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 191
    return v1

    .line 195
    :cond_8
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v6, :cond_9

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-nez v6, :cond_9

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network has ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] no-internet access reports."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 198
    return v1

    .line 200
    :cond_9
    return v4
.end method

.method private isNetworkSelectionNeeded(Ljava/util/List;Landroid/net/wifi/WifiInfo;ZZ)Z
    .locals 6
    .param p2, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "connected"    # Z
    .param p4, "disconnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            "ZZ)Z"
        }
    .end annotation

    .line 214
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "Empty connectivity scan results. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 216
    return v1

    .line 219
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 221
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEnableAutoJoinWhenAssociated:Z

    if-nez v2, :cond_1

    .line 222
    const-string v0, "Switching networks in connected state is not allowed. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 224
    return v1

    .line 228
    :cond_1
    iget-wide v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    sub-long/2addr v2, v4

    .line 231
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too short since last network selection: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Skip network selection."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 234
    return v1

    .line 238
    .end local v2    # "gap":J
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/WifiNetworkSelector;->isCurrentNetworkSufficient(Landroid/net/wifi/WifiInfo;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    const-string v0, "Current connected network already sufficient. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 240
    return v1

    .line 242
    :cond_3
    const-string v1, "Current connected network is not sufficient."

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 243
    return v0

    .line 245
    :cond_4
    if-eqz p4, :cond_5

    .line 246
    return v0

    .line 250
    :cond_5
    const-string v0, "WifiStateMachine is in neither CONNECTED nor DISCONNECTED state. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 252
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private overrideCandidateWithUserConnectChoice(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    .line 554
    move-object v0, p1

    .line 555
    .local v0, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    move-object v1, p1

    .line 556
    .local v1, "originalCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 558
    .local v2, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 559
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_1

    .line 563
    nop

    .line 564
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    .line 565
    .local v4, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 566
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 567
    move-object p1, v0

    .line 569
    .end local v4    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_0
    nop

    .line 573
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 570
    .restart local v3    # "key":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect choice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has no corresponding saved config."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 571
    nop

    .line 575
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    if-eq p1, v1, :cond_3

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After user selection adjustment, the final candidate is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 580
    :cond_3
    return-object p1
.end method

.method public static toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p0, "network"    # Landroid/net/wifi/WifiConfiguration;

    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 260
    if-nez p0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    .line 261
    :cond_0
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getConnectableScanDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredScanDetailsForCarrierUnsavedNetworks(Lcom/android/server/wifi/CarrierNetworkConfig;)Ljava/util/List;
    .locals 5
    .param p1, "carrierConfig"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/CarrierNetworkConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v0, "carrierUnsavedNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 457
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 459
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 460
    invoke-virtual {p1, v4}, Lcom/android/server/wifi/CarrierNetworkConfig;->isCarrierNetwork(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 461
    goto :goto_0

    .line 465
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 466
    goto :goto_0

    .line 469
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 471
    :cond_3
    return-object v0
.end method

.method public getFilteredScanDetailsForOpenUnsavedNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "openUnsavedNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 425
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 427
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    goto :goto_0

    .line 431
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWpa3Support:Z

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    goto :goto_0

    .line 435
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 436
    goto :goto_0

    .line 439
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 441
    :cond_3
    return-object v0
.end method

.method public isSignalTooWeak(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 279
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget v2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z
    .locals 3
    .param p1, "evaluator"    # Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    .param p2, "priority"    # I

    .line 667
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    const/4 v1, 0x6

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is already registered by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    aget-object v2, v2, p2

    .line 674
    invoke-interface {v2}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 675
    return v0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    aput-object p1, v0, p2

    .line 679
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network evaluator priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 669
    return v0
.end method

.method public registerPnoListener(Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

    .line 703
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mPnoListener:Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;

    .line 704
    return-void
.end method

.method public selectNetwork(Ljava/util/List;Ljava/util/HashSet;Landroid/net/wifi/WifiInfo;ZZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 20
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "connected"    # Z
    .param p5, "disconnected"    # Z
    .param p6, "untrustedNetworkAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            "ZZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p2, "bssidBlacklist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p4

    .line 598
    iget-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 599
    iget-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 600
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 601
    const-string v2, "Empty connectivity scan result"

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 602
    return-object v3

    .line 605
    :cond_0
    iget-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 610
    .local v10, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    .line 613
    .local v11, "currentBssid":Ljava/lang/String;
    move-object/from16 v12, p3

    move/from16 v13, p5

    invoke-direct {v0, v1, v12, v9, v13}, Lcom/android/server/wifi/WifiNetworkSelector;->isNetworkSelectionNeeded(Ljava/util/List;Landroid/net/wifi/WifiInfo;ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 614
    return-object v3

    .line 618
    :cond_1
    iget-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    .line 619
    .local v7, "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    if-eqz v7, :cond_2

    .line 620
    invoke-interface {v7, v1}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->update(Ljava/util/List;)V

    .line 618
    .end local v7    # "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 625
    :cond_3
    move-object/from16 v14, p2

    invoke-direct {v0, v1, v14, v9, v11}, Lcom/android/server/wifi/WifiNetworkSelector;->filterScanResults(Ljava/util/List;Ljava/util/HashSet;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    .line 627
    iget-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 628
    return-object v3

    .line 633
    :cond_4
    const/4 v2, 0x0

    .line 634
    .local v2, "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    array-length v8, v15

    move-object/from16 v16, v2

    move v7, v5

    .end local v2    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .local v16, "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    if-ge v7, v8, :cond_7

    aget-object v6, v15, v7

    .line 635
    .local v6, "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    if-eqz v6, :cond_6

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to run "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 637
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    move-object v2, v6

    move-object v4, v10

    move-object/from16 v17, v5

    move-object v5, v11

    move-object v1, v6

    move v6, v9

    .end local v6    # "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    .local v1, "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    move/from16 v18, v7

    move/from16 v7, p6

    move/from16 v19, v8

    move-object/from16 v8, v17

    invoke-interface/range {v2 .. v8}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 640
    .end local v16    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_5

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " selects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 644
    goto :goto_3

    .line 634
    .end local v1    # "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    :cond_5
    move-object/from16 v16, v2

    goto :goto_2

    .end local v2    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move/from16 v18, v7

    move/from16 v19, v8

    :goto_2
    add-int/lit8 v7, v18, 0x1

    move/from16 v8, v19

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 649
    :cond_7
    move-object/from16 v2, v16

    .end local v16    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    :goto_3
    if-eqz v2, :cond_8

    .line 650
    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->overrideCandidateWithUserConnectChoice(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 651
    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    .line 654
    :cond_8
    return-object v2
.end method

.method public setUserConnectChoice(I)Z
    .locals 12
    .param p1, "netId"    # I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userSelectNetwork: network ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 503
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 509
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 514
    :cond_1
    const/4 v1, 0x0

    .line 515
    .local v1, "change":Z
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v3

    .line 518
    .local v3, "currentTime":J
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v5

    .line 520
    .local v5, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 521
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    .line 522
    .local v8, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v9, v10, :cond_3

    .line 523
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 524
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remove user selection preference of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Set Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 524
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 527
    iget-object v9, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkConnectChoice(I)Z

    .line 528
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :cond_3
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 534
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 535
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 536
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Set Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {v7}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 536
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 538
    iget-object v9, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkConnectChoice(ILjava/lang/String;J)Z

    .line 539
    const/4 v1, 0x1

    .line 541
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_5
    goto/16 :goto_0

    .line 543
    :cond_6
    return v1

    .line 504
    .end local v1    # "change":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "currentTime":J
    .end local v5    # "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userSelectNetwork: Invalid configuration with nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 505
    return v1
.end method
