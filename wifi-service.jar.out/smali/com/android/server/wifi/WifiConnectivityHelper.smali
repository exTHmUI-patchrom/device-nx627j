.class public Lcom/android/server/wifi/WifiConnectivityHelper;
.super Ljava/lang/Object;
.source "WifiConnectivityHelper.java"


# static fields
.field public static INVALID_LIST_SIZE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityHelper"


# instance fields
.field private mFirmwareRoamingSupported:Z

.field private mMaxNumBlacklistBssid:I

.field private mMaxNumWhitelistSsid:I

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    .line 40
    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    .line 41
    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    .line 44
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 45
    return-void
.end method


# virtual methods
.method public getFirmwareRoamingInfo()Z
    .locals 6

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    .line 59
    sget v1, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    .line 60
    sget v1, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    .line 62
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "fwFeatureSet":I
    const-string v2, "WifiConnectivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firmware supported feature set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 66
    const-string v0, "WifiConnectivityHelper"

    const-string v2, "Firmware roaming is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v3

    .line 70
    :cond_0
    new-instance v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;-><init>()V

    .line 71
    .local v2, "roamingCap":Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wifi/WifiNative;->getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    iget v4, v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    if-ltz v4, :cond_2

    iget v4, v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    if-gez v4, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    .line 78
    iget v0, v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    .line 79
    iget v0, v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    .line 80
    const-string v0, "WifiConnectivityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Firmware roaming supported with capabilities: max num blacklist bssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max num whitelist ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v3

    .line 73
    :cond_2
    :goto_0
    const-string v3, "WifiConnectivityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid firmware roaming capabilities: max num blacklist bssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max num whitelist ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_3
    const-string v3, "WifiConnectivityHelper"

    const-string v4, "Failed to get firmware roaming capabilities"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    return v0
.end method

.method public getMaxNumBlacklistBssid()I
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    return v0

    .line 109
    :cond_0
    const-string v0, "WifiConnectivityHelper"

    const-string v1, "getMaxNumBlacklistBssid: Firmware roaming is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    return v0
.end method

.method public getMaxNumWhitelistSsid()I
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    return v0

    .line 124
    :cond_0
    const-string v0, "WifiConnectivityHelper"

    const-string v1, "getMaxNumWhitelistSsid: Firmware roaming is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    return v0
.end method

.method public isFirmwareRoamingSupported()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    return v0
.end method

.method public removeNetworkIfCurrent(I)V
    .locals 2
    .param p1, "networkId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->removeNetworkIfCurrent(Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public setFirmwareRoamingConfiguration(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 138
    .local p1, "blacklistBssids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "whitelistSsids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "WifiConnectivityHelper"

    const-string v2, "Firmware roaming is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 143
    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, "blacklistSize":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 151
    .local v2, "whitelistSize":I
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    if-gt v0, v3, :cond_3

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 158
    :cond_2
    new-instance v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$RoamingConfig;-><init>()V

    .line 159
    .local v1, "roamConfig":Lcom/android/server/wifi/WifiNative$RoamingConfig;
    iput-object p1, v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    .line 160
    iput-object p2, v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    .line 162
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiNative;->configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v3

    return v3

    .line 152
    .end local v1    # "roamConfig":Lcom/android/server/wifi/WifiNative$RoamingConfig;
    :cond_3
    :goto_0
    const-string v3, "WifiConnectivityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid BSSID blacklist size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " SSID whitelist size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Max blacklist size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max whitelist size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 144
    .end local v0    # "blacklistSize":I
    .end local v2    # "whitelistSize":I
    :cond_4
    :goto_1
    const-string v0, "WifiConnectivityHelper"

    const-string v2, "Invalid firmware roaming configuration settings"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v1
.end method
