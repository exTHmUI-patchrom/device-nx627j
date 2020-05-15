.class public Lcom/android/server/wifi/ConfigurationMap;
.super Ljava/lang/Object;
.source "ConfigurationMap.java"


# instance fields
.field private mCurrentUserId:I

.field private final mPerID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerIDForCurrentUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/os/UserManager;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    .line 25
    iput-object p1, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    .line 26
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    return-void
.end method

.method public getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 93
    return-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 96
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    return-object v2

    .line 99
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 100
    :cond_2
    return-object v0
.end method

.method public getByScanResultForCurrentUser(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;

    .line 119
    invoke-static {p1}, Lcom/android/server/wifi/ScanResultMatchInfo;->fromScanResult(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanResultMatchInfo;

    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getByScanResultForCurrentUser(Lcom/android/server/wifi/ScanResultMatchInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "matchInfo"    # Lcom/android/server/wifi/ScanResultMatchInfo;

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 30
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 31
    .local v0, "current":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    .line 32
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-static {p1, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;

    .line 35
    invoke-static {p1}, Lcom/android/server/wifi/ScanResultMatchInfo;->fromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanResultMatchInfo;

    move-result-object v2

    .line 34
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-object v0
.end method

.method public remove(I)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "netID"    # I

    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 42
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    return-object v1

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mScanResultMatchInfoMapForCurrentUser:Ljava/util/Map;

    .line 49
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "scanResultMatchInfoEntries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/server/wifi/ScanResultMatchInfo;Landroid/net/wifi/WifiConfiguration;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p1, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 53
    nop

    .line 56
    :cond_2
    return-object v0
.end method

.method public setNewUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 71
    iput p1, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    .line 72
    return-void
.end method

.method public sizeForAllUsers()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public sizeForCurrentUser()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public valuesForAllUsers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public valuesForCurrentUser()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
