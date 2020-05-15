.class public Lcom/android/server/wifi/scanner/WificondChannelHelper;
.super Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.source "WificondChannelHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WificondChannelHelper"


# instance fields
.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .line 33
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 36
    .local v0, "emptyFreqList":[I
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wifi/scanner/WificondChannelHelper;->setBandChannels([I[I[I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WificondChannelHelper;->updateChannels()V

    .line 38
    return-void
.end method


# virtual methods
.method public updateChannels()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .line 44
    .local v0, "channels24G":[I
    if-nez v0, :cond_0

    const-string v1, "WificondChannelHelper"

    const-string v2, "Failed to get channels for 2.4GHz band"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 46
    .local v1, "channels5G":[I
    if-nez v1, :cond_1

    const-string v2, "WificondChannelHelper"

    const-string v3, "Failed to get channels for 5GHz band"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v3, 0x4

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 49
    .local v2, "channelsDfs":[I
    if-nez v2, :cond_2

    const-string v3, "WificondChannelHelper"

    const-string v4, "Failed to get channels for 5GHz DFS only band"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-nez v2, :cond_3

    goto :goto_1

    .line 52
    :cond_3
    array-length v3, v0

    if-gtz v3, :cond_5

    array-length v3, v1

    if-gtz v3, :cond_5

    array-length v3, v2

    if-lez v3, :cond_4

    goto :goto_0

    .line 55
    :cond_4
    const-string v3, "WificondChannelHelper"

    const-string v4, "Got zero length for all channel lists"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 53
    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/scanner/WificondChannelHelper;->setBandChannels([I[I[I)V

    goto :goto_2

    .line 51
    :cond_6
    :goto_1
    const-string v3, "WificondChannelHelper"

    const-string v4, "Failed to get all channels for band, not updating band channel lists"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_2
    return-void
.end method
