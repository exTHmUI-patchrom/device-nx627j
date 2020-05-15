.class public Lcom/android/server/wifi/ScanResultMatchInfo;
.super Ljava/lang/Object;
.source "ScanResultMatchInfo.java"


# static fields
.field public static final NETWORK_TYPE_DPP:I = 0xe

.field public static final NETWORK_TYPE_EAP:I = 0x3

.field public static final NETWORK_TYPE_FILS_SHA256:I = 0xa

.field public static final NETWORK_TYPE_FILS_SHA384:I = 0xb

.field public static final NETWORK_TYPE_OPEN:I = 0x0

.field public static final NETWORK_TYPE_OWE:I = 0xd

.field public static final NETWORK_TYPE_PSK:I = 0x2

.field public static final NETWORK_TYPE_SAE:I = 0xc

.field public static final NETWORK_TYPE_WAPI_CERT:I = 0x10

.field public static final NETWORK_TYPE_WAPI_PSK:I = 0xf

.field public static final NETWORK_TYPE_WEP:I = 0x1


# instance fields
.field public networkSsid:Ljava/lang/String;

.field public networkType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromScanResult(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanResultMatchInfo;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 88
    new-instance v0, Lcom/android/server/wifi/ScanResultMatchInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/ScanResultMatchInfo;-><init>()V

    .line 93
    .local v0, "info":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    .line 95
    if-eqz p0, :cond_b

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 97
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto/16 :goto_0

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/16 v1, 0xd

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 105
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 107
    :cond_4
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 109
    :cond_5
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 111
    :cond_6
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForFilsSha256Network(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 113
    :cond_7
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForFilsSha384Network(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 114
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 115
    :cond_8
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 116
    const/16 v1, 0xf

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 117
    :cond_9
    invoke-static {p0}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 118
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    .line 126
    :cond_a
    :goto_0
    return-object v0

    .line 124
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ScanResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanResultMatchInfo;
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 54
    new-instance v0, Lcom/android/server/wifi/ScanResultMatchInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/ScanResultMatchInfo;-><init>()V

    .line 55
    .local v0, "info":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForSaeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto/16 :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOweNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const/16 v1, 0xd

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForDppNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 66
    :cond_4
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWepNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 68
    :cond_5
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 70
    :cond_6
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForSha256Network(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 72
    :cond_7
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForSha384Network(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 73
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 74
    :cond_8
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWapiPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 75
    const/16 v1, 0xf

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    goto :goto_0

    .line 76
    :cond_9
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWapiCertNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 77
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid WifiConfiguration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 132
    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/ScanResultMatchInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 134
    return v2

    .line 136
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/ScanResultMatchInfo;

    .line 137
    .local v1, "other":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v3, p0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    iget v4, v1, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResultMatchInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
