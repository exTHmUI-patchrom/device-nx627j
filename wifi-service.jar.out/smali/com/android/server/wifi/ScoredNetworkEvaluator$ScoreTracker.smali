.class Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;
.super Ljava/lang/Object;
.source "ScoredNetworkEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScoredNetworkEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScoreTracker"
.end annotation


# static fields
.field private static final EXTERNAL_SCORED_NONE:I = 0x0

.field private static final EXTERNAL_SCORED_SAVED_NETWORK:I = 0x1

.field private static final EXTERNAL_SCORED_UNTRUSTED_NETWORK:I = 0x2


# instance fields
.field private mBestCandidateType:I

.field private mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

.field private mHighScore:I

.field private mSavedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;

.field final synthetic this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;

    .line 192
    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    .line 198
    const/16 v0, -0x80

    iput v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    return-void
.end method

.method private getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "isCurrentNetwork"    # Z

    .line 212
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v0}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$100(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v0}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$100(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v0

    .line 214
    .local v0, "score":I
    invoke-static {}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isCurrentNetwork network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "score":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getCandidateConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .line 276
    const/4 v0, -0x1

    .line 277
    .local v0, "candidateNetworkId":I
    iget v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 323
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v2, "ScoredNetworkEvaluator did not see any good candidates."

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 281
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v6, "existing ephemeral candidate %s network ID:%d, meteredHint=%b"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 283
    invoke-static {v7}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 285
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    .line 281
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 286
    goto/16 :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 290
    invoke-static {v1}, Lcom/android/server/wifi/util/ScanResultUtil;->createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    .line 292
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 293
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v6}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$100(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 294
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    .line 295
    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v7, 0x3f2

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 297
    .local v1, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string v3, "Failed to add ephemeral network"

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 299
    goto/16 :goto_0

    .line 301
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v6}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string v3, "Failed to make ephemeral network selectable"

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 307
    iget-object v6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v6}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-virtual {v6, v0, v7, v4}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 309
    iget-object v6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v6}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v6

    const-string v7, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 311
    invoke-static {v8}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 313
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    .line 309
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 314
    goto :goto_0

    .line 316
    .end local v1    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 317
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$300(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v5, "new saved network candidate %s network ID:%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 318
    invoke-static {v6}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 317
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 320
    nop

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method trackExternallyScoredCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "isCurrentNetwork"    # Z

    .line 258
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    .local v0, "score":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 262
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-ne v1, v2, :cond_1

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    .line 264
    iput-object p2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 265
    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 266
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    .line 267
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 268
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " becomes the new externally scored saved network candidate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$400(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V

    .line 271
    :cond_1
    return-void
.end method

.method trackUntrustedCandidate(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 226
    .local v0, "score":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-le v1, v2, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    .line 228
    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 229
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    .line 230
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " becomes the new untrusted candidate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$400(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method trackUntrustedCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "isCurrentNetwork"    # Z

    .line 241
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 242
    .local v0, "score":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-le v1, v2, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    .line 244
    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 245
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    .line 246
    iput-object p2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    .line 247
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$500(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 248
    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " becomes the new untrusted candidate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$400(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method
