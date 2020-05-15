.class public Lcom/android/server/wifi/AggressiveConnectedScore;
.super Lcom/android/server/wifi/ConnectedScore;
.source "AggressiveConnectedScore.java"


# instance fields
.field private mFrequencyMHz:I

.field private mRssi:I

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/Clock;)V
    .locals 1
    .param p1, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;

    .line 32
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ConnectedScore;-><init>(Lcom/android/server/wifi/Clock;)V

    .line 28
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mFrequencyMHz:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mRssi:I

    .line 33
    iput-object p1, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 34
    return-void
.end method


# virtual methods
.method public generateScore()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget v1, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mFrequencyMHz:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScoringParams;->getSufficientRssi(I)I

    move-result v0

    .line 55
    .local v0, "threshRssi":I
    iget v1, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mRssi:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x32

    .line 56
    .local v1, "score":I
    return v1
.end method

.method public reset()V
    .locals 1

    .line 49
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mFrequencyMHz:I

    .line 50
    return-void
.end method

.method public updateUsingRssi(IJD)V
    .locals 0
    .param p1, "rssi"    # I
    .param p2, "millis"    # J
    .param p4, "standardDeviation"    # D

    .line 38
    iput p1, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mRssi:I

    .line 39
    return-void
.end method

.method public updateUsingWifiInfo(Landroid/net/wifi/WifiInfo;J)V
    .locals 1
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "millis"    # J

    .line 43
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mFrequencyMHz:I

    .line 44
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/AggressiveConnectedScore;->mRssi:I

    .line 45
    return-void
.end method
