.class public Lcom/android/server/wifi/WakeupEvaluator;
.super Ljava/lang/Object;
.source "WakeupEvaluator.java"


# instance fields
.field private final mThresholdMinimumRssi24:I

.field private final mThresholdMinimumRssi5:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "minimumRssi24"    # I
    .param p2, "minimumRssi5"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/server/wifi/WakeupEvaluator;->mThresholdMinimumRssi24:I

    .line 46
    iput p2, p0, Lcom/android/server/wifi/WakeupEvaluator;->mThresholdMinimumRssi5:I

    .line 47
    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/server/wifi/WakeupEvaluator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/android/server/wifi/ScoringParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/ScoringParams;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "scoringParams":Lcom/android/server/wifi/ScoringParams;
    new-instance v1, Lcom/android/server/wifi/WakeupEvaluator;

    const/16 v2, 0x960

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v2

    .line 40
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WakeupEvaluator;-><init>(II)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public findViableNetwork(Ljava/util/Collection;Ljava/util/Collection;)Landroid/net/wifi/ScanResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 63
    .local p1, "scanResults":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    .local p2, "savedNetworks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    const/4 v0, 0x0

    .line 65
    .local v0, "selectedScanResult":Landroid/net/wifi/ScanResult;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 66
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WakeupEvaluator;->isBelowThreshold(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v2}, Lcom/android/server/wifi/ScanResultMatchInfo;->fromScanResult(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanResultMatchInfo;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    if-ge v3, v4, :cond_2

    .line 71
    :cond_1
    move-object v0, v2

    .line 74
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_2
    goto :goto_0

    .line 76
    :cond_3
    return-object v0
.end method

.method public isBelowThreshold(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 83
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/server/wifi/WakeupEvaluator;->mThresholdMinimumRssi24:I

    if-lt v0, v1, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/server/wifi/WakeupEvaluator;->mThresholdMinimumRssi5:I

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0
.end method
