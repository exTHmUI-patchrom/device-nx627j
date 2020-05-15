.class public abstract Lcom/android/server/wifi/ConnectedScore;
.super Ljava/lang/Object;
.source "ConnectedScore.java"


# static fields
.field public static final WIFI_MAX_SCORE:I = 0x3c

.field public static final WIFI_MIN_SCORE:I = 0x0

.field public static final WIFI_TRANSITION_SCORE:I = 0x32


# instance fields
.field final mClock:Lcom/android/server/wifi/Clock;

.field public mDefaultRssiStandardDeviation:D


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/android/server/wifi/ConnectedScore;->mDefaultRssiStandardDeviation:D

    .line 45
    iput-object p1, p0, Lcom/android/server/wifi/ConnectedScore;->mClock:Lcom/android/server/wifi/Clock;

    .line 46
    return-void
.end method


# virtual methods
.method public abstract generateScore()I
.end method

.method public getMillis()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/ConnectedScore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract reset()V
.end method

.method public updateUsingRssi(IJ)V
    .locals 6
    .param p1, "rssi"    # I
    .param p2, "millis"    # J

    .line 72
    iget-wide v4, p0, Lcom/android/server/wifi/ConnectedScore;->mDefaultRssiStandardDeviation:D

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/ConnectedScore;->updateUsingRssi(IJD)V

    .line 73
    return-void
.end method

.method public abstract updateUsingRssi(IJD)V
.end method

.method public updateUsingWifiInfo(Landroid/net/wifi/WifiInfo;J)V
    .locals 1
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "millis"    # J

    .line 94
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wifi/ConnectedScore;->updateUsingRssi(IJ)V

    .line 95
    return-void
.end method
