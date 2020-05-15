.class public Lcom/android/server/wifi/WakeupController;
.super Ljava/lang/Object;
.source "WakeupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WakeupController$IsActiveDataSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeupController"

.field private static final USE_PLATFORM_WIFI_WAKE:Z = true


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mNumScansHandled:I

.field private final mScanListener:Landroid/net/wifi/WifiScanner$ScanListener;

.field private mVerboseLoggingEnabled:Z

.field private final mWakeupConfigStoreData:Lcom/android/server/wifi/WakeupConfigStoreData;

.field private final mWakeupEvaluator:Lcom/android/server/wifi/WakeupEvaluator;

.field private final mWakeupLock:Lcom/android/server/wifi/WakeupLock;

.field private final mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

.field private mWifiWakeupEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WakeupLock;Lcom/android/server/wifi/WakeupEvaluator;Lcom/android/server/wifi/WakeupOnboarding;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiWakeMetrics;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wakeupLock"    # Lcom/android/server/wifi/WakeupLock;
    .param p4, "wakeupEvaluator"    # Lcom/android/server/wifi/WakeupEvaluator;
    .param p5, "wakeupOnboarding"    # Lcom/android/server/wifi/WakeupOnboarding;
    .param p6, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p7, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p8, "wifiWakeMetrics"    # Lcom/android/server/wifi/WifiWakeMetrics;
    .param p9, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p10, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/server/wifi/WakeupController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WakeupController$1;-><init>(Lcom/android/server/wifi/WakeupController;)V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupController;->mScanListener:Landroid/net/wifi/WifiScanner$ScanListener;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    .line 102
    iput v0, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/WakeupController;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupController;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p3, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    .line 121
    iput-object p4, p0, Lcom/android/server/wifi/WakeupController;->mWakeupEvaluator:Lcom/android/server/wifi/WakeupEvaluator;

    .line 122
    iput-object p5, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    .line 123
    iput-object p6, p0, Lcom/android/server/wifi/WakeupController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 124
    iput-object p8, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    .line 125
    iput-object p10, p0, Lcom/android/server/wifi/WakeupController;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 126
    iput-object p9, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 127
    new-instance v0, Lcom/android/server/wifi/WakeupController$2;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WakeupController$2;-><init>(Lcom/android/server/wifi/WakeupController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupController;->mContentObserver:Landroid/database/ContentObserver;

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_wakeup_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WakeupController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupController;->readWifiWakeupEnabledFromSettings()V

    .line 140
    new-instance v0, Lcom/android/server/wifi/WakeupConfigStoreData;

    new-instance v1, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;-><init>(Lcom/android/server/wifi/WakeupController;Lcom/android/server/wifi/WakeupController$1;)V

    iget-object v2, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    .line 142
    invoke-virtual {v2}, Lcom/android/server/wifi/WakeupOnboarding;->getIsOnboadedDataSource()Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    .line 143
    invoke-virtual {v3}, Lcom/android/server/wifi/WakeupOnboarding;->getNotificationsDataSource()Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    .line 144
    invoke-virtual {v4}, Lcom/android/server/wifi/WakeupLock;->getDataSource()Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WakeupConfigStoreData;-><init>(Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;)V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupConfigStoreData:Lcom/android/server/wifi/WakeupConfigStoreData;

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupConfigStoreData:Lcom/android/server/wifi/WakeupConfigStoreData;

    invoke-virtual {p7, v0}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WakeupController;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupController;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupController;->filterDfsScanResults(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WakeupController;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupController;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupController;->handleScanResults(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WakeupController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupController;

    .line 48
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupController;->readWifiWakeupEnabledFromSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WakeupController;)Lcom/android/server/wifi/WakeupOnboarding;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupController;

    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WakeupController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupController;

    .line 48
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WakeupController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupController;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    return p1
.end method

.method private enableWifi()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiSettingsStore()Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiController()Lcom/android/server/wifi/WifiController;

    move-result-object v0

    const v1, 0x26008

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    iget v1, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWakeMetrics;->recordWakeupEvent(I)V

    .line 334
    :cond_0
    return-void
.end method

.method private filterDfsScanResults(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 227
    .local p1, "scanResults":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiNative()Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    .line 228
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .line 229
    .local v0, "dfsChannels":[I
    if-nez v0, :cond_0

    .line 230
    const/4 v1, 0x0

    new-array v0, v1, [I

    .line 233
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    .line 234
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 236
    .local v1, "dfsChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$WakeupController$sB8N4NPbyfefFu6fc4L75U1Md4E;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/-$$Lambda$WakeupController$sB8N4NPbyfefFu6fc4L75U1Md4E;-><init>(Ljava/util/Set;)V

    .line 237
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 238
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    return-object v2
.end method

.method private getGoodSavedNetworks()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    .local v1, "goodSavedNetworks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 247
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/WakeupController;->isWideAreaNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-nez v4, :cond_0

    .line 250
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 251
    goto :goto_0

    .line 253
    :cond_1
    invoke-static {v3}, Lcom/android/server/wifi/ScanResultMatchInfo;->fromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanResultMatchInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 256
    :cond_2
    return-object v1
.end method

.method private handleScanResults(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p1, "scanResults":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "WakeupController"

    const-string v1, "Attempted to handleScanResults while not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    .line 286
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "WakeupController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming scan #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupOnboarding;->maybeShowNotification()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupController;->getGoodSavedNetworks()Ljava/util/Set;

    move-result-object v0

    .line 295
    .local v0, "goodSavedNetworks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-static {p1}, Lcom/android/server/wifi/WakeupController;->toMatchInfos(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 296
    .local v1, "matchInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v2, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WakeupLock;->update(Ljava/util/Collection;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    invoke-virtual {v2}, Lcom/android/server/wifi/WakeupLock;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    return-void

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WakeupController;->mWakeupEvaluator:Lcom/android/server/wifi/WakeupEvaluator;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/wifi/WakeupEvaluator;->findViableNetwork(Ljava/util/Collection;Ljava/util/Collection;)Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 305
    .local v2, "network":Landroid/net/wifi/ScanResult;
    if-eqz v2, :cond_3

    .line 306
    const-string v3, "WakeupController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling wifi for network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupController;->enableWifi()V

    .line 309
    :cond_3
    return-void
.end method

.method private static isWideAreaNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$filterDfsScanResults$0(Ljava/util/Set;Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p0, "dfsChannelSet"    # Ljava/util/Set;
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 237
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readWifiWakeupEnabledFromSettings()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_wakeup_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeupEnabled:Z

    .line 151
    const-string v0, "WakeupController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiWake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeupEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, "enabled"

    goto :goto_1

    :cond_1
    const-string v2, "disabled"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method private setActive(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .line 155
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    if-eq v0, p1, :cond_0

    .line 156
    const-string v0, "WakeupController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting active to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean p1, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 160
    :cond_0
    return-void
.end method

.method private static toMatchInfos(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;"
        }
    .end annotation

    .line 315
    .local p0, "scanResults":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/-$$Lambda$Sgsg9Ml_dxoj_SCBslbH-6YHea8;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$Sgsg9Ml_dxoj_SCBslbH-6YHea8;

    .line 316
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 317
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 315
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 349
    const-string v0, "Dump of WakeupController"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v0, "USE_PLATFORM_WIFI_WAKE: true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiWakeupEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeupEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOnboarded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-virtual {v1}, Lcom/android/server/wifi/WakeupOnboarding;->isOnboarded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configStore hasBeenRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mWakeupConfigStoreData:Lcom/android/server/wifi/WakeupConfigStoreData;

    invoke-virtual {v1}, Lcom/android/server/wifi/WakeupConfigStoreData;->hasBeenRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansHandled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WakeupLock;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 221
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mVerboseLoggingEnabled:Z

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    iget-boolean v1, p0, Lcom/android/server/wifi/WakeupController;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WakeupLock;->enableVerboseLogging(Z)V

    .line 223
    return-void
.end method

.method isEnabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 344
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeupEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupConfigStoreData:Lcom/android/server/wifi/WakeupConfigStoreData;

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupConfigStoreData;->hasBeenRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    .line 213
    const-string v0, "WakeupController"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    iget v1, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWakeMetrics;->recordResetEvent(I)V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WakeupController;->mNumScansHandled:I

    .line 216
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WakeupController;->setActive(Z)V

    .line 217
    return-void
.end method

.method public start()V
    .locals 5

    .line 170
    const-string v0, "WakeupController"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mScanListener:Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 174
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupController;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWakeMetrics;->recordIgnoredStart()V

    .line 176
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WakeupController;->setActive(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupOnboarding;->maybeShowNotification()V

    .line 184
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 185
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner;->getSingleScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WakeupController;->filterDfsScanResults(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {v0}, Lcom/android/server/wifi/WakeupController;->toMatchInfos(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 187
    .local v1, "matchInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupController;->getGoodSavedNetworks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 189
    iget-boolean v2, p0, Lcom/android/server/wifi/WakeupController;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "WakeupController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved networks in most recent scan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WakeupController;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics;->recordStartEvent(I)V

    .line 194
    iget-object v2, p0, Lcom/android/server/wifi/WakeupController;->mWakeupLock:Lcom/android/server/wifi/WakeupLock;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WakeupLock;->setLock(Ljava/util/Collection;)V

    .line 197
    .end local v0    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v1    # "matchInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 206
    const-string v0, "WakeupController"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WakeupController;->mScanListener:Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->deregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController;->mWakeupOnboarding:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupOnboarding;->onStop()V

    .line 209
    return-void
.end method
