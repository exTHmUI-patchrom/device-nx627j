.class public Lcom/android/server/wifi/WifiConfigStoreLegacy;
.super Ljava/lang/Object;
.source "WifiConfigStoreLegacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;,
        Lcom/android/server/wifi/WifiConfigStoreLegacy$MaskedWpaSupplicantFieldSetter;,
        Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;
    }
.end annotation


# static fields
.field private static final IP_CONFIG_FILE:Ljava/io/File;

.field private static final NETWORK_HISTORY_FILE:Ljava/io/File;

.field private static final PPS_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "WifiConfigStoreLegacy"


# instance fields
.field private final mIpconfigStoreWrapper:Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;

.field private final mPasspointConfigParser:Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->NETWORK_HISTORY_FILE:Ljava/io/File;

    .line 72
    new-instance v0, Ljava/io/File;

    .line 73
    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "wifi/PerProviderSubscription.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    .line 78
    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "wifi/ipconfig.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiNetworkHistory;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;)V
    .locals 0
    .param p1, "wifiNetworkHistory"    # Lcom/android/server/wifi/WifiNetworkHistory;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "ipConfigStore"    # Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;
    .param p4, "passpointConfigParser"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    .line 104
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 105
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mIpconfigStoreWrapper:Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;

    .line 106
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mPasspointConfigParser:Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    .line 107
    return-void
.end method

.method private loadFromIpConfigStore(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "configurationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mIpconfigStoreWrapper:Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy$IpConfigStoreWrapper;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 139
    .local v0, "ipConfigurations":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 143
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 144
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 145
    .local v2, "id":I
    nop

    .line 146
    invoke-static {p1, v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->lookupWifiConfigurationUsingConfigKeyHash(Ljava/util/Map;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 148
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .end local v2    # "id":I
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 149
    .restart local v2    # "id":I
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    const-string v4, "WifiConfigStoreLegacy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configuration found for missing network, nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ignored, networks.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v2    # "id":I
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 140
    :cond_4
    :goto_3
    const-string v1, "WifiConfigStoreLegacy"

    const-string v2, "No ip configurations found in ipconfig store"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method private loadFromNetworkHistory(Ljava/util/Map;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "configurationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "scanDetailCaches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/wifi/WifiNetworkHistory;->readNetworkHistory(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 171
    return-void
.end method

.method private loadFromPasspointConfigStore(Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 210
    .local p1, "configurationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 212
    .local v0, "passpointConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mPasspointConfigParser:Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    sget-object v2, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WifiConfigStoreLegacy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read/parse Passpoint config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "entriesToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 219
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 222
    .local v4, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 224
    goto :goto_1

    .line 227
    :cond_1
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 228
    .local v5, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    const-string v6, "fqdn"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 229
    goto :goto_1

    .line 231
    :cond_2
    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "fqdn"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 236
    .local v6, "fqdn":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 242
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    .line 243
    .local v7, "passpointConfig":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 244
    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 245
    iget-object v8, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 246
    iget-object v8, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    if-eqz v8, :cond_4

    .line 247
    iget-object v8, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    iget-object v9, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 251
    :cond_4
    iget-object v8, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 252
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    .line 254
    :cond_5
    iget-object v8, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 255
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, v7, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    .line 257
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v7    # "passpointConfig":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    :cond_6
    goto/16 :goto_1

    .line 237
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "fqdn":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    goto/16 :goto_1

    .line 261
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "fqdn":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    .local v3, "key":Ljava/lang/String;
    const-string v4, "WifiConfigStoreLegacy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove incomplete Passpoint configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_3

    .line 265
    :cond_9
    return-void
.end method

.method private loadFromWpaSupplicant(Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 186
    .local p1, "configurationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiNative;->migrateNetworksFromSupplicant(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "Failed to load wifi configurations from wpa_supplicant"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "No wifi configurations found in wpa_supplicant"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 195
    :cond_1
    return-void
.end method

.method private static lookupWifiConfigurationUsingConfigKeyHash(Ljava/util/Map;I)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .line 119
    .local p0, "configurationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public areStoresPresent()Z
    .locals 2

    .line 300
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public read()Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;
    .locals 6

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v0, "configurationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 278
    .local v1, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 280
    .local v2, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromWpaSupplicant(Ljava/util/Map;Landroid/util/SparseArray;)V

    .line 281
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromNetworkHistory(Ljava/util/Map;Ljava/util/Set;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromIpConfigStore(Ljava/util/Map;)V

    .line 283
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromPasspointConfigStore(Ljava/util/Map;Landroid/util/SparseArray;)V

    .line 286
    new-instance v3, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;

    new-instance v4, Ljava/util/ArrayList;

    .line 287
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 286
    return-object v3
.end method

.method public removeStores()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "Removing networks from wpa_supplicant failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "Removing ipconfig.txt failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->NETWORK_HISTORY_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "Removing networkHistory.txt failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_2
    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 331
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "Removing PerProviderSubscription.conf failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    const-string v0, "WifiConfigStoreLegacy"

    const-string v1, "All legacy stores removed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    return v0
.end method
